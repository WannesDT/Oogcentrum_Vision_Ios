//
//  CalendarPage.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import SwiftUI

struct CalendarPage: View {
    @ObservedObject var calendarVM = CalendarVM()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                Title(text: "Kalender")
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: -20, trailing: 0))
                DatePicker(
                    "Start Date",
                    selection: $calendarVM.date,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                Divider()
                    .padding(.horizontal)
                
                
                
                let appointments = calendarVM.getAppointments
                
                if appointments != nil && !(appointments?.isEmpty ?? true){
                    AppointmentList(appointmentList: appointments!)
                }
                else
                {
                    Text("Geen afspraken op deze dag!")
                }
                Spacer()
            }
        }
        .task {
             await calendarVM.getAppointmentFromApi()
            }
        
    }
}

#Preview {
    CalendarPage()
}

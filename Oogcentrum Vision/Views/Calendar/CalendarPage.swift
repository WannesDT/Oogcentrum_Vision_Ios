//
//  CalendarPage.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import SwiftUI

struct CalendarPage: View {
    @State private var date = Date()
    @State var appointment: Appointment?
    
    var body: some View {
        VStack(alignment: .leading){
            Title(text: "Kalender")
                .padding(EdgeInsets(top: 0, leading: 10, bottom: -20, trailing: 0))
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            
            Spacer()
            
            if let appointment {
                Text(appointment.title)
            }
        }
        .task {
                    do {
                        let repo = AppointmentsRepository()
                        
                        appointment = try await repo
                            .getAppointments().first
                    } catch {
                        appointment = nil
                        print(error)
                      
                    }
                }
        
    }
}

#Preview {
    CalendarPage()
}

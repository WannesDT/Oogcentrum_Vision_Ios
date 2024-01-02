//
//  Appointment.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct AppointmentItem: View {
    let appointment: Appointment
    
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Text(appointment.timeStamp.formatted(.dateTime.hour().minute()))
                Spacer()
                VStack(alignment: .leading){
                    
                    Text(appointment.title)
                        .fontWeight(.semibold)
                    
                    
                    Text(appointment.forStaff.description)
                        .foregroundStyle(.gray)
                        .font(.system(size: 13.0))
                    
                }
                
                
            }.padding()
            Divider()
                .padding(.horizontal)
        }
        
    }
}

#Preview {
    AppointmentItem(appointment: Appointment(id: 1, title: "Afspraak Pieter", description: "pijn aan oog", fromPerson: Oogcentrum_Vision.Patient(id: 4, firstName: "Pieter", lastName: "Bommele"), forStaff: Oogcentrum_Vision.Staff(id: 3, firstName: "Ozlem", lastName: "Köse"), timeStamp: Date()))
}

//
//  AppointmentDetailView.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct AppointmentDetailView: View {
    let appointment: Appointment
    
    var body: some View {
        VStack{
            Text(appointment.title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Divider()
                .frame(height: 2)
                .overlay(.black)
                .padding(.horizontal)
            
            DetailItem(key: "Patiënt", val: appointment.fromPerson.description)
            DetailItem(key: "Dokter", val: appointment.forStaff.description)
            DetailItem(key: "Uur", val: appointment.timeStamp.formatted(.dateTime.month().day().hour().minute()))
            
            ScrollView{
                    Text(appointment.description)
            
            }
            
            Spacer()
            
        }
    }
    
}

#Preview {
    AppointmentDetailView(appointment: Appointment(id: 1, title: "Afspraak Pieter", description: "pijn aan oog", fromPerson: Oogcentrum_Vision.Patient(id: 4, firstName: "Pieter", lastName: "Bommele"), forStaff: Oogcentrum_Vision.Staff(id: 3, firstName: "Ozlem", lastName: "Köse"), timeStamp: Date()))
}

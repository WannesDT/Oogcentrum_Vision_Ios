//
//  CalendarVM.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import Foundation

class CalendarVM: ObservableObject {
    
    @Published var date = Date()
    @Published private var appointments: [Appointment]? = nil
    
    
    func getAppointmentFromApi() async {
            do {
                let repo = AppointmentsRepository()
                
                
                appointments = try await repo
                    .getAppointments()
                
            } catch {
                appointments = nil
                print(error)
            }
        
    }
    var getAppointments: Array<Appointment>?{
        appointments?.filter{ $0.timeStamp.formatted(.dateTime.year().month().day()) == date.formatted(.dateTime.year().month().day())} ?? nil
    }

}


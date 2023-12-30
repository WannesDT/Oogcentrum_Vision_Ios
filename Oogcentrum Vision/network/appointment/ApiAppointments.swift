//
//  ApiAppointments.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation


struct ApiAppointments: Codable{
    let appointments: [ApiAppointment]
    let totalAmount: Int
}


extension ApiAppointments{
    func asDomainAppointments() -> [Appointment] {
        return appointments.map { $0.asDomainAppointment() }
    }
    
}

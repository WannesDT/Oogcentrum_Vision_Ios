//
//  Appointment.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct Appointment: Identifiable{
    let id: Int
    let title: String
    let description: String
    let fromPerson: Patient
    let forStaff: Staff
    let timeStamp: Date
    
}

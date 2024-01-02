//
//  ApiAppointment.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation


struct ApiAppointment: Codable{
    let id: Int
    let staff: ApiStaff
    let patient: ApiPatient
    let dateTimeAppointment: String
    let description: String
    let status: String
    let isBlock: Bool
}

extension ApiAppointment{
    func asDomainAppointment() -> Appointment {
        
        return Appointment(id: id, title: "Afspraak \(patient.firstName)", description: description, fromPerson: patient.asDomainPatient(), forStaff: staff.asDomainStaff(), timeStamp: dateTimeAppointment.toDate(dateFormat: "yyyy-MM-dd'T'HH:mm:ss")!)
    }
    
}

extension String {
    func toDate(dateFormat: String) -> Date? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        let date: Date? = dateFormatter.date(from: self)
        return date
    }
}

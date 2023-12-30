//
//  ApiPatient.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct ApiPatient: Codable{
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
}

extension ApiPatient{
    func asDomainPatient() -> Patient {
        return Patient(id: id, firstName: firstName, lastName: lastName)
    }
}

//
//  ApiStaff.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct ApiStaff : Codable{
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    let specialization: String?
    let image: String?
    let job: ApiJob
}

extension ApiStaff{
    func asDomainStaff() -> Staff {
        return Staff(id: id, firstName: firstName, lastName: lastName)
    }
}

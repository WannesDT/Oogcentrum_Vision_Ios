//
//  Patient.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct Patient{
    let id: Int
    let firstName: String
    let lastName: String
    
    public var description: String { return "\(firstName) \(lastName)" }
}

//
//  Todo.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct Todo: Identifiable{
    let id: Int
    let name: String
    let createdBy: Staff
    let targetPerson: Staff
    let deadline: Date
    let description: String
    var completed: Bool
}

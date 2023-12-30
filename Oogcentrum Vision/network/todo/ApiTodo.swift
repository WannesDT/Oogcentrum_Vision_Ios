//
//  ApiTodo.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct ApiTodo: Codable{
    let id: Int
    let name: String
    let createdBy: ApiStaff
    let targetPerson: ApiStaff
    let deadline: Date
    let description: String
    let completed: Bool
}
extension ApiTodo{
    func asDomainTodo() -> Todo {
        return Todo(id: id, name: name, description: description, createdBy: createdBy.asDomainStaff(), targetPerson: targetPerson.asDomainStaff(), deadline: deadline, completed: completed)
    }
    
}


struct ApiCreateTodo: Codable{
    let name: String
    let createdBy: Int
    let targetPerson: Int
    let deadline: Date
    let description: String
    let completed: Bool
}

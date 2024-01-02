//
//  ApiTodos.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct ApiTodos: Codable{
    let todos: [ApiTodo]
    let totalAmount: Int
}

extension ApiTodos{
    func asDomainTodos() -> [Todo] {
        return todos.map { $0.asDomainTodo() }
    }
    
}

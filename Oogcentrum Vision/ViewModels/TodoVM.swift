//
//  TodoVM.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import Foundation


class TodoVM: ObservableObject {
    
    @Published private var todos: [Todo]? = nil
    
    
    func getTodoFromApi() async {
        do {
            let repo = TodoRepository()
            
            todos = try await repo
                .getTodos()
        } catch {
            todos = nil
            print(error)
        }
    }
    var getTodo: Array<Todo>?{
        todos ?? nil
    }

}


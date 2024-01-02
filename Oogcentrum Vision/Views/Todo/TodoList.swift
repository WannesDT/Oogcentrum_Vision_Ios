//
//  TodoList.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct TodoList: View {
    let todoList: [Todo]
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(todoList) { todo in
                    
                        
                        TodoItem(todo: todo)
                    
                }
                
            }
            
        }
    }
}


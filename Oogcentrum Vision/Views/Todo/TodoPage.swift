//
//  TodoPage.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import SwiftUI

struct TodoPage: View {
    @ObservedObject var todoVM = TodoVM()
    
    var body: some View {
        NavigationView {
            VStack{
                Title(text: "TODO")
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                
                let todos = todoVM.getTodo
                
                if todos != nil && !(todos?.isEmpty ?? true){
                    TodoList(todoList: todos!)
                }
                else
                {
                    Text("Geen todos")
                }
                
                Spacer()
            }
        }
        .task {
            await todoVM.getTodoFromApi()
        }
    }
}

#Preview {
    TodoPage()
}

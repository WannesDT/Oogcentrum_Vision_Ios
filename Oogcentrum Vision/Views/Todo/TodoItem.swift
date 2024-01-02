//
//  TodoItem.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct TodoItem: View {
    @State var todo: Todo
     var isOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $todo.completed) {
            NavigationLink(destination: TodoDetailView(todo: todo))
            {
                HStack(alignment: .bottom)
                {
                    VStack(alignment: .leading){
                        Text(todo.name).bold()
                        Text(todo.deadline.formatted(.dateTime.day().month()))
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    Text(todo.targetPerson.description)
                        .foregroundStyle(.gray)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                    
                }
            }
        }
        .padding()

    }
}

#Preview {
    TodoItem(todo: Todo(id: 1, name: "Afspraak Pieter", createdBy: Staff(id: 3, firstName: "Ozlem", lastName: "Köse"), targetPerson: Staff(id: 4, firstName: "Pieter", lastName: "Bommele"), deadline:Date() , description: "pijn aan oog", completed: false))
}

//
//  TodoDetailView.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct TodoDetailView: View {
    let todo: Todo
    var body: some View {
        VStack{
            Text(todo.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Divider()
                .frame(height: 2)
                .overlay(.black)
                .padding(.horizontal)
            
            DetailItem(key: "Voor", val: todo.targetPerson.description)
            DetailItem(key: "Van", val: todo.createdBy.description)
            DetailItem(key: "Deadline", val: todo.deadline.formatted(.dateTime.month().day().hour().minute()))
            
            ScrollView{
                    Text(todo.description)
            
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    TodoDetailView(todo: Todo(id: 1, name: "Afspraak Pieter", createdBy: Staff(id: 3, firstName: "Ozlem", lastName: "Köse"), targetPerson: Staff(id: 4, firstName: "Pieter", lastName: "Bommele"), deadline:Date() , description: "pijn aan oog", completed: false))
}

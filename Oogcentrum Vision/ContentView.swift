//
//  ContentView.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import SwiftUI
import Auth0


struct ContentView: View {
    @State private var isAuthenticated = false
    
    var body: some View {
        if(isAuthenticated)
        {
            loggedInContent
        }
        else
        {
            VStack {
              
            Text("Welkom")
                    .font(.system(size: 32))
                    .bold()
              
              Button("Log in") {
                login()
              }
              .padding()
              .clipShape(Capsule())
              
            }
        }
       
    }
    
    private var loggedInContent: some View {
        TabView{
            CalendarPage()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            TodoPage()
                .tabItem {
                    Image(systemName: "pin.fill")
                    Text("Todo")
                }
        }
    }
    private func login() {
        
        Auth0
            .webAuth()
            .audience("https://localhost:5001")
            .start{ result in
                switch result {
                    
                case .failure(let error):
                    // The user pressen "cancel" or something unusual happened.
                    print("Failed login: \(error)" )
                    
                case .success(let credentials):
                    self.isAuthenticated = true
                    Auth0ID.accesToken = credentials.accessToken

                    
                }// end of switch
            }
    }
    
    /*
    private func logout() {
      isAuthenticated = false
    }
     */
}




#Preview {
    ContentView()
}

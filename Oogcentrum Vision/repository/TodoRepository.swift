//
//  TodoRepository.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct TodoRepository {
     private let BASE_URL = URL(string: "https://schedule.oogcentrum-vision.be/api/")
    
    
    func getTodos() async throws -> [Todo] {
        
        let url = BASE_URL!.appending(path: "todo")
        
        var request = URLRequest(url: url)
        
        request.setValue("Bearer \(Auth0ID.accesToken)", forHTTPHeaderField: "Authorization")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let apiTodos = try JSONDecoder().decode(ApiTodos.self, from: data)
        
        return apiTodos.asDomainTodos()
    }
}

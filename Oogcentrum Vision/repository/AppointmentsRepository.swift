//
//  AppointmentsRepository.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 30/12/2023.
//

import Foundation

struct AppointmentsRepository {
     private let BASE_URL = URL(string: "https://schedule.oogcentrum-vision.be/api/")
    
    
    func getAppointments() async throws -> [Appointment] {
        
        let url = BASE_URL!.appending(path: "appointment")
        
        var request = URLRequest(url: url)
        
        request.setValue("Bearer \(Auth0ID.accesToken)", forHTTPHeaderField: "Authorization")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let apiAppointments = try JSONDecoder().decode(ApiAppointments.self, from: data)
        
        print(apiAppointments.asDomainAppointments())
        return apiAppointments.asDomainAppointments()
    }
}

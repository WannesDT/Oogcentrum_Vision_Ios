//
//  AppointmentList.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct AppointmentList: View {
    let appointmentList: [Appointment]
    
    var body: some View {
        
            ScrollView{
                LazyVStack{
                    ForEach(appointmentList) { appointment in
                        NavigationLink(destination: AppointmentDetailView(appointment: appointment))
                        {
                            
                            AppointmentItem(appointment: appointment)
                        }
                    }
                    
                }
                
            }
        
    }
}
	


//
//  DetailItem.swift
//  Oogcentrum Vision
//
//  Created by Wannes De Tollenaere on 02/01/2024.
//

import SwiftUI

struct DetailItem: View {
    let key: String
    let val: String
    var body: some View {
        VStack{
            HStack(){
                Text(key)
                    .bold()
                Spacer()
                Text(val)
            }
            .padding()
            
            Divider()
                .padding(.horizontal)
        }
    }
    
}



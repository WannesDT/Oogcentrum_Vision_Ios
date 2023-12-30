//
//  Title.swift
//  Vision Oogcentrum
//
//  Created by Wannes De Tollenaere on 21/10/2023.
//

import SwiftUI

struct Title: View {
    let text: String
    
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                Text(text)
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(Colors.main)
                
            }
            DottedBottomLine(size: CGSize(width: 56, height: 8))
                .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
        }
    }
    struct Colors {
        static let main: Color = Color(red: 0, green: 40/255, blue: 79/255)
    }
}

//
//  DottedLine.swift
//  Vision Oogcentrum
//
//  Created by Wannes De Tollenaere on 16/10/2023.
//

import SwiftUI

struct DottedBottomLine: View {
    let size: CGSize
    
    var body: some View {
        HStack{
            HStack{
                Circle()
                    .fill(Colors.main)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Colors.main)
                
                Circle()
                    .fill(Colors.main)
                
            }
            .frame(width: size.width, height: size.height)
            Spacer()
        }
    }
    
    struct Colors {
        static let main: Color = Color(red: 0, green: 40/255, blue: 79/255)
    }
    
}

//
//  FixedSizeLabel.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 16/11/21.
//

import SwiftUI

struct FixedSizeLabel: View {
    
    let image: String
    let text: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .padding(.horizontal)
                .foregroundColor(color)
            
            Text(text)
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(color)
//                .padding(.horizontal)
            
            Spacer()
        }
        .padding(.horizontal, 8)
        .frame(height: 60, alignment: .center)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal, 8)
        .padding(.vertical, 2)
        .shadow(color: color.opacity(0.4), radius: 3, x: 2, y: 2)
    }
}

struct FixedSizeLabel_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeLabel(image: "globe", text: "Language", color: .indigo)
    }
}

//
//  CustomSizeTextButtonView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 16/11/21.
//

import SwiftUI

struct CustomSizeTextButtonView: View {
    
    let text: String
    let color: Color
    var font: CGFloat = 18
    //add font size
    
    var body: some View {
        Text(text)
            .font(.system(size: font, weight: .bold, design: .default))
            .padding()
            .foregroundColor(color)
            .background(color.opacity(0.2))
            .cornerRadius(10)
        
    }
}

struct CustomSizeTextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSizeTextButtonView(text: "Polygon", color: .mint)
    }
}

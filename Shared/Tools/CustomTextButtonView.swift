//
//  CustomTextButtonView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 16/11/21.
//

import SwiftUI

struct CustomTextButtonView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .font(.system(size: 18, weight: .bold, design: .default))
            .padding()
            .frame(width: UIScreen.main.bounds.size.width - 32, alignment: .center)
            .foregroundColor(color)
            .background(color.opacity(0.2))
            .cornerRadius(10)
    }
}

struct CustomTextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextButtonView(text: "Polygon", color: .mint)
    }
}

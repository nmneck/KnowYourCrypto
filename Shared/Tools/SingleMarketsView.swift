//
//  SingleMarketsView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 18/11/21.
//

import SwiftUI

struct SingleMarketsView: View {
    let image: String
    let text: String
    let price: Double
    let pair: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
            .frame(width: 44, height: 44, alignment: .center)
            
            Text(text)
                .font(.system(size: 16, weight: .bold, design: .default))
                .lineLimit(2)
            
            Spacer()
            
            Text("₹\(price)")
                .font(.system(size: 12, weight: .regular, design: .default))
            
            Text(pair)
                .font(.system(size: 16, weight: .bold, design: .default))
                .lineLimit(2)
            
            
        }
        .padding(4)
        .frame(width: UIScreen.main.bounds.size.width - 32, alignment: .center)
        .foregroundColor(color)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: color.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

struct SingleMarketsView_Previews: PreviewProvider {
    static var previews: some View {
        SingleMarketsView(image: "lock_3d", text: "WazirX", price: 22, pair: "ETH/USDT", color: Color("AccentColor"))
    }
}

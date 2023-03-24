//
//  SingleCoinView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct SingleCoinView: View {
    
    let coin: SingleCoin
    
    var body: some View {
        HStack {
            
            WebImage(url: URL(string: coin.image), context: [.imageThumbnailPixelSize : CGSize(width: 30, height: 30)])
                .resizable()
                .padding(8)
                .frame(width: 44, height: 44, alignment: .center)
            
            Text(coin.symbol)
                .font(.system(size: 16, weight: .bold, design: .default))
                .lineLimit(2)
            
            Spacer()
            
            Text("₹\(coin.price)")
                .font(.system(size: 12, weight: .regular, design: .default))
            
            CustomSizeTextButtonView(text: " \(coin.percentage)%", color: coin.color, font: 12)
                .lineLimit(1)
        }
        .padding(4)
        .frame(width: UIScreen.main.bounds.size.width - 32, alignment: .center)
        .foregroundColor(coin.color)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: coin.color.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

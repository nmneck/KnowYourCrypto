//
//  CoinDetailMarketsView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 18/11/21.
//

import SwiftUI

struct CoinDetailMarketsView: View {
    var body: some View {
        VStack {
            HStack {
                Group {
                    Text("Source")
                    Spacer()
                    Text("Price")
                    Spacer()
                        .frame(width: 60)
                    Text("Pairs")
                }
                .foregroundColor(Color("AccentColor"))
            }
            .padding(.horizontal)
            .padding(.horizontal)
            
            SingleMarketsView(image: "lock_3d", text: "Binance", price: 2332, pair: "ETH/USDT", color: Color("AccentColor"))
            SingleMarketsView(image: "element_3d", text: "WazirX", price: 2332, pair: "ETH/USDT", color: Color("AccentColor"))
            SingleMarketsView(image: "element_3d", text: "WazirX", price: 23321, pair: "ETH/INR", color: Color("AccentColor"))
            SingleMarketsView(image: "lock_3d", text: "Binance", price: 2332, pair: "ETH/USDT", color: Color("AccentColor"))
            SingleMarketsView(image: "element_3d", text: "WazirX", price: 2332, pair: "ETH/USDT", color: Color("AccentColor"))
            SingleMarketsView(image: "element_3d", text: "WazirX", price: 23321, pair: "ETH/INR", color: Color("AccentColor"))
            
            Spacer()
        }
    }
}

struct CoinDetailMarketsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailMarketsView()
    }
}

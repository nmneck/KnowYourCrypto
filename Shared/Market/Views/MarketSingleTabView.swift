//
//  MarketSingleTabView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import SwiftUI

struct MarketSingleTabView: View {
    
    let coins: [SingleCoin]
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(coins) { coin in
                    NavigationLink {
                        CoinDetalView(coin: coin)
                    } label: {
                        SingleCoinView(coin: coin)
                            .padding(2)
                    }
                }
            }
        }
    }
}

struct MarketSingleTabView_Previews: PreviewProvider {
    static var previews: some View {
        MarketSingleTabView(coins: MarketSingleTabModel().markets["Watchlist"]!)
    }
}

//
//  MarketSingleTabModel.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import Foundation

struct MarketSingleTabModel {
    var coinRankingCoins = CoinRankingStatsModel(stats: CoinRankingStat(total: 0, totalCoins: 0, totalMarkets: 0, totalExchanges: 0, totalMarketCap: "", total24hVolume: ""), coins: [])
    var coins = [SingleCoin]()
    var markets = [
        "Featured":
            [SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 25, percentage: 11, color: .red),
             SingleCoin(image: "lock_3d", name: "Element Black", symbol: "", price: 251, percentage: 22, color: .green)],
        
        "Watchlist":
            [SingleCoin(image: "no_use", name: "Element Black", symbol: "", price: 225, percentage: 12, color: .green),
             SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 225, percentage: 22, color: .red)],
        
        "Gainers":
            [SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 215, percentage: 3, color: .green),
             SingleCoin(image: "no_use", name: "Element Black", symbol: "", price: 251, percentage: 22, color: .green)],
        
        "New":
            [SingleCoin(image: "to_the_pluto", name: "Element Black", symbol: "", price: 254, percentage: 2, color: .red),
             SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 525, percentage: 12, color: .red)],
        
        "Portfolio":
            [SingleCoin(image: "city", name: "Element Black", symbol: "", price: 725, percentage: 20, color: .red),
             SingleCoin(image: "to_the_pluto", name: "Element Black", symbol: "", price: 275, percentage: 26, color: .green)]
        
    ]
}

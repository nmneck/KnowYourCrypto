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
            [SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 25, percentage: 11, color: .red, marketCap: ""),
             SingleCoin(image: "lock_3d", name: "Element Black", symbol: "", price: 251, percentage: 22, color: .green, marketCap: "")],
        
        "Watchlist":
            [SingleCoin(image: "no_use", name: "Element Black", symbol: "", price: 225, percentage: 12, color: .green, marketCap: ""),
             SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 225, percentage: 22, color: .red, marketCap: "")],
        
        "Gainers":
            [SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 215, percentage: 3, color: .green, marketCap: ""),
             SingleCoin(image: "no_use", name: "Element Black", symbol: "", price: 251, percentage: 22, color: .green, marketCap: "")],
        
        "New":
            [SingleCoin(image: "to_the_pluto", name: "Element Black", symbol: "", price: 254, percentage: 2, color: .red, marketCap: ""),
             SingleCoin(image: "element_3d", name: "Element Black", symbol: "", price: 525, percentage: 12, color: .red, marketCap: "")],
        
        "Portfolio":
            [SingleCoin(image: "city", name: "Element Black", symbol: "", price: 725, percentage: 20, color: .red, marketCap: ""),
             SingleCoin(image: "to_the_pluto", name: "Element Black", symbol: "", price: 275, percentage: 26, color: .green, marketCap: "")]
        
    ]
}

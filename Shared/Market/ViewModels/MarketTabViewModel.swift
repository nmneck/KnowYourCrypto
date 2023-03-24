//
//  MarketTabViewModel.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import Foundation
import SwiftUI

final class MarketTabViewModel: ObservableObject {
    @Published private(set) var model = MarketSingleTabModel()
    
    init() {
        Task {
            await coinRankingCoins()
        }
    }
    
    private func coinRankingCoins() async {
        do {
            let response: CoinRankingCoinsModel = try await APIManager.shared.fetch(endPoint: EndPoints.coins, service: .CoinRanking)
            let coins = response.data?.coins
            // limit the coins in model to avoid memory overuse, add more on scroll
            
            DispatchQueue.main.async {
                self.model.coins.removeAll()
                for coin in coins?[0...30] ?? [] {
                    self.model.coins.append(SingleCoin(image: coin.iconUrl ?? "", name: coin.name ?? "", symbol: coin.symbol ?? "", price: (coin.price! as NSString).doubleValue, percentage: (coin.change! as NSString).doubleValue, color: Color(hex: coin.color ?? ""), marketCap: coin.marketCap ?? ""))
                }
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    //later will be a static func
//    private func percente(change: String) {
//        if change.first == "-" {
//
//        }
//    }
    
}

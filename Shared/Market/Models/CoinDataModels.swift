//
//  CoinDataModels.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 25/02/23.
//

import Foundation

struct CoinRankingCoinsModel: Decodable {
    let status: String?
    let data: CoinRankingStatsModel?
}

struct CoinRankingStatsModel: Decodable {
    let stats: CoinRankingStat?
    let coins: [CoinRankingCoins]?
}

struct CoinRankingStat: Decodable {
    let total: Int?
    let totalCoins: Int?
    let totalMarkets: Int?
    let totalExchanges: Int?
    let totalMarketCap: String?
    let total24hVolume: String?
}

struct CoinRankingCoins: Decodable {
    let uuid: String?
    let symbol: String?
    let name: String?
    let color: String?
    let iconUrl: String?
    let marketCap: String?
    let price: String?
    let listedAt: Double?
    let tier: Int?
    let change: String?
    let rank: Int?
    let sparkline: [String]?
    let lowVolume: Bool?
    let coinrankingUrl: String?
//    let 24hVolume: String
    let btcPrice: String?
}

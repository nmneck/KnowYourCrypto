//
//  SingleCoin.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import Foundation
import SwiftUI

struct SingleCoin: Identifiable {
    var id = UUID()
    let image: String
    let name: String
    let symbol: String
    let price: Double
    let percentage: Double
    let color: Color
    let marketCap: String
}

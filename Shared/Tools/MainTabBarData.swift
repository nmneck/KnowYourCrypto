//
//  MainTabBarData.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 16/11/21.
//

import Foundation

import Combine

final class MainTabBarData: ObservableObject {
    
    let objectWillChange = PassthroughSubject<MainTabBarData, Never>()
    
    var previousItem: Int
    
    var itemSelected: Int {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    func reset() {
        itemSelected = previousItem
        objectWillChange.send(self)
    }
    init(initialIndex: Int = 1) {
        self.itemSelected = initialIndex
        self.previousItem = initialIndex
    }
}

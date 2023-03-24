//
//  MarketView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import SwiftUI

struct MarketView: View {
    
    @ObservedObject private var tabData = MainTabBarData(initialIndex: 1)
    @StateObject var marketVM = MarketTabViewModel()
    
    var body: some View {
        VStack {
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    
                    Text("Coins")
                        .font(.system(size: tabData.itemSelected == 1 ? 16 : 14))
                        .foregroundColor(tabData.itemSelected == 1 ? .black : .gray)
                        .onTapGesture {
                            withAnimation(.linear) {
                                tabData.itemSelected = 1
                            }
                        }
                        .padding()
                    
                    
                    Text("Watchlist")
                        .font(.system(size: tabData.itemSelected == 2 ? 16 : 14))
                        .foregroundColor(tabData.itemSelected == 2 ? .black : .gray)
                        .onTapGesture {                            withAnimation(.linear) {
                                tabData.itemSelected = 2
                            }
                            
                        }
                        .padding()
                    
                    Text("Gainers")
                        .font(.system(size: tabData.itemSelected == 3 ? 16 : 14))
                        .foregroundColor(tabData.itemSelected == 3 ? .black : .gray)
                        .onTapGesture {
                            withAnimation(.linear) {
                                tabData.itemSelected = 3
                            }
                        }
                        .padding()
                    
                    Text("New")
                        .font(.system(size: tabData.itemSelected == 4 ? 16 : 14))
                        .foregroundColor(tabData.itemSelected == 4 ? .black : .gray)
                        .onTapGesture {
                            withAnimation(.linear) {
                                tabData.itemSelected = 4
                            }
                        
                        }
                        .padding()
                    
                    Text("Portfolio")
                        .font(.system(size: tabData.itemSelected == 5 ? 16 : 14))
                        .foregroundColor(tabData.itemSelected == 5 ? .black : .gray)
                        .onTapGesture {
                            withAnimation(.linear) {
                                tabData.itemSelected = 5
                            }
                        }
                        .padding()
                    
                }
//                .padding()
            }
            
            TabView(selection: $tabData.itemSelected) {
                MarketSingleTabView(coins: marketVM.model.coins)
                    .tag(1)
                
                MarketSingleTabView(coins: marketVM.model.markets["Watchlist"]!)
                    .tag(2)
                
                MarketSingleTabView(coins: marketVM.model.markets["Gainers"]!)
                    .tag(3)
                
                MarketSingleTabView(coins: marketVM.model.markets["New"]!)
                    .tag(4)
                
                MarketSingleTabView(coins: marketVM.model.markets["Portfolio"]!)
                    .tag(5)
            }
            .tabViewStyle(PageTabViewStyle())
            
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}

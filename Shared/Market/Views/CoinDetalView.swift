//
//  CoinDetalView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 18/11/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CoinDetalView: View {
    
    @ObservedObject private var tabData = MainTabBarData(initialIndex: 1)
    @ObservedObject var marketVM = MarketTabViewModel()
    let coin: SingleCoin
    
    var body: some View {
        VStack {
            HStack {
                
                WebImage(url: URL(string: coin.image), context: [.imageThumbnailPixelSize : CGSize(width: 30, height: 30)])
                    .resizable()
                    .padding()
                    .frame(width: 80, height: 80, alignment: .center)
                    .background(coin.color.opacity(0.2))
                    .cornerRadius(50)
                
                Spacer()
                VStack(alignment: .trailing, spacing: 2) {
                    
                    CustomSizeTextButtonView(text: coin.name, color: coin.color, font: 12)
                    
                    CustomSizeTextButtonView(text: coin.symbol, color: coin.color)
                }
                
            }
            .padding(.horizontal)
            
            HStack {
//                Spacer()
//                Text("Chart")
                Image("to_the_pluto")
                    .resizable()
//                Spacer()
            }
            .frame(height: 180, alignment: .center)
            .background(coin.color.opacity(0.5))
            
            Divider()
                .background(coin.color)
            
            HStack {
                CustomSizeTextButtonView(text: "\(coin.price)", color: coin.color)
                
                Spacer()
                
                CustomSizeTextButtonView(text: "\(coin.percentage)", color: Color.green)
            }
            .padding(.horizontal)
            Divider()
                .background(coin.color)
            
            HStack {
                Spacer()
                Text("About")
                    .font(.system(size: tabData.itemSelected == 1 ? 18 : 14))
                    .foregroundColor(tabData.itemSelected == 1 ? coin.color : coin.color.opacity(0.5))
                    .onTapGesture {
                        withAnimation(.linear) {
                            tabData.itemSelected = 1
                        }
                    }
                
                Spacer()
                
                Text("Markets")
                    .font(.system(size: tabData.itemSelected == 2 ? 18 : 14))
                    .foregroundColor(tabData.itemSelected == 2 ? coin.color : coin.color.opacity(0.5))
                    .onTapGesture {
                        withAnimation(.linear) {
                            tabData.itemSelected = 2
                        }
                        
                    }
                
                Spacer()
                
                Text("Social")
                    .font(.system(size: tabData.itemSelected == 3 ? 18 : 14))
                    .foregroundColor(tabData.itemSelected == 3 ? coin.color : coin.color.opacity(0.5))
                    .onTapGesture {
                        withAnimation(.linear) {
                            tabData.itemSelected = 3
                        }
                    }
                Spacer()
            }
            .padding()
            
            TabView(selection: $tabData.itemSelected) {
                CoinDetailAboutView()
                    .tag(1)
                
                CoinDetailMarketsView()
                    .tag(2)
                
                //coin detail social view
                MarketSingleTabView(coins: marketVM.model.markets["Gainers"]!)
                    .tag(3)
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct CoinDetalView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetalView(coin: SingleCoin(image: "", name: "", symbol: "", price: 0, percentage: 0, color: .mint))
            
    }
}

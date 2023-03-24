//
//  CoinDetailAboutView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 18/11/21.
//

import SwiftUI

struct CoinDetailAboutView: View {
    
    //will add it ro a dict or arr or model later
    let marrketCap: String
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack {
                    Text("Market Cap")
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    CustomSizeTextButtonView(text: "₹\(marrketCap)", color: Color("AccentColor"))
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Circulating Supply")
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    CustomSizeTextButtonView(text: "₹2364764752", color: Color("AccentColor"))
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Volume")
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    CustomSizeTextButtonView(text: "₹2364764752", color: Color("AccentColor"))
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Contract")
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    CustomSizeTextButtonView(text: "Binance Smart Chain", color: Color("AccentColor"))
                }
                .padding(.horizontal)
                
                
                HStack {
                    Text("What is Polygon:")
                        .bold()
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text("Ethereum is a decentralized open-source blockchain system that features its own cryptocurrency, Ether. ETH works as a platform for numerous other cryptocurrencies, as well as for the execution of decentralized smart contracts. \nEthereum was first described in a 2013 whitepaper by Vitalik Buterin. Buterin, along with other co-founders, secured funding for the project in an online public crowd sale in the summer of 2014. The project team managed to raise $18.3 million in Bitcoin, and Ethereum’s price in the Initial Coin Offering (ICO) was $0.311, with over 60 million Ether sold. Taking Ethereum’s price now, this puts the return on investment (ROI) at an annualized rate of over 270%, essentially almost quadrupling your investment every year since the summer of 2014.")
                    .padding(.horizontal)
                    .foregroundColor(Color("AccentColor"))
            }
        }
    }
}

struct CoinDetailAboutView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailAboutView(marrketCap: "")
    }
}

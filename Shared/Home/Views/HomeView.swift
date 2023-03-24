//
//  HomeView.swift
//  KnowYourCrypto (iOS)
//
//  Created by Cortana23 on 02/11/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            
            Image("relax")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            
            Spacer()
                .frame(height: 80)
            
            CustomSizeTextButtonView(text: "Know Your Crypto \nThe Begining", color: .cyan)
//            Text("Know Your Crypto \nThe Begining")
                .multilineTextAlignment(.center)
        }
        
        //Few buttons like CMC
        
        //Trending Coins
        
        //Trending NFTs
        
        //Gainers and Losers tab

        //Top news/articles/blogs
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

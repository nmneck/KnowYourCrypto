//
//  PortfolioView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        VStack {
            Image("lock_3d")
                .resizable()
            .frame(width: 300, height: 300, alignment: .center)
            
            Spacer()
                .frame(height: 80)
            
            CustomSizeTextButtonView(text: "Minting...", color: Color("AccentColor"))
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}

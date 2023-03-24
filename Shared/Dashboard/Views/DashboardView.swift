//
//  DashboardView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            Image("no_use")
                .resizable()
            .frame(width: 300, height: 300, alignment: .center)
            
            Spacer()
                .frame(height: 80)
            
            CustomSizeTextButtonView(text: "Minting...", color: Color("AccentColor"))
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

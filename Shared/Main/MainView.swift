//
//  MainView.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 17/11/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                MarketView()
                    .tabItem {
                        Image("01-2")
                    }
                
                DashboardView()
                    .tabItem {
                        Image("01-1")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

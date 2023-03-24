//
//  KnowYourCryptoApp.swift
//  Shared
//
//  Created by Cortana23 on 01/11/21.
//

import SwiftUI
import SDWebImageSVGCoder

@main
struct KnowYourCryptoApp: App {
//    let persistenceController = PersistenceController.shared
    init() {
        SDImageCodersManager.shared.addCoder(SDImageSVGCoder.shared)
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

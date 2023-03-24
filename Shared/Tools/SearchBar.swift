//
//  SearchBar.swift
//  KnowYourCrypto
//
//  Created by Cortana23 on 16/11/21.
//

import SwiftUI

struct SearchBar: View {
    
    var displayText: String
    @Binding var search_word: String
    
    @State var showPlaceholder = true
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            ZStack {
                HStack {
                    TextField(displayText, text: $search_word)
                                        .frame(height: 30, alignment: .leading)
                }
            }
        }
        .padding(10)
        .background(Color.gray.opacity(0.25))
        .cornerRadius(12)
        .shadow(color: .gray, radius: 3, x: 3, y: 3)
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(displayText: "ll", search_word: .constant("neck"))
    }
}

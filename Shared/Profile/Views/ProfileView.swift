//
//  ProfileView.swift
//  KnowYourCrypto (iOS)
//
//  Created by Cortana23 on 05/11/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                
//                Spacer()
                
                Image("mavka_one")
                        .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .background(Color("AccentColor").opacity(0.2))
                    .cornerRadius(50)
                
                Spacer()
                VStack(alignment: .trailing, spacing: 2) {
                    
                    Text("Someone Maned")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                        .foregroundColor(Color("AccentColor"))
                        .padding(4)
                    
                    Text("123275623 ~>")
                        .font(.system(size: 14, weight: .semibold, design: .default))
                        .foregroundColor(Color("AccentColor"))
                        .padding(4)
                }
//                .foregroundColor(.cyan)
                
            }
            .padding()
            
            Spacer()
            
            VStack {
                Divider()
                
                HStack {
                    Label("2344 Followers", systemImage: "person.fill")
                        .foregroundColor(Color("AccentColor"))
                    
                    Spacer()
                    
                    Label("2344 Following", systemImage: "person.fill")
                        .foregroundColor(Color("AccentColor"))
                }
                .padding()
                
                Divider()
            }
            
            Spacer()
            
            VStack {
                FixedSizeLabel(image: "person.2", text: "Something New", color: Color("AccentColor"))
                FixedSizeLabel(image: "person.2", text: "Something New", color: Color("AccentColor"))
                FixedSizeLabel(image: "person.2", text: "Something New", color: Color("AccentColor"))
                FixedSizeLabel(image: "person.2", text: "Something New", color: Color("AccentColor"))
            }
            
            Spacer()
        }
//        .background(Color.cyan.opacity(0.05))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

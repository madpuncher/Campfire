//
//  TabButton.swift
//  Campfire
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 15.08.2021.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    var image: String
    
    @Binding var selected: String
        
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()) {
                selected = title
            }
        }, label: {
            HStack(spacing: 10) {
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(selected == title ? .theme.tabBarButtonColor : Color(#colorLiteral(red: 0.3675880432, green: 0.3311064243, blue: 0.483784616, alpha: 1)))
                    .frame(width: 20, height: 20)
                
                if selected == title {
                    Text(title)
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundColor(.theme.TabBarForegroundColor)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.theme.background.opacity(selected == title ? 1 : 0))
            .clipShape(Capsule())
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

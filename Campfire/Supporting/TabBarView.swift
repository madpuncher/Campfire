//
//  TabBarView.swift
//  Campfire
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 15.08.2021.
//

import SwiftUI

struct TabBarView: View {
    @State var current = "ToDo"
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $current) {
                
                ToDoView()
                    .tag("ToDo")
                Text("Hobby")
                    .tag("Diary")
                Text("Third")
                    .tag("Third")
                Text("Settings")
                    .tag("Settings")
                
            }
            
            HStack(spacing: 0) {
                    
                TabButton(title: "ToDo", image: "ToDo", selected: $current)
                Spacer()
                TabButton(title: "Diary", image: "Diary", selected: $current)
                Spacer()
                TabButton(title: "Third", image: "Third", selected: $current)
                Spacer()
                TabButton(title: "Settings", image: "Settings", selected: $current)
                
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color.theme.tabBar)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
    

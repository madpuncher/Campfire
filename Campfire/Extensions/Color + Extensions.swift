//
//  Color + Extensions.swift
//  Campfire
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 15.08.2021.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    var accent = Color("AccentColor")
    var background = Color("BackgroundColor")
    var green = Color("GreenColor")
    var red = Color("RedColor")
    var secondaryText = Color("SecondaryTextColor")
    var tabBar = Color("TabBarColor")
    var tabBarButtonColor = Color("TabBarButtonColor")
    var TabBarForegroundColor = Color("TabBarForegroundColor")
    
}

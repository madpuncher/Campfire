//
//  Task.swift
//  Campfire
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 15.08.2021.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var decription: String
    var fromTime: Int
    var toTime: Int
    var tag: Tag
    var completed: Bool
    
    var image: String {
        tag.rawValue
    }
}

enum Tag: String {
    case sport = "Sport"
    case reading = "Reading"
    case study = "Study"
    case work = "Work"
    case shop = "Shop"
    case home = "Home"
}

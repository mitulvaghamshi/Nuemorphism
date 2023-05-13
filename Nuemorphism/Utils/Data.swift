//
//  Data.swift
//  NuemorphicDesign
//
//  Created by Mitul Vaghamshi on 2022-11-20.
//

import SwiftUI

class Data {
    static let accessories: [AccessoryItem] = [
        AccessoryItem(title: "Control Room Lights", image: Image(systemName: "lightbulb")),
        AccessoryItem(title: "Dungeon", image: Image(systemName: "lock.shield")),
        AccessoryItem(title: "Death Ray", image: Image(systemName: "scope")),
        AccessoryItem(title: "Periscope", image: Image(systemName: "eye")),
        AccessoryItem(title: "Evil Music", image: Image(systemName: "music.house"))
    ]
    
    static let tabBarItems: [TabBarItem] = [
        TabBarItem(
            selectedItem: .constant(.lair),
            smartView: .lair,
            icon: "pencil.tip"),
        TabBarItem(
            selectedItem: .constant(.lair),
            smartView: .camera,
            icon: "video.circle"),
        TabBarItem(
            selectedItem: .constant(.lair),
            smartView: .settings,
            icon: "gear")
    ]
}

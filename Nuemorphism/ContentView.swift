//
//  ContentView.swift
//  Nuemorphism
//
//  Created by Mitul Vaghamshi on 2023-05-12.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem = SelectedItem.lair
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ZStack {
                    switch selectedItem {
                    case .lair: LairView()
                    case .camera, .automation, .settings: CardView()
                    }
                }
                TabBarView(
                    selectedItem: self.$selectedItem,
                    tabBarItems: [
                        TabBarItem(
                            selectedItem: self.$selectedItem,
                            smartView: .lair, icon: "pencil.tip"),
                        TabBarItem(
                            selectedItem: self.$selectedItem,
                            smartView: .camera, icon: "video.circle"),
                        TabBarItem(
                            selectedItem: self.$selectedItem,
                            smartView: .settings, icon: "gear")
                    ])
                .padding(.bottom, geometry.safeAreaInsets.bottom / 2)
                .background(Color.lairBackgroundGray)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct SmartLiar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

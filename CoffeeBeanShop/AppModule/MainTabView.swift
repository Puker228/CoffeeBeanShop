//
//  MainTabView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 10.07.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house")
                }
        }
    }
}

#Preview {
    MainTabView()
}

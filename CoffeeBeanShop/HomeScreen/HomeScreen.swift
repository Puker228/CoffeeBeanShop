//
//  HomeScreen.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 04.07.2025.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            HeadlineView()
                .padding(.bottom, 24.0)
            
            InputView()
        }
    }
}

#Preview {
    HomeScreen()
}

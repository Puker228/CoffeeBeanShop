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
                .padding(.bottom, 32.0)
            
            CategoryView()
            
            CoffeeCarouselView(items: ModelData().cofees)
            
            Spacer()
        }
    }
}

#Preview {
    HomeScreen()
}

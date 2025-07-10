//
//  CoffeeCarouselView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 08.07.2025.
//

import SwiftUI

struct CoffeeCarouselView: View {
    let items: [CoffeeItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(items) { item in
                    NavigationLink(destination: CoffeeDetailView(item: item)) {
                        CoffeeCardView(item: item)
                    }
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    CoffeeCarouselView(items: ModelData().cofees)
}

//
//  SpecialOffersView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 09.07.2025.
//

import SwiftUI

struct SpecialOffersView: View {
    let items: [CoffeeItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Special Offers")
                .customFont(PlusJakartaSans.regularSemiBold, size: 16)
            
            ScrollView(showsIndicators: false) {
                ForEach(items) { item in
                    NavigationLink(destination: CoffeeDetailView(item: item)) {
                        LongCoffeeCardView(item: item)
                    }
                }
            }
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    SpecialOffersView(items: ModelData().cofees)
}

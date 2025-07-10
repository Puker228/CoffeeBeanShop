//
//  CoffeeDetailView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 07.07.2025.
//

import SwiftUI

struct CoffeeDetailView: View {
    let item: CoffeeItem
    
    var body: some View {
        VStack {
            Text(item.name)
                .font(.largeTitle)
            Text(item.description)
                .padding()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CoffeeDetailView(item: ModelData().cofees[0])
}

//
//  CoffeeCardView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 06.07.2025.
//

import SwiftUI

struct CoffeeCardView: View {
    let item: CoffeeItem
    
    var body: some View {
        Text(item.name)
        Image("Coffee Images/greenCoffee")
    }
}

#Preview {
    CoffeeCardView(item: ModelData().cofees[0])
}

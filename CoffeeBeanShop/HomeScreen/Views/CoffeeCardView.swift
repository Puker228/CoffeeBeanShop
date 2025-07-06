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
        VStack(spacing: 12) {
            item.image
                .resizable()
                .scaledToFill()
                .frame(width: 139, height: 109)
                .clipped()
                .cornerRadius(8)
                .padding([.top, .leading, .trailing], 12)
            VStack(alignment: .leading) {
                Text(item.name)
                Text(item.roast)
                Text("\(item.price)")
            }
            .padding(.horizontal)
        }
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.white)
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        )
    }
}

#Preview {
    CoffeeCardView(item: ModelData().cofees[0])
}

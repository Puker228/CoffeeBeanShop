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
                .padding([.top, .horizontal], 12)
            VStack(alignment: .leading, spacing: 4) {
                Text(item.name)
                    .foregroundColor(Color.black)
                    .customFont(PlusJakartaSans.regularMedium, size: 14)
                Text(item.roast)
                    .foregroundColor(Color.gray)
                    .customFont(InterFont.regular, size: 12)
                PriceView(price: item.price, originalPrice: item.originalPrice)
            }
            .padding(.horizontal, 12)
            
            Spacer()
        }
        .frame(width: 155.0, height: 217.0)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.white)
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        )
    }
}

struct PriceView: View {
    let price: Double
    let originalPrice: Double?
    
    var body: some View {
        HStack(spacing: 4) {
            Text("£\(price, specifier: "%.2f")")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(originalPrice == nil ? .black : .red)
            
            if let original = originalPrice {
                Text("/was")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                Text("£\(original, specifier: "%.2f")")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .strikethrough()
            }
        }
    }
}

#Preview {
    CoffeeCardView(item: ModelData().cofees[1])
}

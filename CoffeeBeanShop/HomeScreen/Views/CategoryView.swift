//
//  CategoryView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 05.07.2025.
//

import SwiftUI

struct CategoryView: View {
    @State private var selectedFilter: CoffeeFilter = .all
    
    var body: some View {
        ScrollView {
            LazyHStack(spacing: 16) {
                ForEach(CoffeeFilter.allCases) { coffeeType in
                    Button(action: {
                        selectedFilter = coffeeType
                    }) {
                        Text(coffeeType.rawValue)
                            .customFont(selectedFilter == coffeeType ? PlusJakartaSans.regularSemiBold : PlusJakartaSans.regular, size: 14)
                            .lineLimit(1)
                            .foregroundStyle(selectedFilter == coffeeType ? .white : .black.opacity(0.65))
                            .padding(.horizontal, 12)
                            .frame(height: 33)
                            .background(
                                ZStack {
                                    if selectedFilter == coffeeType {
                                        Color("Colors/Coffee01")
                                    } else {
                                        Color.white
                                        RoundedRectangle(cornerRadius: 32)
                                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    }
                                }
                            )
                            .cornerRadius(32)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryView()
}

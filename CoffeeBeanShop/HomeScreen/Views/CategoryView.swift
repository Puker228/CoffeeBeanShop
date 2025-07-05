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
            HStack {
                ForEach(CoffeeFilter.allCases) { coffeeType in
                    Button(action: {
                        selectedFilter = coffeeType
                    }) {
                        Text(coffeeType.rawValue)
                            .customFont(selectedFilter == coffeeType ? PlusJakartaSans.regularSemiBold : PlusJakartaSans.regular, size: 14)
                            .lineLimit(1)
                            .foregroundStyle(selectedFilter == coffeeType ? .white : .primary)
                            .padding(16)
                            .frame(width: 98, height: 33)
                            .background(selectedFilter == coffeeType ? Color.green : Color.gray.opacity(0.2))
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

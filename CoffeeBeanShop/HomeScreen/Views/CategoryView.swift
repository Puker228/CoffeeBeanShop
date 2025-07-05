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
                        print(228)
                    }) {
                        Text(coffeeType.rawValue)
                            .font(.system(size: 14))
                            .lineLimit(1)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                            .padding(16)
                            .frame(width: 98, height: 33)
                            .background(.green)
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

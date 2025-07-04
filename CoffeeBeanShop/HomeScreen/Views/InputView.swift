//
//  InputView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 05.07.2025.
//

import SwiftUI

struct InputView: View {
    @State private var inputText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.gray)
            
            TextField("Search Product", text: $inputText)
            
            Button(action: {
                print(228)
            }) {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.white)
                    .padding(10)
                    .frame(width: 36, height: 36)
                    .background(.green)
                    .cornerRadius(6)
            }

        }
        .padding(10)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal, 24)
    }
}

#Preview {
    InputView()
}

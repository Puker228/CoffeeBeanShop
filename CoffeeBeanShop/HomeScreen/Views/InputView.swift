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
                .customFont(PlusJakartaSans.regular, size: 14)
            
            Button(action: {
                print(228)
            }) {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.white)
                    .padding(10)
                    .frame(width: 36, height: 36)
                    .background(Color("Colors/Coffee01"))
                    .cornerRadius(6)
            }

        }
        .padding(10)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
        .padding(.horizontal, 24)
    }
}

#Preview {
    InputView()
}

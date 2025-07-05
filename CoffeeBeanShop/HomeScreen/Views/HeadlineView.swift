//
//  HeadlineView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 05.07.2025.
//

import SwiftUI

struct HeadlineView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Good Morning,")
                    .fontWeight(.regular)
                    .font(.system(size: 12))
                Text("Leslie Alexander")
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
            }
            
            Spacer()
            
            HStack(spacing: 16) {
                Button(action: {
                    print(228)
                }) {
                    Image(systemName: "bag")
                        .foregroundStyle(.black)
                }
                
                Button(action: {
                    print(228)
                }) {
                    Image(systemName: "message.badge")
                        .foregroundStyle(.black)
                }

            }
        }
        .padding(.top, 24.0)
        .padding(.horizontal, 24.0)
    }
}

#Preview {
    HeadlineView()
}

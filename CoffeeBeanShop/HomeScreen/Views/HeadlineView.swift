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
                Image(systemName: "bag")
                Image(systemName: "message.badge")
            }
        }
        .padding(.top, 24.0)
        .padding(.horizontal, 24.0)
    }
}

#Preview {
    HeadlineView()
}

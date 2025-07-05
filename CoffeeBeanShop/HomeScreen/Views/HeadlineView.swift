//
//  HeadlineView.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 05.07.2025.
//

import SwiftUI

struct HeadlineView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Good Morning,")
                    .customFont(InterFont.regular, size: 12)
                    .foregroundStyle(.gray)
                Text("Leslie Alexander")
                    .customFont(PlusJakartaSans.regularSemiBold, size: 20)
            }
            
            Spacer()
            
            HStack(spacing: 16) {
                Button(action: {
                    print(228)
                }) {
                    Image(systemName: "bag")
                        .foregroundStyle(.black)
                        .alignmentGuide(.lastTextBaseline) { d in d[.bottom] }
                }
                
                Button(action: {
                    print(228)
                }) {
                    Image(systemName: "message.badge")
                        .foregroundStyle(.black)
                        .alignmentGuide(.lastTextBaseline) { d in d[.bottom] }
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

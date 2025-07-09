import SwiftUI

struct CoffeeCardView: View {
    let item: CoffeeItem

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            // Image
            item.image
                .resizable()
                .scaledToFill()
                .frame(width: 131, height: 109)
                .clipped()
                .cornerRadius(8)
                .padding([.top, .leading, .trailing], 12.0)

            // Name + roast + price
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.name)
                        .foregroundColor(.black)
                        .customFont(PlusJakartaSans.regularMedium, size: 14)

                    Text(item.roast)
                        .foregroundColor(.gray)
                        .customFont(InterFont.regular, size: 12)
                }

                PriceView(price: item.price, originalPrice: item.originalPrice)
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
        }
        .frame(width: 155, height: 217)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.white)
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
        )
    }
}

struct LongCoffeeCardView: View {
    let item: CoffeeItem
    
    var body: some View {
        HStack {
            
            // Image
            item.image
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 76)
                .clipped()
                .cornerRadius(8)
                .padding(.leading, 12)
            
            // Name + roast + price
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.name)
                        .foregroundColor(.black)
                        .customFont(PlusJakartaSans.regularMedium, size: 14)

                    Text(item.roast)
                        .foregroundColor(.gray)
                        .customFont(InterFont.regular, size: 12)
                }

                PriceView(price: item.price, originalPrice: item.originalPrice)
            }
            .padding(.horizontal, 12)
            
            Spacer()
        }
        .frame(height: 100)
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
                .customFont(InterFont.regularSemiBold, size: 14)
                .foregroundColor(originalPrice == nil ? .black : .red)

            if let original = originalPrice {
                Text("/was")
                    .customFont(InterFont.regular, size: 14)
                    .foregroundColor(.gray)

                Text("£\(original, specifier: "%.2f")")
                    .customFont(InterFont.regular, size: 14)
                    .foregroundColor(.gray)
                    .strikethrough()
            }
        }
        .frame(width: 131, alignment: .leading)
    }
}

#Preview {
//    CoffeeCardView(item: ModelData().cofees[1])
    LongCoffeeCardView(item: ModelData().cofees[1])
}

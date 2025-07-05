//
//  FontProvider.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 05.07.2025.
//

import SwiftUI

protocol CustomFontConvertible {
    var fontName: String { get }
}

enum InterFont: String, CustomFontConvertible {
    case regular = "Inter-Regular"
    case regularThin = "Inter-Regular_Thin"
    case regularExtraLight = "Inter-Regular_ExtraLight"
    case regularLight = "Inter-Regular_Light"
    case regularMedium = "Inter-Regular_Medium"
    case regularSemiBold = "Inter-Regular_SemiBold"
    case regularBold = "Inter-Regular_Bold"
    case regularExtraBold = "Inter-Regular_ExtraBold"
    case regularBlack = "Inter-Regular_Black"
    
    var fontName: String { rawValue }
}

enum PlusJakartaSans: String, CustomFontConvertible {
    case regular = "PlusJakartaSans-Regular"
    case regularExtraLight = "PlusJakartaSans-Regular_ExtraLight"
    case regularLight = "PlusJakartaSans-Regular_Light"
    case regularMedium = "PlusJakartaSans-Regular_Medium"
    case regularSemiBold = "PlusJakartaSans-Regular_SemiBold"
    case regularBold = "PlusJakartaSans-Regular_Bold"
    case regularExtraBold = "PlusJakartaSans-Regular_ExtraBold"
    
    var fontName: String { rawValue }
}

extension View {
    func customFont<T: CustomFontConvertible>(_ type: T, size: CGFloat = 16) -> some View {
        self.font(Font.custom(type.fontName, size: size))
    }
}

//
//  ItemCard.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 06.07.2025.
//

import Foundation
import SwiftUI

struct ItemCard: Identifiable {
    let id: UUID
    let name: String
    let roast: String
    let price: Double
    let originalPrice: Double?
    
    private let imageName: String
    var image: Image {
        Image(imageName)
    }
}

//
//  ItemCard.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 06.07.2025.
//

import Foundation
import SwiftUI

struct CoffeeItem: Identifiable, Decodable, Hashable {
    let id: Int
    let name: String
    let description: String
    let roast: String
    let price: Double
    let originalPrice: Double?
    let rating: Double
    
    private let imageName: String
    var image: Image {
        Image(imageName)
    }
}

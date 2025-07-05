//
//  CoffeeFilter.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 05.07.2025.
//

import Foundation

enum CoffeeFilter: String, Identifiable, CaseIterable {
    case all = "All Coffees"
    case original = "Original"
    case decaf = "Decaf Coffee"
    case arabica = "Arabica"
    case robusta = "Robusta"
    case liberica = "Liberica"
    
    var id: String { self.rawValue }
}

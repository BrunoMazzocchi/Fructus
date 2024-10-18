//
//  FruitModel.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 17/10/24.
//

import SwiftUI

// MARK: - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

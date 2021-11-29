//
//  FruitModel.swift
//  Fructus
//
//  Created by md tonoy akanda on 11/28/21.
//

import SwiftUI

struct Fruit : Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

//
//  Restaurante.swift
//  PracticaTableViews
//
//  Created by Alumno on 11/5/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String
    var distance: Double
    var reviews: Int
    var address: String
    var category: String
    var review: String
    var price: String
    
    init(name: String, distance: Double, reviews: Int, address: String, category: String, review: String, price: String) {
        self.name = name
        self.distance = distance
        self.reviews = reviews
        self.address = address
        self.category = category
        self.review = review
        self.price = price
    }
}

//
//  Dish.swift
//  Yummie
//
//  Created by Syed Fasiullah Hussaini on 10/03/24.
//

import Foundation

struct Dish {
    let id, name, image, description: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}

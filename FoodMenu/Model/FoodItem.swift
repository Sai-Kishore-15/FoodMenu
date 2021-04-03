//
//  FoodItem.swift
//  FoodMenu
//
//  Created by Sai Kishore on 03/04/21.
//

import Foundation

struct FoodItem {
    var itemName: String?
    var description: String?
    var imageName: String?
    init(itemName: String, description: String, imageName: String?){
        self.itemName = itemName
        self.description = description
        self.imageName = imageName
    }
}

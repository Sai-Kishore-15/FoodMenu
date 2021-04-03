//
//  FoodData.swift
//  FoodMenu
//
//  Created by Sai Kishore on 03/04/21.
//

import Foundation
import UIKit


class FoodData {
    static let sharedInstance = FoodData()
    
    // Preloaded Data
    // Can be instantiated from a json too 
    let data = [FoodCategory(headerName: "Pizza",
                             subType: [
                                FoodItem(itemName: "Double Cheese Margherita", description: "Double Cheese Margherita tastes great", imageName: "pizza_double_cheese_margherita"),
                                FoodItem(itemName: "Olives and Pepperoni", description: "Olives and Pepproni is the best seller", imageName: "pizza_olives_and_pepperoni"),
                                FoodItem(itemName: "Spicy Chicken", description: "Spicy Chicken is the out of the world", imageName: "pizza_spicy_chicken")
                             ]) ,
                FoodCategory(headerName: "Burgers",
                             subType: [
                                FoodItem(itemName: "Ham Burger", description: "HamBurger Margherita tastes great", imageName: "burger_ham"),
                                FoodItem(itemName: "Chicken Burger", description: "Chicken Burge is the best seller", imageName: "burger_chicken"),
                                FoodItem(itemName: "Veggie Burger", description: "Veggie Burger is the out of the world", imageName: "burger_veggie")
                             ]),
                FoodCategory(headerName: "Beverages",
                             subType: [
                                FoodItem(itemName: "Gin and Tonic", description: "Gin and Tonic tastes great", imageName: "beverages_gin_and_tonic"),
                                FoodItem(itemName: "Coke", description: "Coke  is the best seller", imageName: "beverages_coke")
                             ]),
                FoodCategory(headerName: "Snacks",
                             subType: [
                                FoodItem(itemName: "Bread Omlette", description: "Bread Omlette tastes great", imageName: "snacks_breadomlette")
                             ])
    ]
}

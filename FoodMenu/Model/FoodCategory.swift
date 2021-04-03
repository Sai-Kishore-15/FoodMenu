//
//  FoodModel.swift
//  FoodMenu
//
//  Created by Sai Kishore on 02/04/21.
//

import Foundation

struct FoodCategory {
    var headerName: String?
    var subType =  [FoodItem]()
    var displayStatus = false 
    init(headerName: String, subType: [FoodItem]){
        self.headerName = headerName
        self.subType = subType
    }
}

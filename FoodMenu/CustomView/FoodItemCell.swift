//
//  FoodItemCell.swift
//  FoodMenu
//
//  Created by Sai Kishore on 02/04/21.
//

import UIKit

class FoodItemCell: UITableViewCell {

    // UI
    @IBOutlet weak var foodView: UIView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodPageButton: UIButton!
    
    // Closures
    var cellTapped: ((FoodItem) -> Void)?
    
    // Classes
    var foodItem: FoodItem?
    
    // Functions
    func addItem(with foodItem: FoodItem){
        self.foodItem = foodItem
        foodLabel.text = foodItem.itemName
        foodImage.image = UIImage(named: foodItem.imageName ?? "default")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // Actions
    @IBAction func foodPageButtonPressed(_ sender: Any) {
        guard let foodItem = foodItem else {return}
        cellTapped?(foodItem)
    }
}


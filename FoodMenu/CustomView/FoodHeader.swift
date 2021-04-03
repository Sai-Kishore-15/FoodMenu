//
//  FoodHeader.swift
//  FoodMenu
//
//  Created by Sai Kishore on 02/04/21.
//

import Foundation
import UIKit

class FoodHeader: UIView {
    
    // Classes
    var foodLabel: UILabel?
    var foodImageView: UIImageView?
    
    // Initialisation
    init(foodImageName: String?, foodLabelName: String?,frame: CGRect){
        super.init(frame: frame)
        self.setupView(foodImage: foodImageName!, foodLabelName: foodLabelName!)
    }
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // Functions
    func setupView(foodImage: String,foodLabelName: String){
        foodImageView = UIImageView(image: UIImage(named: foodImage))
        foodImageView!.frame = CGRect(x: 5, y: 5, width: frame.size.height-10, height: self.frame.size.height - 10)
        
        foodLabel = UILabel(frame: CGRect(x: 10 + foodImageView!.frame.size.width, y: 5, width: self.frame.size.width - 15 - foodImageView!.frame.size.width, height: self.frame.size.height - 10))
        foodLabel?.text = foodLabelName
        foodLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        
        addSubview(foodImageView!)
        addSubview(foodLabel!)
    }
}

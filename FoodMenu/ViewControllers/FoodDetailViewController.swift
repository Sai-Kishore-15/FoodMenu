//
//  FoodDetailViewController.swift
//  FoodMenu
//
//  Created by Sai Kishore on 02/04/21.
//

import UIKit

class FoodDetailViewController: UIViewController {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var popViewControllerButton: UIButton!
    @IBOutlet weak var foodDescription: UITextView!
    @IBOutlet weak var foodTitle: UILabel!
    
    var foodItem: FoodItem? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func popViewControllerPressed(_ sender: Any) {
        dismiss(animated: true, completion: {})
    }
    func setup(){
        foodImage.image = UIImage(named: foodItem?.imageName ?? "default")
        foodTitle.text = foodItem?.itemName ?? "Food Item"
        foodDescription.text = foodItem?.description ?? "This food tastes good"
    }
}

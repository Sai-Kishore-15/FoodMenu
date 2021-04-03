//
//  ViewController.swift
//  FoodMenu
//
//  Created by Sai Kishore on 02/04/21.
//

import UIKit

class ViewController: UIViewController {

    // UI
    @IBOutlet weak var foodTableView: UITableView!
    
    // Classes
    var foodData = FoodData.sharedInstance.data
    
    // Control Variable
    var currentSelectedIndex: Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        foodTableView.sectionFooterHeight = 0.0
        foodTableView.allowsSelection = false
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // When user taps it, we populate with information.
        if foodData[section].displayStatus {
            return foodData[section].subType.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Populating each cell with correct model
        let cell = foodTableView.dequeueReusableCell(withIdentifier: "foodVarietyCell") as? FoodItemCell
        cell?.addItem(with: foodData[indexPath.section].subType[indexPath.row])
        
        // Action when "View Button is Tapped"
        cell?.cellTapped = { [weak self] foodItem in
            let foodDetailViewController = self?.storyboard?.instantiateViewController(identifier: "foodDetailViewController") as! FoodDetailViewController
            foodDetailViewController.foodItem = foodItem
            self?.present(foodDetailViewController, animated: true, completion: {})
        }
        
        // Default case
        return cell ?? UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return foodData.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        // Initialising the header
        let foodHeader = FoodHeader(foodImageName: foodData[section].subType[0].imageName, foodLabelName: foodData[section].headerName, frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 70))
        
        // ACtion when Header is tapped
        let gesture = HeaderTapGesture(target: self, action: #selector(self.headerTapped))
        gesture.index = section
        foodHeader.addGestureRecognizer(gesture)
        
        return foodHeader
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

extension ViewController {
    // Functions
    
    // Action when header is tapped
    @objc func headerTapped(sender: HeaderTapGesture){
        foodData[sender.index].displayStatus = !foodData[sender.index].displayStatus
        foodTableView.reloadSections([sender.index], with: .automatic)
        if let currentSelectedIndex = currentSelectedIndex{
            if currentSelectedIndex != sender.index{
                foodData[currentSelectedIndex].displayStatus = false
                foodTableView.reloadSections([currentSelectedIndex], with: .automatic)
            }
        }
        self.currentSelectedIndex = sender.index
    }
}

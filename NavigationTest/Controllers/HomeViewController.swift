//
//  HomeViewController.swift
//  NavigationTest
//
//  Created by Flo Lupascu on 07/12/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var textfieldHoldingCarsValue: UITextField!
    @IBOutlet var textfieldHoldingBicyclesValue: UITextField!
    
    var valueForCarsScreen = String()
    var valueForBicyclesScreen = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        valueForCarsScreen = textfieldHoldingCarsValue.text ?? String()
        valueForBicyclesScreen = textfieldHoldingBicyclesValue.text ?? String()
        
        if let navController = self.tabBarController?.viewControllers?[1] as? UINavigationController{
            if let carsTab = navController.children.first as? PostcodeViewController{
                carsTab.receivedValueFromHomeScreen = valueForCarsScreen
            }
        }
        
        if let navController = self.tabBarController?.viewControllers?[2] as? UINavigationController{
            if let bicyclesTab = navController.children.first as? PostcodeViewController{
                bicyclesTab.receivedValueFromHomeScreen = valueForBicyclesScreen
            }
        }
    }
    
    // Logout the user and navigate to Login screen
    @IBAction func logoutTapped(_ sender: UIBarButtonItem) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
}

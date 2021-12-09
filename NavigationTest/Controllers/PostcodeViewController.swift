//
//  PostcodeViewController.swift
//  NavigationTest
//
//  Created by Flo Lupascu on 07/12/2021.
//

import UIKit

class PostcodeViewController: UIViewController {
    
    @IBOutlet var receivedValueLabel: UILabel!
    
    var receivedValueFromHomeScreen = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if self.tabBarController?.selectedIndex == 1 {
            receivedValueLabel.text = "Value received for Cars: \n" + receivedValueFromHomeScreen
        }

        if self.tabBarController?.selectedIndex == 2 {
            receivedValueLabel.text = "Value received for Bicycles: \n" + receivedValueFromHomeScreen
        }
    }
}

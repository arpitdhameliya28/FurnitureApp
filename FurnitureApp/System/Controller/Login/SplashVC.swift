//
//  SplashVC.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 23/02/24.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            if UserDefaults.standard.bool(forKey: "UserLogin") == true {
                
                navigateScreen(NameOfStoryboard: "Home", identifier: "HomeVC", vc: self)
            }
            else {
                
                navigateScreen(NameOfStoryboard: "Main", identifier: "ViewController", vc: self)
            }
        }
    }
}

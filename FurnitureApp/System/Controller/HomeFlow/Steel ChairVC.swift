//
//  Steel ChairVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 06/02/24.
//

import UIKit

class Steel_ChairVC: UIViewController {
    
    @IBOutlet weak var AddToCartBtn: UIButton!
    @IBOutlet weak var Back_btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }

    @IBAction func AddToCartBtn(_ sender: UIButton) {
        
        navigateScreen(NameOfStoryboard: "ShoppingCart", identifier: "ShoppingCart01", vc: self)

    }
}

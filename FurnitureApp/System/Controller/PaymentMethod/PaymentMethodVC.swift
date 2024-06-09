//
//  PaymentMethodVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 23/01/24.
//

import UIKit

class PaymentMethodVC: UIViewController {
    
    @IBOutlet weak var Back_btn: UIButton!

    @IBOutlet weak var ContinueShopping: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ContinueShopping(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "Home", identifier: "HomeVC", vc: self)
    }
    @IBAction func Back_btn(_ sender: UIButton) {
       popVC(vc: self)
    }

}

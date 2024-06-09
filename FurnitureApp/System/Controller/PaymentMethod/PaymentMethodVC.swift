//
//  PaymentMethodVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 23/01/24.
//

import UIKit

class PaymentMethodVC: UIViewController {
    
    @IBOutlet weak var Back_btn: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: false)
    }

}

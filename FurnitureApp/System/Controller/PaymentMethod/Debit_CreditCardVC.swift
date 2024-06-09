//
//  Debit_CreditCardVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 14/02/24.
//

import UIKit

class Debit_CreditCardVC: UIViewController {
    @IBOutlet weak var Back_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: false)
    }
    
}

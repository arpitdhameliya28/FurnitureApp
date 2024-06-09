//
//  Pay_choiceVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 23/01/24.
//

import UIKit

class Pay_choiceVC: UIViewController {
    
    @IBOutlet weak var Back_btn: UIButton!

    @IBOutlet weak var Debit_CreditCard: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: false)
    }
    

    @IBAction func Debit_CreditCard(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "PaymentMethod", bundle: nil).instantiateViewController(withIdentifier: "Debit_CreditCardVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

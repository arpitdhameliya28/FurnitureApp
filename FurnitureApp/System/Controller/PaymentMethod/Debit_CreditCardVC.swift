//
//  Debit_CreditCardVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 14/02/24.
//

import UIKit

class Debit_CreditCardVC: UIViewController {
    @IBOutlet weak var Back_btn: UIButton!
    
    @IBOutlet weak var CardNumber: UITextField!
    @IBOutlet weak var Expirydate: UITextField!
    @IBOutlet weak var CVV: UITextField!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var PayNow: UIButton!
    @IBOutlet weak var CancelPayment: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.CancelPayment.layer.cornerRadius = 10
        self.CancelPayment.layer.borderWidth = 2
        CVV.isSecureTextEntry = true 
    }
    
    @IBAction func CanclePayment(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "PaymentMethod", identifier: "Pay_choiceVC", vc: self)
    }
    
    @IBAction func PayNow(_ sender: UIButton) {
        if self.CardNumber.text!.isEmpty || self.Expirydate.text!.isEmpty || self.CVV.text!.isEmpty || self.Name.text!.isEmpty {
            AlertPresent(Error: "Error!", Message: "Please Enter All Details Fill Up", vc: self)
            
        }
        else if self.CardNumber.text!.count < 19 || self.CardNumber.text!.count > 19  {
            AlertPresent(Error: "Error!", Message: "Please enter Valid CardNumber", vc: self)
            
        }
        else if self.CVV.text!.count < 3 || self.CVV.text!.count > 3  {
            AlertPresent(Error: "Error!", Message: "Please enter Valid CVV Number", vc: self)
        
        }
        else {
            navigateScreen(NameOfStoryboard: "PaymentMethod", identifier: "PaymentMethodVC", vc: self)
        }
    }
    @IBAction func Back_btn(_ sender: UIButton) {
        popVC(vc: self)
    }
    
}

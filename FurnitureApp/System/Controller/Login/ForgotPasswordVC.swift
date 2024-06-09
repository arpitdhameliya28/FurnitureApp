//
//  ForgotPasswordVC.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 21/02/24.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    @IBOutlet weak var Email_Id: UITextField!
    
    @IBOutlet weak var Send_btn: UIButton!
    @IBOutlet weak var Back_btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SendBtn(_ sender: UIButton) {
        if self.Email_Id.text!.isEmpty {
            
            let alert = UIAlertController(title: "Empty", message: "Please Enter ID", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "Try Again", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
            
        }
        
        else if !(self.Email_Id.text!.hasSuffix("@gmail.com")){
            
            let alert = UIAlertController(title: "Email ID", message: "Your Email ID is a Wrong", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "OK", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
            
        }else {
            
            let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeVC")
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
    }
}

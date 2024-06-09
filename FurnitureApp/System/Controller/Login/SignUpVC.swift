//
//  SignUpVC.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 21/02/24.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var Email_Id: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Re_password: UITextField!
    @IBOutlet weak var Mobile_Number: UITextField!
    @IBOutlet weak var Adress: UITextField!
    
    @IBOutlet weak var Sign_up: UIButton!
    
    @IBOutlet weak var Login:UIButton!
    
    @IBOutlet weak var Back_btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        if self.Email_Id.text!.isEmpty || self.Password.text!.isEmpty || self.Re_password.text!.isEmpty || self.Mobile_Number.text!.isEmpty || self.Adress.text!.isEmpty {
            
            let alert = UIAlertController(title: "Empty", message: "Please Enter All Details Fill Up", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "Try Again", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
            
            
        }
        
        else if !(self.Email_Id.text!.hasSuffix("@gmail.com")){
            
            let alert = UIAlertController(title: "Email ID", message: "Your Email ID is a Wrong", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "OK", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
            
        }
        
        else if self.Password.text!.count < 8 || self.Password.text!.count > 8  {
            
            let alert = UIAlertController(title: "Password", message: "Your Password is a Wrong", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "OK", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
            
        }
        else if self.Password.text != self.Re_password.text {
            
            
            let alert = UIAlertController(title: "Sign Up Failed", message: "Sorry, your Passwords were not matching.", preferredStyle: .alert)
            
            
            let btn1 = UIAlertAction(title: "OK", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
        }
        else if self.Mobile_Number.text!.count < 10 || self.Mobile_Number.text!.count > 10  {
            
            let alert = UIAlertController(title: "Mobile Number", message: "Please enter Valid Mobile Number", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "OK", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
        }
        
        else {
            
            navigateScreen (NameOfStoryboard: "Home", identifier: "HomeVC", from: self)
        }
    }
    
    @IBAction func Login(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "LoginVC", from: self)
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
    }
}

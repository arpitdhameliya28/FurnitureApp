//
//  LoginVC.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 21/02/24.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class LoginVC: UIViewController {
    
    @IBOutlet weak var Email_Id: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Login: UIButton!
    @IBOutlet weak var Forget_Pass: UIButton!
    @IBOutlet weak var Login_Google: UIButton!
    @IBOutlet weak var Sign_up: UIButton!
    @IBOutlet weak var Back_btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.Login_Google.layer.cornerRadius = 10
        self.Login.layer.cornerRadius = 10
        self.Login_Google.layer.borderWidth = 2
    }
    
    @IBAction func Login(_ sender: UIButton) {
        
        if self.Email_Id.text!.isEmpty || self.Password.text!.isEmpty {
            
            let alert = UIAlertController(title: "Empty", message: "Please Enter ID OR PASSWORD", preferredStyle: .alert)
            
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
        
        else {
            
            
            
            Auth.auth().createUser(withEmail: Email_Id.text ?? "", password: Password.text ?? "")
            { authuser, error in
                if let err = error as? NSError
                {
                    print(err.localizedDescription)
                }
                else
                {
                    print("Done")
                    navigateScreen (NameOfStoryboard: "Home", identifier: "HomeVC", from: self)
                }
                
            }
            
            
        }
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "SignUpVC", from: self)
    }
    @IBAction func ForgetPassword(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "ForgotPasswordVC", from: self)
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
    }
}

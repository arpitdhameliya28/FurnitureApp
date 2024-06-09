//
//  LoginVC.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 21/02/24.
//

import UIKit
import FirebaseCore
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
        
        UserDefaults.standard.setValue(false, forKey: "UserLogin")
    }
    
    @IBAction func Login(_ sender: UIButton) {
        
        if self.Email_Id.text!.isEmpty || self.Password.text!.isEmpty {
            AlertPresent(Error: "Error!", Message: "Please Enter the email and password", vc: self)
            
        }
        else {
            Auth.auth().signIn(withEmail: self.Email_Id.text!, password: self.Password.text!) { authuser, error in
                if let err = error as? NSError
                {
                    print("User not Login")
                    print(err.localizedDescription)
                    AlertPresent(Error: "Error", Message: "Incorrect username or Password", vc: self)
                }
                else
                {
                    print("UserLogin")
                    let userInfo = Auth.auth().currentUser
                    let email = userInfo?.email
                    UserDefaults.standard.setValue(true, forKey: "UserLogin")
                    UserDefaults.standard.setValue(email, forKey: "UserEmail")
                    setUserLogindata(id: userInfo!.uid , email: self.Email_Id.text!, pass: self.Password.text!)
                    navigateScreen (NameOfStoryboard: "Home", identifier: "HomeVC", vc: self)
                    
                }
                
            }
        }
    }
    
    
    @IBAction func SignUp(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "SignUpVC", vc: self)
    }
    @IBAction func ForgetPassword(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "ForgotPasswordVC", vc: self)
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        popVC(vc: self)
    }
}

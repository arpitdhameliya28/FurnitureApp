//
//  SignUpVC.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 21/02/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class SignUpVC: UIViewController {
    
    @IBOutlet weak var Email_Id: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Re_password: UITextField!
    @IBOutlet weak var Mobile_Number: UITextField!
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Sign_up: UIButton!
    @IBOutlet weak var Login:UIButton!
    
    @IBOutlet weak var Back_btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        if self.Email_Id.text!.isEmpty || self.Password.text!.isEmpty || self.Re_password.text!.isEmpty || self.Mobile_Number.text!.isEmpty || self.Name.text!.isEmpty {
            
            let alert = UIAlertController(title: "Error!", message: "Please Enter All Details Fill Up", preferredStyle: .alert)
            
            let btn1 = UIAlertAction(title: "Try Again", style: .default)
            alert.addAction(btn1)
            
            self.present(alert, animated: true)
            
        }
        else if self.Password.text != self.Re_password.text {
            
            AlertPresent(Error: "Error!", Message: "Please enter Same Password", vc: self)
            
        }
        else if self.Mobile_Number.text!.count < 10 || self.Mobile_Number.text!.count > 10  {
            AlertPresent(Error: "Error!", Message: "Please enter Valid Mobile Number", vc: self)
            
        }
        else {
        
            Auth.auth().createUser(withEmail: self.Email_Id.text!, password: self.Password.text!) { authuser, error in
                
                if let err = error as? NSError {
                    AlertPresent(Error: "Error!", Message: "Please enter valid email id", vc: self)
                    print(err.localizedDescription)
                }
                else {
                    print("User Registered")
                    let userInfo = Auth.auth().currentUser
                    let email = userInfo?.email
                    UserDefaults.standard.setValue(userInfo?.email, forKey: "UserEmail")
                    UserDefaults.standard.setValue(true, forKey: "UserLogin")
                    setUserData(email: self.Email_Id.text!, password: self.Password.text!, mobile: self.Mobile_Number.text!, name: self.Name.text!, id: userInfo!.uid)
                    navigateScreen (NameOfStoryboard: "Home", identifier: "HomeVC", vc: self)
                }
                
            }
           
        }
    }
    
    @IBAction func Login(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "LoginVC", vc: self)
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
    }
}

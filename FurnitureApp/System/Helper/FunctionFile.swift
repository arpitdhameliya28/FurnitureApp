//
//  FunctionFile.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 22/02/24.
//

import Foundation
import UIKit

//navigateScreen (NameOfStoryboard: "Main", identifier: "LoginOTPViewController", from: self)

func navigateScreen(NameOfStoryboard: String, identifier: String, vc: UIViewController) {
    let VC = UIStoryboard (name: NameOfStoryboard, bundle: nil).instantiateViewController(withIdentifier: identifier)
    vc.navigationController?.pushViewController(VC, animated: true)
    
}
func AlertPresent(Error: String, Message: String, vc: UIViewController) {
    
    let alert = UIAlertController(title: Error, message: Message, preferredStyle: .alert)
    let btn = UIAlertAction(title: "Try Again", style: .default)
    alert.addAction(btn)
    vc.present(alert, animated: true)
}

func popVC(vc: UIViewController) {
    vc.navigationController?.popViewController(animated: true)
    
}

func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
  }
  
  func isValidPassword(_ password: String) -> Bool {
    let minPasswordLength = 6
    return password.count >= minPasswordLength
  }

func isValidPhonenumber (Phonenumber: String) -> Bool {
    let phoennum = 10
    return Phonenumber.count == phoennum
}

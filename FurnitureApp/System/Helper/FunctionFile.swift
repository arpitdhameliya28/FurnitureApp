//
//  FunctionFile.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 22/02/24.
//

import Foundation
import UIKit

//navigateScreen (NameOfStoryboard: "Main", identifier: "LoginOTPViewController", from: self)

func navigateScreen(NameOfStoryboard: String, identifier: String, from viewController: UIViewController) {
    let destinationVC = UIStoryboard (name: NameOfStoryboard, bundle: nil).instantiateViewController(withIdentifier: identifier)
    viewController.navigationController?.pushViewController(destinationVC, animated: true)
    
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

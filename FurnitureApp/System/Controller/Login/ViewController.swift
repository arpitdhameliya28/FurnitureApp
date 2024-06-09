//
//  ViewController.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 21/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignUp: UIButton!
    @IBOutlet weak var Login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SignUp(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "SignUpVC", from: self)
    }
    
    @IBAction func Login(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Main", identifier: "LoginVC", from: self)
    }
}


//
//  Wooden Table01VC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 06/02/24.
//

import UIKit

class Wooden_Table01VC: UIViewController {
    
    @IBOutlet weak var Back_btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    

}

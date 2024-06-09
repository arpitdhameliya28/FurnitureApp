//
//  My_AccountVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 03/02/24.
//

import UIKit

class My_AccountVC: UIViewController {
    
    
    
    @IBOutlet weak var ProfileImage: UIImageView!
    @IBOutlet weak var ProfileName: UILabel!
    @IBOutlet weak var ProfileEmail: UILabel!
    @IBOutlet weak var NextBtn: UIButton!
    
    
    @IBOutlet weak var HomeBtn: UIButton!
    @IBOutlet weak var MyOrder: UIButton!
    @IBOutlet weak var Notification: UIButton!
    @IBOutlet weak var TopDeals: UIButton!
    @IBOutlet weak var PaymentMethod: UIButton!
    @IBOutlet weak var Privacy: UIButton!
    @IBOutlet weak var Security: UIButton!
    @IBOutlet weak var Language: UIButton!
    @IBOutlet weak var TermsOfService: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.ProfileImage.layer.cornerRadius = self.ProfileImage.frame.height / 2
        
        
    }
    
    
    @IBAction func Language(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "MyAccount", bundle: nil).instantiateViewController(withIdentifier: "LanguageVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @IBAction func PaymentMethod(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "PaymentMethod", bundle: nil).instantiateViewController(withIdentifier: "Pay_choiceVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}



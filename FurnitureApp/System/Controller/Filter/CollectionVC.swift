//
//  Collection_ViewController.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 23/01/24.
//

import UIKit

class CollectionVC: UIViewController {
    
    @IBOutlet weak var Saleup_btn: UIButton!
    @IBOutlet weak var New_arrivals_btn: UIButton!
    @IBOutlet weak var Back_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Saleup_btn(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func New_arrivals_btn(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: false)
    }
}

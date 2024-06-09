//
//  Chair01VC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 06/02/24.
//

import UIKit

class Chair01VC: UIViewController {
    
    @IBOutlet weak var AddToCartBtn: UIButton!
    @IBOutlet weak var ChairColour01: UIButton!
    @IBOutlet weak var ChairColour02: UIButton!
    @IBOutlet weak var ChairColour03: UIButton!
    @IBOutlet weak var ChairColour04: UIButton!
    @IBOutlet weak var ChairColour05: UIButton!
    @IBOutlet weak var ChairColour06: UIButton!
    @IBOutlet weak var Back_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ChairColour02(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "Chair02VC")
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func ChairColour03(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "Chair03VC")
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func ChairColour04(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "Chair04VC")
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func ChairColour05(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "Chair05VC")
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func ChairColour06(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "Chair06VC")
        
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func AddToCartBtn(_ sender: UIButton) {
        
        navigateScreen(NameOfStoryboard: "ShoppingCart", identifier: "ShoppingCart01", vc: self)
    }
    
}

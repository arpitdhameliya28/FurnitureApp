//
//  Chair06VC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 06/02/24.
//

import UIKit

class Chair06VC: UIViewController {
    
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
    
    @IBAction func ChairColour01(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "Chair01VC")
        
        self.navigationController?.pushViewController(vc, animated: false)
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
    
    @IBAction func Back_btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: false)
        
    }

}

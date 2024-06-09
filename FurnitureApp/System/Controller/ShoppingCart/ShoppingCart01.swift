//
//  ShoppingCart01.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 01/03/24.
//

import UIKit

class ShoppingCart01: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var Checkout: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.register(UINib(nibName: "ShoppingCartCell01", bundle: nil), forCellReuseIdentifier: "ShoppingCartCell01")
    }
    
    
    @IBAction func BackBtn(_ sender: UIButton) {
        popVC(vc: self)
    }
    
    
    @IBAction func Checkout(_ sender: UIButton) {
        
        navigateScreen(NameOfStoryboard: "PaymentMethod", identifier: "Pay_choiceVC", vc: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCartCell01") as! ShoppingCartCell01
        
        //        Cell.WoodenChair.tag = indexPath.row
        //        Cell.WoodenChair.addTarget(self, action: #selector(WoodenChair(_:)), for: .touchDown)
        //
        //        Cell.SteelChair.tag = indexPath.row
        //        Cell.SteelChair.addTarget(self, action: #selector(SteelChair(_:)), for: .touchDown)
        //
        //        Cell.SoftChair.tag = indexPath.row
        //        Cell.SoftChair.addTarget(self, action: #selector(SoftChair(_:)), for: .touchDown)
        //
        //        Cell.WoodenTable.tag = indexPath.row
        //        Cell.WoodenTable.addTarget(self, action: #selector(WoodenTable(_:)), for: .touchDown)
        
        return Cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 470
    }
    
    //    @objc func WoodenChair(_ sender: UIButton) {
    //        navigateScreen (NameOfStoryboard: "Home", identifier: "Chair01VC", vc: self)
    //    }
    //    @objc func SteelChair(_ sender: UIButton) {
    //        navigateScreen (NameOfStoryboard: "Home", identifier: "Steel_ChairVC", vc: self)
    //    }
    //    @objc func SoftChair(_ sender: UIButton) {
    //        navigateScreen (NameOfStoryboard: "Home", identifier: "Soft_Chair01VC", vc: self)
    //    }
    //    @objc func WoodenTable(_ sender: UIButton) {
    //        navigateScreen(NameOfStoryboard: "Home", identifier: "Soft_Chair02VC", vc: self)
    //    }
    
}

//
//  HomeVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 05/02/24.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var MyAccount: UIButton!
    @IBOutlet weak var ChatBtn: UIButton!
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.register(UINib(nibName: "HomeVC01Cell", bundle: nil), forCellReuseIdentifier: "HomeVC01Cell")
        self.TableView.register(UINib(nibName: "HomeVC02Cell", bundle: nil), forCellReuseIdentifier: "HomeVC02Cell")
        self.TableView.register(UINib(nibName: "HomeVC03Cell", bundle: nil), forCellReuseIdentifier: "HomeVC03Cell")
        self.TableView.register(UINib(nibName: "HomeVC04Cell", bundle: nil), forCellReuseIdentifier: "HomeVC04Cell")
        self.TableView.register(UINib(nibName: "HomeVC05Cell", bundle: nil), forCellReuseIdentifier: "HomeVC05Cell")
        
    }
    
    @IBAction func MyAccount(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "MyAccount", identifier: "My_AccountVC", vc: self)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeVC01Cell") as! HomeVC01Cell
            
            return Cell
        }
        else if indexPath.row == 1 {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeVC02Cell") as! HomeVC02Cell
            
            return Cell
        }
        else if indexPath.row == 2 {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeVC03Cell") as! HomeVC03Cell
            
            Cell.FilterBtn.tag = indexPath.row
            Cell.FilterBtn.addTarget(self, action: #selector(FilterBtn(_:)), for: .touchDown)
            
            Cell.WoodenChair.tag = indexPath.row
            Cell.WoodenChair.addTarget(self, action: #selector(WoodenChair01(_:)), for: .touchDown)
            
            Cell.SteelChair.tag = indexPath.row
            Cell.SteelChair.addTarget(self, action: #selector(SteelChair(_:)), for: .touchDown)
            
            Cell.SoftChair.tag = indexPath.row
            Cell.SoftChair.addTarget(self, action: #selector(SoftChair(_:)), for: .touchDown)
            
            return Cell
        }
        else if indexPath.row == 3 {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeVC04Cell") as! HomeVC04Cell
            
            return Cell
        }
        else  {
            
            let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeVC05Cell") as! HomeVC05Cell
            Cell.WoodenTable.tag = indexPath.row
            Cell.WoodenTable.addTarget(self, action: #selector(WoodenTable(_:)), for: .touchDown)
            
            Cell.WoodenChair.tag = indexPath.row
            Cell.WoodenChair.addTarget(self, action: #selector(WoodenChair(_:)), for: .touchDown)
            
            Cell.WoodenTabale.tag = indexPath.row
            Cell.WoodenTabale.addTarget(self, action: #selector(WoodenTabale(_:)), for: .touchDown)
            
            return Cell
        }
        

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 277
        case 1:
            return 300
        case 2:
            return 372
        case 3:
            return 277
        default:
            return 372
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Deselect the cell after selection
        switch indexPath.row {
        case 0:
            tableView.deselectRow(at: indexPath, animated: true)
        case 1:
            tableView.deselectRow(at: indexPath, animated: true)
        case 2:
            tableView.deselectRow(at: indexPath, animated: true)
        case 3:
            tableView.deselectRow(at: indexPath, animated: true)
        default:
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    
    @objc func FilterBtn(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Filter", identifier: "FilterVC", vc: self)
    }
    @objc func WoodenChair01(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Home", identifier: "Chair01VC", vc: self)
    }
    @objc func SteelChair(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Home", identifier: "Steel_ChairVC", vc: self)
    }
    @objc func SoftChair(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Home", identifier: "Soft_Chair01VC", vc: self)
    }
    @objc func WoodenTable(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "Home", identifier: "Soft_Chair02VC", vc: self)
    }
    @objc func WoodenChair(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "Home", identifier: "Wooden_Table01VC", vc: self)
    }
    @objc func WoodenTabale(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "Home", identifier: "Wodden_Table02VC", vc: self)
    }
    
    
    @IBAction func ChatBtn(_ sender: UIButton) {
        
        navigateScreen(NameOfStoryboard: "Chat", identifier: "MessageVC", vc: self)
    }
}


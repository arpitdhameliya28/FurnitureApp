//
//  FilterVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 01/02/24.
//

import UIKit


class FilterVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var Apply: UIButton!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var BackBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.register(UINib(nibName: "Filter01Cell", bundle: nil), forCellReuseIdentifier: "Filter01Cell")
        self.TableView.register(UINib(nibName: "Filter02Cell", bundle: nil), forCellReuseIdentifier: "Filter02Cell")
        self.TableView.register(UINib(nibName: "Filter03Cell", bundle: nil), forCellReuseIdentifier: "Filter03Cell")
    }
    

    @IBAction func Slider(_ sender: UISlider) {
        
        let value = sender.value
        label.text = "\(value)"
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "Filter01Cell") as! Filter01Cell
            
            return Cell
        }
        else if indexPath.row == 1 {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "Filter02Cell") as! Filter02Cell
            
            Cell.Categorise.tag = indexPath.row
            Cell.Categorise.addTarget(self, action: #selector(Categorise(_:)), for: .touchDown)
            
            return Cell
        }
        else {
            let Cell = tableView.dequeueReusableCell(withIdentifier: "Filter03Cell") as! Filter03Cell
            
            return Cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 130
        case 1:
            return 170
        default:
            return 170
            
        }
    }
    @objc func Categorise(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Filter", identifier: "CategoriseVC", vc: self)
    }
    
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
    }
    
    
    @IBAction func Apply(_ sender: UIButton) {
        navigateScreen(NameOfStoryboard: "Home", identifier: "HomeVC", vc: self)
    }
}

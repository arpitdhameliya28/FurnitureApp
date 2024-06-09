//
//  LanguageVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 25/01/24.
//

import UIKit

class LanguageVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var TableView: UITableView!
    
    var arr = ["English","Hindi","Gujarati","Panjabi","Hmong","Arabic","Igbo","Samoan","italian","Irish","Bangla","Shona","Russian","Urdu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.register(UINib(nibName: "LanguageCell", bundle: nil), forCellReuseIdentifier: "LanguageCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell") as! LanguageCell
        
        cell.lbl_Language.text = arr[indexPath.row]
        
        return cell
    }
    
    @IBAction func Back_Btn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
}

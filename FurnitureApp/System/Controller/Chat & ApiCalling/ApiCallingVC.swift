//
//  ApiCallingVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 03/02/24.
//

import UIKit
import Alamofire

struct UserData {
    
    var id = 0
    var price = 0
    var title = ""
    var descriptionn = ""
    var category = ""
    var img = ""
    
    init(dic : NSDictionary) {
        self.id = (dic["id"] as? Int) ?? 0
        self.price = (dic["price"] as? Int) ?? 0
        self.title = (dic["title"] as? String) ?? ""
        self.descriptionn = (dic["description"] as? String) ?? ""
        self.category = (dic["category"] as? String) ?? ""
        self.img = (dic["image"] as? String) ?? ""
        
    }
}

class ApiCallingVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var TableView: UITableView!
    
    var arr = [UserData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.TableView.dataSource = self
        self.TableView.delegate = self
        self.TableView.register(UINib(nibName: "ApiCallingCell", bundle: nil), forCellReuseIdentifier: "ApiCallingCell")
        
        AF.request("https://fakestoreapi.com/products",method: .get).responseJSON { data in
            
            switch data.result {
                
            case.success(let data1):
                
                if let ans = data1 as? NSArray {
                    
                    for i in ans {
                        
                        if let dic = i as? NSDictionary {
                            
                            self.arr.append(UserData(dic: dic))
                            
                        }
                    }
                    self.TableView.reloadData()
                }
            case .failure(let err):
                print(err)
            }
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ApiCallingCell") as! ApiCallingCell
        
        let index = self.arr[indexPath.row]
        
        cell.lbl_id.text = "\(index.id)"
        cell.lbl_price.text = "\(index.price)"
        cell.lbl_title.text = index.title
        cell.lbl_category.text = index.category
        cell.lbl_description.text = index.descriptionn
        
        let url = URL(string: index.img)
        
        let Image_Data = NSData(contentsOf: url!)
        
        cell.ImageView.image = UIImage(data: Image_Data! as Data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 285
    }
    

}




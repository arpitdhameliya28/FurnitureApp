//
//  MessageVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 01/02/24.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class MessageVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var ViewSearch: UIView!
    @IBOutlet weak var SearchField: UITextField!
    @IBOutlet weak var SearchImage: UIImageView!
    @IBOutlet weak var TableView: UITableView!
    
    var Imagearr = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    
    var threadModel = [chatModel]()
    var model : chatModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userdataGet()
        
        self.ViewSearch.layer.cornerRadius = 25
        self.TableView.delegate = self
        self.TableView.dataSource = self
        
    }
    
    func userdataGet() {
        
        let db = Firestore.firestore()
        let collection = db.collection("UserInfo")
        
        collection.whereField("Email", notIn: [Auth.auth().currentUser?.email ?? ""]).getDocuments { querySnapshot, error in
            
            if let err = error as? NSError {
                print(err.localizedDescription)
            }
            else {
                let arr = querySnapshot?.documents
                for i in arr! {
                    
                    self.model = chatModel(dic: i.data())
                    self.threadModel.append(self.model)
                }
                print(self.threadModel)
                self.TableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threadModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell") as! MessageCell
        
        cell.ImageView.image = UIImage(named:Imagearr[indexPath.row])
        var index = threadModel[indexPath.row]
        cell.ProfileName.text = index.email
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Chat", bundle: nil).instantiateViewController(withIdentifier: "ChatVC") as! ChatVC
        self.navigationController?.pushViewController(vc, animated: true)
        
        let index = threadModel[indexPath.row]
        vc.image_view = UIImage(named: Imagearr[indexPath.row])!
        vc.lbl_name = index.email
        vc.receverUid = index.id
        print(vc.receverUid)
        
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        popVC(vc: self)
    }
}

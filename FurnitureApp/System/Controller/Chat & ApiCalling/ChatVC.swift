//
//  ChatVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 01/02/24.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class ChatVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var Image_View: UIImageView!
    @IBOutlet weak var Lbl_Name: UILabel!
    
    @IBOutlet weak var MessageTExtFiled: UITextField!
    @IBOutlet weak var MessageTextView: UIView!
    @IBOutlet weak var SendBtn: UIButton!
    var receverUid = String()
    var image_view = UIImage()
    var lbl_name = ""
    var usermessageModel: Usermessage!
    var userchat = [Usermessage]()
    var sorteddata = [Usermessage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UsermessGet()
        scrollToBottom()
        self.Lbl_Name.text = lbl_name
        self.Image_View.image = image_view
        self.Image_View.layer.cornerRadius = self.Image_View.frame.height / 2
        MessageTextView.layer.cornerRadius = 12
        MessageTextView.layer.borderWidth = 1
        MessageTextView.layer.borderColor = UIColor.systemGray4.cgColor
        
        self.MessageTExtFiled.delegate = self
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.register(UINib(nibName: "ChatSendCell", bundle: nil), forCellReuseIdentifier: "ChatSendCell")
        self.TableView.register(UINib(nibName: "ChatReceiveCell", bundle: nil), forCellReuseIdentifier: "ChatReceiveCell")
        
        
    }
    
    @IBAction func BackBtn(_ sender: UIButton) {
        popVC(vc: self)
    }
    
    @IBAction func SendBtn(_ sender: UIButton) {
        
        if (MessageTExtFiled.text?.isEmpty == false) {
            Setusermessage(senderId: CurrentUserUid ,message: MessageTExtFiled.text!, reseiver: receverUid, realtime: Date())
        }else{
            print("no message type")
        }
        UsermessGet()
        self.TableView.reloadData()
        self.MessageTExtFiled.text = ""
        scrollToBottom()
    }
    
    func UsermessGet() {
        
        let db = Firestore.firestore()
        let collection = db.collection("Usermessage")
        
        collection.whereField(CurrentUserUid, isEqualTo: CurrentUserUid).whereField(receverUid, isEqualTo: receverUid).addSnapshotListener { querySnapshot, erro in
            
            if let error = erro as? NSError {
                print(error.localizedDescription)
            }
            else {
                let data = querySnapshot?.documents
                self.userchat.removeAll()
                for arr in data! {
                    self.usermessageModel = Usermessage(dic: arr.data())
                    self.userchat.append(self.usermessageModel)
                }
                self.TableView.reloadData()
            }
            
        }
        
    }
    
    func scrollToBottom(){
        if userchat.isEmpty == false {
            DispatchQueue.main.async {
                let indexpath = IndexPath(row: self.userchat.count - 1, section: 0)
                self.TableView.scrollToRow(at: indexpath, at: .bottom, animated: true)
            }
        }
        else {
            print("no chat")
        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        MessageTextView.layer.borderColor = UIColor.white.cgColor
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField.text!.count == 0 && string.count >= 0  {
            SendBtn.setImage(UIImage(named: "Send"), for: .normal)
        }
        else if textField.text!.count == 1 && string.count < 1{
            SendBtn.setImage(UIImage(named: "SendBtn"), for: .normal)
        }
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        userchat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var data = userchat[indexPath.row]
        if data.senderId ==  CurrentUserUid {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChatSendCell") as! ChatSendCell
            cell.MessageSend.text = data.message
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChatReceiveCell") as! ChatReceiveCell
            cell.SendMessage.text = data.message
            return cell
        }
    }
}

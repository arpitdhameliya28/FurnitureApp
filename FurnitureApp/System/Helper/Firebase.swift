//
//  Firebase.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 22/02/24.
//

import Foundation
import UIKit
import FirebaseFirestore

func setUserData(email: String, password: String, Mobile: String, name: String, id: String) {
    
    let db = Firestore.firestore()
    let collection = db.collection("UserInfo")
    collection.document(email).setData([
    
        "id" : id,
        "name" : name,
        "email" : email,
        "password" : password,
        "Mobile Number" : Mobile
    
    
    ])
}
struct chatModel {
    
    var name = ""
    var email = ""
    
    init(dic: [String : Any]) {
        self.name = dic["name"] as? String ?? ""
        self.email = dic["email"] as? String ?? ""
    }
}

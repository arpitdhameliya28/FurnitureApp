//
//  Firebase.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 22/02/24.
//

import Foundation
import UIKit
import FirebaseFirestore

func setUserLogindata (id: String , email: String , pass: String) {
    
    let db = Firestore.firestore()
    
    let coll = db.collection("UserInfo")
    coll.document(email).setData([
        "Id": id,
        "Email": email,
        "Password": pass,
    ])
    
}

func setUserData(email: String, password: String, mobile: String, name: String, id: String) {
    
    let db = Firestore.firestore()
    let collection = db.collection("UserInfo")
    collection.document(email).setData([
    
        "Id" : id,
        "Name" : name,
        "Email" : email,
        "Password" : password,
        "Mobile Number" : mobile
    
    
    ])
}

func Setusermessage (senderId: String , message: String , reseiver: String , realtime : Date) {
    
    let db = Firestore.firestore()
    
    let collection = db.collection("Usermessage")
    collection.document().setData([

        "message": message,
         CurrentUserUid: senderId,
        "sender": senderId,
        "reseiver": reseiver,
        reseiver : reseiver,
        "realtime": realtime
    ])
}










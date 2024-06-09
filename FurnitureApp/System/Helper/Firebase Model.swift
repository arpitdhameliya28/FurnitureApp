//
//  Firebase Model.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 27/02/24.
//

import Foundation


struct chatModel {
    
    var name = ""
    var email = ""
    var id = ""
    
    init(dic: [String : Any]) {
        self.name = dic["Name"] as? String ?? ""
        self.email = dic["Email"] as? String ?? ""
        self.id = dic["Id"] as? String ?? ""
    }
}

struct Usermessage {
    
    var message = ""
    var senderId = ""
    var reseiverId = ""
    var realtime: Date
    init(dic: [String:Any]) {
        self.message = dic["message"] as? String ?? ""
        self.senderId = dic["sender"] as? String ?? ""
        self.reseiverId = dic["reseiver"] as? String ?? ""
        self.realtime = dic["realtime"] as? Date ?? Date()
    }
    
}

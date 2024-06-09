//
//  ChatSendCell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 15/02/24.
//

import UIKit

class ChatSendCell: UITableViewCell {

    
    @IBOutlet weak var MessageSend: UILabel!
    @IBOutlet weak var ImageSend: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

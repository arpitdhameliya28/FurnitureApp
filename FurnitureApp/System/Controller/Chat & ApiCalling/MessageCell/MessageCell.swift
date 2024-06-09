//
//  MessageCell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 01/02/24.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var ProfileName: UILabel!
    
    @IBOutlet weak var Message: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.ImageView.layer.cornerRadius = self.ImageView.frame.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  ApiCallingCell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 12/02/24.
//

import UIKit

class ApiCallingCell: UITableViewCell {
    
    @IBOutlet weak var lbl_id: UILabel!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_price: UILabel!
    @IBOutlet weak var lbl_description: UILabel!
    @IBOutlet weak var lbl_category: UILabel!
    @IBOutlet weak var ImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

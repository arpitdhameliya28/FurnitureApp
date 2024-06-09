//
//  DecorationCell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 16/02/24.
//

import UIKit

class DecorationCell: UICollectionViewCell {

    @IBOutlet weak var View: UIView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var lbl_Rupees: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.View.layer.cornerRadius = 20
    }

    
    
    
}

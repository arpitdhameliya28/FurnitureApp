//
//  CategoriseCell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 14/02/24.
//

import UIKit

class CategoriseCell: UICollectionViewCell {

    @IBOutlet weak var View: UIView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var lbl_Item: UILabel!
    @IBOutlet weak var Next_Btn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.View.layer.cornerRadius = 20
        
    }

}

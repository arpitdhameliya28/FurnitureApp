//
//  HomeDiscoverCell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 15/02/24.
//

import UIKit

class HomeDiscoverCell: UICollectionViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var lbl_Item: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.ImageView.layer.cornerRadius = 15
    }

}

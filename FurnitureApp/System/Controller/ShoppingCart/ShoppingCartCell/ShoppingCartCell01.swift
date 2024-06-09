//
//  ShoppingCartCell01.swift
//  FurnitureApp
//
//  Created by Arpit Dhameliya on 01/03/24.
//

import UIKit

class ShoppingCartCell01: UITableViewCell {
    
    @IBOutlet weak var View01: UIView!
    @IBOutlet weak var View02: UIView!
    @IBOutlet weak var View03: UIView!
    @IBOutlet weak var View04: UIView!
    
    @IBOutlet weak var WoodenChair: UIButton!
    @IBOutlet weak var SteelChair: UIButton!
    @IBOutlet weak var SoftChair: UIButton!
    @IBOutlet weak var WoodenTable: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        self.View01.layer.cornerRadius = 20
        self.View02.layer.cornerRadius = 20
        self.View03.layer.cornerRadius = 20
        self.View04.layer.cornerRadius = 20
        
    }
    
}

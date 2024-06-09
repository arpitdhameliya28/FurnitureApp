//
//  HomeVC05Cell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 19/02/24.
//

import UIKit

class HomeVC05Cell: UITableViewCell {

    @IBOutlet weak var SeeAll: UIButton!
    @IBOutlet weak var View04: UIView!
    @IBOutlet weak var View05: UIView!
    @IBOutlet weak var View06: UIView!
    @IBOutlet weak var WoodenTable: UIButton!
    
    @IBOutlet weak var WoodenChair: UIButton!
    
    @IBOutlet weak var WoodenTabale: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        self.View04.layer.cornerRadius = 20
        self.View05.layer.cornerRadius = 20
        self.View06.layer.cornerRadius = 20
    }
    
}

//
//  HomeVC02Cell.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 15/02/24.
//

import UIKit

class HomeVC02Cell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var Imagearr = ["Chair","Table","Sofa"]
    var Namearr = ["Chair","Table","Sofa"]
    var Itemarr = ["1125 Item","965 Item","2125 Item"]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.CollectionView.delegate = self
        self.CollectionView.dataSource = self
        self.CollectionView.register(UINib(nibName: "HomeDiscoverCell", bundle: nil), forCellWithReuseIdentifier: "HomeDiscoverCell")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Imagearr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeDiscoverCell", for: indexPath) as! HomeDiscoverCell
        
        cell.ImageView.image = UIImage(named: Imagearr[indexPath.row])
        cell.lbl_Name.text = Namearr[indexPath.row]
        cell.lbl_Item.text = Itemarr[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 159, height: 235)
    }
    
    
    
}

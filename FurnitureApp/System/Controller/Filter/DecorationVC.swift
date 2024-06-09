//
//  DecorationVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 16/02/24.
//

import UIKit

class DecorationVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    

    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var Imagearr = ["GreenChair","Jumar","TableSimple","khursi","TableSimple","khursi"]
    var Namearr = ["Soft green chair","Morden lamp","wooden table","Soft chair","wooden table","Soft chair"]
    var Rupeesarr = ["$ 23.12","$ 51.12","$ 25.12","$ 59.12","$ 25.12","$ 59.12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.CollectionView.delegate = self
        self.CollectionView.dataSource = self
        self.CollectionView.register(UINib(nibName: "DecorationCell", bundle: nil), forCellWithReuseIdentifier: "DecorationCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Imagearr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DecorationCell", for: indexPath) as! DecorationCell
        
        Cell.ImageView.image = UIImage(named: Imagearr[indexPath.row])
        Cell.lbl_Name.text = Namearr[indexPath.row]
        Cell.lbl_Rupees.text = Rupeesarr[indexPath.row]
        
        return Cell
    }
   
    @IBAction func BackBtn(_ sender: UIButton) {
        popVC(vc: self)
    }
    
}

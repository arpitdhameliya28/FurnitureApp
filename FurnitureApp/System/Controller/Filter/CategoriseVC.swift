//
//  CategoriseVC.swift
//  Furniture
//
//  Created by Arpit Dhameliya on 14/02/24.
//

import UIKit

class CategoriseVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var BackBtn: UIButton!
    var Imagearr = ["Image 23","chairSimple","sofo","Image 26","Image 27","Image 28"]
    
    var Namearr = ["Decoration","Chair","Sofa","Lamp","Table","Badsite Table"]
    
    var Itemarr = ["1541 Item","1125 Item","2125 Item","1500 Item","965 Item","1355 Item"]

    

    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.CollectionView.dataSource = self
        self.CollectionView.delegate = self
        self.CollectionView.register(UINib(nibName: "CategoriseCell", bundle: nil), forCellWithReuseIdentifier: "CategoriseCell")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Imagearr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 333, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriseCell", for: indexPath) as! CategoriseCell
        
        cell.ImageView.image = UIImage(named: Imagearr[indexPath.row])
        cell.lbl_Name.text = Namearr[indexPath.row]
        cell.lbl_Item.text = Itemarr[indexPath.row]
        cell.Next_Btn.tag = indexPath.row
        cell.Next_Btn.addTarget(self, action: #selector(Next_Btn(_:)), for: .touchDown)
        
        return cell
    }
    @objc func Next_Btn(_ sender: UIButton) {
        navigateScreen (NameOfStoryboard: "Filter", identifier: "DecorationVC", vc: self)
    }

    @IBAction func BackBtn(_ sender: UIButton) {
        popVC(vc: self)
    }
}

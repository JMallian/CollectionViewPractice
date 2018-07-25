//
//  DataThingCollectionViewController.swift
//  CollectionViewPractice
//
//  Created by Jessica Mallian on 7/23/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import UIKit

class DataThingCollectionViewController: UICollectionViewController {
    
    @IBOutlet var flowLayout: UICollectionViewFlowLayout!
    
    var data: [MyDataThing] {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.shirleyArr
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
        let dimension = (view.frame.size.width - (2*space)) / 3.0 //3 items per row
        
        //set spacing between items
        flowLayout.minimumInteritemSpacing = space
        //set spacing between rows
        flowLayout.minimumLineSpacing = space
        //set size of items, which are dependent on the size of the main view
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! DataThingCollectionCell
        
        cell.pic?.image = UIImage(named: data[indexPath.row].image)
        cell.label1?.text = data[indexPath.row].line1
        cell.label1?.textColor = .yellow
        cell.label2?.text = data[indexPath.row].line2
        cell.label2?.textColor = .yellow 
        
        return cell        
    }
    
}

class DataThingCollectionCell: UICollectionViewCell {
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var pic: UIImageView!
}

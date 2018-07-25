//
//  DataThingCollectionViewController.swift
//  CollectionViewPractice
//
//  Created by Jessica Mallian on 7/23/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import UIKit

class DataThingCollectionViewController: UICollectionViewController {
    
    var data: [MyDataThing] {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.shirleyArr
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! DataThingCollectionCell
        
        cell.label1?.text = data[indexPath.row].line1
        cell.label2?.text = data[indexPath.row].line2
        cell.pic?.image = UIImage(named: data[indexPath.row].image)
        
        return cell        
    }
    
}

class DataThingCollectionCell: UICollectionViewCell {
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var pic: UIImageView!
}

//
//  DataThingTableViewController.swift
//  CollectionViewPractice
//
//  Created by Jessica Mallian on 7/23/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import UIKit

class DataThingTableViewController: UITableViewController {

    var data: [MyDataThing] {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.shirleyArr
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! DataThingTableCell
        
        cell.label1?.text = data[indexPath.row].line1
        cell.label2?.text = data[indexPath.row].line2
        cell.pic?.image = UIImage(named: data[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}

class DataThingTableCell: UITableViewCell {
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var pic: UIImageView! 
}

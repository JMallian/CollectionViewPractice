//
//  DataThingTableViewController.swift
//  CollectionViewPractice
//
//  Created by Jessica Mallian on 7/23/18.
//  Copyright © 2018 Jessica Mallian. All rights reserved.
//

import UIKit

class DataThingTableViewController: UITableViewController {
    //need to make custom cell
    
    
    var data: [MyDataThing] {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.shirleyArr
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

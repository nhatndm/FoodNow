//
//  TableViewController.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

  var tableViewStyle: TableViewStyle?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Init Style
    self.tableViewStyle = TableViewStyle(tableView: self.view)
  }
}

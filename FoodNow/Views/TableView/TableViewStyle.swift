//
//  TableViewStyle.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

class TableViewStyle {
  let tableView: UIView
  
  init(tableView: UIView) {
    self.tableView = tableView
    
    // Init Style
    setMainStyle()
  }
  
  // Style Table View
  private func setMainStyle() {
    tableView.backgroundColor = Color.WHITE
  }
}


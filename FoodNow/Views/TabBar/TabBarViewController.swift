//
//  TabBarViewController.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
  let tableViewCtrl: TableViewController = {
    let innerView = TableViewController()
    innerView.title = "Table View"

    return innerView
  }()

  let scrollViewCtrl: ScrollViewController = {
    let innerView = ScrollViewController()
    innerView.title = "Scroll View"

    return innerView
  }()

  let stackViewCtrl: StackViewController = {
    let innerView = StackViewController()
    innerView.title = "Stack View"

    return innerView
  }()

  override func viewDidLoad() {
    super.viewDidLoad()

    // Set TabBar Item
    viewControllers = [tableViewCtrl, scrollViewCtrl, stackViewCtrl]
  }
}

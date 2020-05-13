//
//  ScrollViewController.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

  var scrollViewStyle: ScrollViewStyle?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Init Style
    self.scrollViewStyle = ScrollViewStyle(scrollView: self.view)
  }
}

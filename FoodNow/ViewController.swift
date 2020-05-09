//
//  ViewController.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 9/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var viewControllerStyle: ViewControllerStyle?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Initial Styling
    self.viewControllerStyle = ViewControllerStyle(parentView: view)
  }
}


//
//  StackViewController.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

  var stackViewStyle: StackViewStyle?
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Init Style
    self.stackViewStyle = StackViewStyle(stackView: self.view)
  }
}

//
//  StackViewStyle.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

class StackViewStyle {
  let stackView: UIView
  
  init(stackView: UIView) {
    self.stackView = stackView
    
    // Init Style
    setMainStyle()
  }
  
  // Style Stack View
  private func setMainStyle() {
    stackView.backgroundColor = Color.WHITE
  }
}


//
//  ScrollViewStyle.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 13/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import Foundation
import UIKit

class ScrollViewStyle {
  let scrollView: UIView
  
  init(scrollView: UIView) {
    self.scrollView = scrollView
    
    // Init Style
    setMainStyle()
  }
  
  // Style Scroll View
  private func setMainStyle() {
    scrollView.backgroundColor = Color.WHITE
  }
}

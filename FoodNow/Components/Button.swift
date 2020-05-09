//
//  Button.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 9/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//
import UIKit

class CustomButton: UIButton {
  var _DEFAULT_BTN_HEIGHT = CGFloat(30)
  var _DEFAULT_BTN_WIDTH = CGFloat(200)
  var _DEFAULT_BTN_CORNERRADIUS = CGFloat(15)
  var _DEFAILT_BTN_BORDERWIDTH = CGFloat(1)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupButton()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupButton()
  }
  
  func setupButton(){
  // Set Defaul value
    setDefaultButton()
  }
  
  func setDefaultButton(){
    translatesAutoresizingMaskIntoConstraints = false
    layer.cornerRadius = _DEFAULT_BTN_CORNERRADIUS
    backgroundColor = UIColor.gray
    setTitle("Button", for: .normal)
    setTitleColor(UIColor.black, for: .normal)
    titleLabel!.font = UIFont.systemFont(ofSize: CGFloat(16))
  }
  
  func setPrimaryButton(){
    backgroundColor = Color.PRIMARY
    setTitleColor(UIColor.white, for: .normal)
  }
  
  func setTransparentButton() {
    backgroundColor = Color.WHITE
  }
}

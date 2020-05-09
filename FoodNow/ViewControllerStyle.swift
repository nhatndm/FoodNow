//
//  ViewControllerStyle.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 9/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class ViewControllerStyle {
  var btnLogin = CustomButton()
  var headerView = UIView()
  var authenticationView = UIView()
  var parentView: UIView
  
  init(parentView: UIView) {
    self.parentView = parentView
    
    // Header View
    headerImag()
    
    // Authentication Container
    authenticationContainer()
  }
      
  func headerImag() {
    let headerImage = UIImageView(image: UIImage(named: "bgLoginHeader.jpg"))
    
    self.parentView.addSubview(headerImage)
    
    headerImage.translatesAutoresizingMaskIntoConstraints = false
    headerImage.topAnchor.constraint(equalTo: self.parentView.topAnchor).isActive = true
    headerImage.leadingAnchor.constraint(equalTo: self.parentView.leadingAnchor).isActive = true
    headerImage.trailingAnchor.constraint(equalTo: self.parentView.trailingAnchor).isActive = true
    headerImage.heightAnchor.constraint(equalTo: self.parentView.heightAnchor, multiplier: 1/2).isActive = true
    
  }
  
  func authenticationContainer() {
    self.parentView.addSubview(authenticationView)
       
     // Layout Authentication View
    authenticationView.translatesAutoresizingMaskIntoConstraints = false
    authenticationView.bottomAnchor.constraint(equalTo: self.parentView.bottomAnchor).isActive = true
    authenticationView.leadingAnchor.constraint(equalTo: self.parentView.leadingAnchor).isActive = true
    authenticationView.trailingAnchor.constraint(equalTo: self.parentView.trailingAnchor).isActive = true
    authenticationView.heightAnchor.constraint(equalTo: self.parentView.heightAnchor, multiplier: 2/3).isActive = true
    authenticationView.layer.cornerRadius = 16
    authenticationView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    authenticationView.backgroundColor = Color.WHITE
    
    // Add Login Button to authenticate group
    styleBtnLogin()
  }
  
  func styleBtnLogin(){
    authenticationView.addSubview(btnLogin)
    
    btnLogin.setPrimaryButton()

    btnLogin.setTitle("Login", for: .normal)
    btnLogin.layer.cornerRadius = CGFloat(24)

    // Layout btn
    btnLogin.heightAnchor.constraint(equalToConstant: 48).isActive = true
    btnLogin.trailingAnchor.constraint(equalTo: authenticationView.trailingAnchor, constant: -32).isActive = true
    btnLogin.leadingAnchor.constraint(equalTo: authenticationView.leadingAnchor, constant: 32).isActive = true
    btnLogin.bottomAnchor.constraint(equalTo: authenticationView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
  }
}

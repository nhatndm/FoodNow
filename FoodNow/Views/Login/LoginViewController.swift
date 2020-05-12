//
//  LoginController.swift
//  FoodNow
//
//  Created by Nhat Nguyen on 9/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  var loginStyle: LoginStyle?
  
  // Button group in authentication content
  var btnLogin = CustomButton()
  var btnForgotPassword = CustomButton()
  var btnSignup = CustomButton()
  
  // Input group in authentication content
  let inputPassword = CustomInput()
  let inputEmail = CustomInput()

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Initial Styling
    self.loginStyle = LoginStyle(
      parentView: view,
      inputPassword: inputPassword,
      inputEmail: inputEmail,
      btnLogin: btnLogin,
      btnForgotPassword: btnForgotPassword,
      btnSignup: btnSignup
    )
  }
}


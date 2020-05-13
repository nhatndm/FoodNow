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
    
    // SETUP EVENT
    mapButtonToFn()
  }
  
  private func mapButtonToFn(){
    btnLogin.addTarget(self, action: #selector(handleLoginBtn), for: UIControl.Event.touchDown)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: animated)
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.setNavigationBarHidden(false, animated: animated)
  }
  
  @objc private func handleLoginBtn(){
    let email = inputEmail.text!
    let password = inputPassword.text!
    
    if (email == "test" && password == "test") {
      let tabBarViewController = TabBarViewController()

      self.view.window?.rootViewController = tabBarViewController
      self.view.window?.makeKeyAndVisible()
    }
  }
}


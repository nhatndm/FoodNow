//
//  LoginStyle.swift
//  FoodNow
//
//  Style Definination for login controller
//  Created by Nhat Nguyen on 9/5/20.
//  Copyright © 2020 Nhat Nguyen. All rights reserved.
//

import UIKit

class LoginStyle {
  var headerView = UIView()
  
  // Authentication Wrapper
  var authenticationView = UIView()
  var authenticationContentView = UIView()
  
  // Label group in authentication content
  let welcomeBackText = UITextView()
  let loginToYourAccount = UITextView()
  
  // Input group in authentication content
  let inputPassword: CustomInput
  let inputEmail: CustomInput

  // Button group in authentication content
  var btnLogin: CustomButton
  var btnForgotPassword: CustomButton
  var btnSignup: CustomButton
  
  // Parent view
  var parentView: UIView
  
  // Defaul value
  let DEFAULT_HEIGHT = CGFloat(48)
  
  init(
    parentView: UIView,
    inputPassword: CustomInput,
    inputEmail: CustomInput,
    btnLogin: CustomButton,
    btnForgotPassword: CustomButton,
    btnSignup: CustomButton
  ) {
    
    // Inital Component
    self.parentView = parentView
    self.inputPassword = inputPassword
    self.inputEmail = inputEmail
    self.btnLogin = btnLogin
    self.btnForgotPassword = btnForgotPassword
    self.btnSignup = btnSignup
    
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
    // Layout Authentication View
    self.parentView.addSubview(authenticationView)

    authenticationView.translatesAutoresizingMaskIntoConstraints = false
    authenticationView.bottomAnchor.constraint(equalTo: self.parentView.bottomAnchor).isActive = true
    authenticationView.leadingAnchor.constraint(equalTo: self.parentView.leadingAnchor).isActive = true
    authenticationView.trailingAnchor.constraint(equalTo: self.parentView.trailingAnchor).isActive = true
    authenticationView.heightAnchor.constraint(equalTo: self.parentView.heightAnchor, multiplier: 2/3).isActive = true
    authenticationView.layer.cornerRadius = 16
    authenticationView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    authenticationView.backgroundColor = Color.WHITE
    
    // Set Layout For Authentication Content
    authenticationView.addSubview(authenticationContentView)
    
    authenticationContentView.translatesAutoresizingMaskIntoConstraints = false
    authenticationContentView.topAnchor.constraint(equalTo: authenticationView.topAnchor).isActive = true
    authenticationContentView.bottomAnchor.constraint(equalTo: authenticationView.bottomAnchor).isActive = true
    authenticationContentView.leadingAnchor.constraint(equalTo: authenticationView.leadingAnchor, constant: 30).isActive = true
    authenticationContentView.trailingAnchor.constraint(equalTo: authenticationView.trailingAnchor, constant: -30).isActive = true
    
    // Set label group
    styleLabelGroup()
    
    // Email Password
    inputWrapper()
    
    // Add Login Button to authenticate group
    styleBtnLogin()
    styleBtnForgotPassword()
    styleBtnSignUpPassword()
  }
  
  func styleLabelGroup() {
    // Set Layout for Welcome label
    authenticationContentView.addSubview(welcomeBackText)
  
    welcomeBackText.text = "Welcome back"
    welcomeBackText.font = UIFont.boldSystemFont(ofSize: 35)
    welcomeBackText.textColor = Color.DARK_BLUE
    welcomeBackText.translatesAutoresizingMaskIntoConstraints = false
    welcomeBackText.textAlignment = .center
    welcomeBackText.topAnchor.constraint(equalTo: authenticationContentView.topAnchor, constant: 30).isActive = true
    welcomeBackText.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    welcomeBackText.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    welcomeBackText.isEditable = false
    welcomeBackText.isScrollEnabled = false
    
    // Login to your account
    authenticationContentView.addSubview(loginToYourAccount)
    
    loginToYourAccount.text = "Login to your account"
    loginToYourAccount.font = UIFont.systemFont(ofSize: 18)
    loginToYourAccount.textColor = Color.LIGHT_GRAY
    loginToYourAccount.translatesAutoresizingMaskIntoConstraints = false
    loginToYourAccount.textAlignment = .center
    loginToYourAccount.topAnchor.constraint(equalTo: welcomeBackText.bottomAnchor, constant: -10).isActive = true
    loginToYourAccount.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    loginToYourAccount.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    loginToYourAccount.isEditable = false
    loginToYourAccount.isScrollEnabled = false
  }
  
  func inputWrapper() {
    // set Layout for email input
    authenticationContentView.addSubview(inputEmail)
    
    inputEmail.placeholder = "Email"
    inputEmail.backgroundColor = Color.SUPER_LIGHT_GRAY
    inputEmail.layer.cornerRadius = CGFloat(24)
    
    // Set autolayout for input email
    inputEmail.translatesAutoresizingMaskIntoConstraints = false
    inputEmail.topAnchor.constraint(equalTo: loginToYourAccount.bottomAnchor, constant: 35).isActive = true
    inputEmail.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    inputEmail.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    inputEmail.heightAnchor.constraint(equalToConstant: DEFAULT_HEIGHT).isActive = true
    
    
    // set Layout for password input
    authenticationContentView.addSubview(inputPassword)
    
    inputPassword.placeholder = "Password"
    inputPassword.backgroundColor = Color.SUPER_LIGHT_GRAY
    inputPassword.layer.cornerRadius = CGFloat(24)
    inputPassword.isSecureTextEntry = true
    
    // Set autolayout for input password
    inputPassword.translatesAutoresizingMaskIntoConstraints = false
    inputPassword.topAnchor.constraint(equalTo: inputEmail.bottomAnchor, constant: 10).isActive = true
    inputPassword.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    inputPassword.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    inputPassword.heightAnchor.constraint(equalToConstant: DEFAULT_HEIGHT).isActive = true
  }
  
  func styleBtnLogin(){
    authenticationContentView.addSubview(btnLogin)
    
    btnLogin.setPrimaryButton()

    btnLogin.setTitle("Login", for: .normal)
    btnLogin.layer.cornerRadius = CGFloat(24)
    btnLogin.titleLabel!.font = UIFont.systemFont(ofSize: 18)

    // Layout btn
    btnLogin.topAnchor.constraint(equalTo: inputPassword.bottomAnchor, constant: 35).isActive = true
    btnLogin.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    btnLogin.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    btnLogin.heightAnchor.constraint(equalToConstant: DEFAULT_HEIGHT).isActive = true
  }
  
  func styleBtnForgotPassword() {
    authenticationContentView.addSubview(btnForgotPassword)
    
    btnForgotPassword.setTransparentButton()

    btnForgotPassword.setTitle("Forgot your password?", for: .normal)
    btnForgotPassword.titleLabel!.font = UIFont.systemFont(ofSize: 18)
    
    // Layout btn
    btnForgotPassword.topAnchor.constraint(equalTo: btnLogin.bottomAnchor, constant: 10).isActive = true
    btnForgotPassword.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    btnForgotPassword.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    btnForgotPassword.heightAnchor.constraint(equalToConstant: DEFAULT_HEIGHT).isActive = true
  }
  
  func styleBtnSignUpPassword() {
    authenticationContentView.addSubview(btnSignup)
    
    btnSignup.setTransparentButton()

    btnSignup.setTitle("Don't have an account? Sign up", for: .normal)
    btnSignup.titleLabel!.font = UIFont.systemFont(ofSize: 18)

    // Layout btn
    btnSignup.trailingAnchor.constraint(equalTo: authenticationContentView.trailingAnchor).isActive = true
    btnSignup.leadingAnchor.constraint(equalTo: authenticationContentView.leadingAnchor).isActive = true
    btnSignup.bottomAnchor.constraint(equalTo: authenticationContentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
    btnSignup.heightAnchor.constraint(equalToConstant: DEFAULT_HEIGHT).isActive = true
  }
}

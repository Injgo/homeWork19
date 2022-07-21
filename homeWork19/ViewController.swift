//
//  ViewController.swift
//  homeWork19
//
//  Created by Dato on 21.07.22.
//

import UIKit

class ViewController: UIViewController {

    private let loginTitleLabel: UILabel = {
        let label =  UILabel()
        label.numberOfLines = 0
        label.text = "iOS App Tamplates"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30, weight: .medium)
        
        label.layer.shadowOffset = CGSize(width: 3, height: 3)
        label.layer.shadowOpacity = 0.8
        label.layer.shadowRadius = 4
        label.layer.shadowColor = UIColor.black.cgColor
        
        
        return label
    }()
    
    
    private let logoImageView : UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(systemName: "airplane.departure")
        logo.contentMode = .scaleAspectFit
        logo.tintColor = .white
        logo.applyGradient(colours: [.purple, .blue])
        
        logo.layer.shadowOffset = CGSize(width: 5, height: 5)
        logo.layer.shadowOpacity = 0.5
        logo.layer.shadowRadius = 10
        logo.layer.shadowColor = UIColor.black.cgColor
        
        return logo
    }()
    
    
    
    private let loginTextField: UITextField = {
        let logintxt = UITextField()
        logintxt.backgroundColor = .white
        logintxt.placeholder = "Email"
        logintxt.textContentType = .emailAddress
        logintxt.textAlignment = .left
        logintxt.layer.cornerRadius = 18
        
        logintxt.layer.shadowOffset = CGSize(width: 5, height: 5)
        logintxt.layer.shadowOpacity = 0.5
        logintxt.layer.shadowRadius = 10
        logintxt.layer.shadowColor = UIColor.black.cgColor
        
        return logintxt
    }()
    
    private let passwordTextField: UITextField = {
        let passwordtxt = UITextField()
        passwordtxt.backgroundColor = .white
        passwordtxt.placeholder = "Password"
        passwordtxt.textContentType = .password
        passwordtxt.textAlignment = .left
        passwordtxt.layer.cornerRadius = 18
        
        passwordtxt.layer.shadowOffset = CGSize(width: 5, height: 5)
        passwordtxt.layer.shadowOpacity = 0.5
        passwordtxt.layer.shadowRadius = 10
        passwordtxt.layer.shadowColor = UIColor.black.cgColor
        
        return passwordtxt
    }()
    
    
    private let signUpButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitle("Sign In ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.applyGradient(colours: [.purple, .blue], locations: [0.0, 1.0])
        view.addSubview(loginTitleLabel)
        view.addSubview(logoImageView)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signUpButton)
        loginTitleLabelConstraints()
        logoImageViewConstraints()
        loginTextFieldConstraint()
        passwordTextFieldConstraint()
        signUpButtonConstraints()
        
    }

    

// ამ კონფიგურაციას უფრო გამოვიყენებდი :)
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        loginTitleLabel.frame = CGRect(x: 30, y: 30, width: view.width-60, height: 150)
//        logoImageView.frame = CGRect(x: (view.width-200)/2, y: loginTitleLabel.bottom+30, width: 200, height: 200)
//        loginTextField.frame = CGRect(x: 30, y: logoImageView.bottom+50, width: view.width-60, height: 50)
//        passwordTextField.frame = CGRect(x: 30, y: loginTextField.bottom+15, width: view.width-60, height: 50)
//        signUpButton.frame = CGRect(x: 50, y: passwordTextField.bottom+50, width: view.width-100, height: 45)
//
//    }
    
    
    func loginTitleLabelConstraints() {
        loginTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        let top = NSLayoutConstraint(item: loginTitleLabel,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: view.safeAreaLayoutGuide,
                                     attribute: .top,
                                     multiplier: 1,
                                     constant: 30).isActive = true
        
        let left = NSLayoutConstraint(item: loginTitleLabel,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 30).isActive = true
        
        let right = NSLayoutConstraint(item: loginTitleLabel,
                                       attribute: .right,
                                       relatedBy: .equal,
                                       toItem: view.safeAreaLayoutGuide,
                                       attribute: .right,
                                       multiplier: 1,
                                       constant: -30).isActive = true
        
        
        let height = NSLayoutConstraint(item: loginTitleLabel,
                                       attribute: .height,
                                       relatedBy: .equal,
                                       toItem: nil,
                                       attribute: .notAnAttribute,
                                       multiplier: 1,
                                        constant: 50).isActive = true
        
    
    }
    
    func logoImageViewConstraints(){
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let screenWidth = view.frame.width
        logoImageView.layer.borderWidth = 2
        logoImageView.layer.cornerRadius = screenWidth/3
        logoImageView.layer.borderColor = UIColor.white.cgColor
        
        let top = NSLayoutConstraint(item: logoImageView,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: loginTitleLabel,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 30).isActive = true
        
        let left = NSLayoutConstraint(item: logoImageView,
                                      attribute: .left,
                                      relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                      attribute: .left,
                                      multiplier: 1,
                                      constant: 60).isActive = true
        
        let right = NSLayoutConstraint(item: logoImageView,
                                       attribute: .right,
                                       relatedBy: .equal,
                                       toItem: view.safeAreaLayoutGuide,
                                       attribute: .right,
                                       multiplier: 1,
                                       constant: -60).isActive = true
        
        let width = NSLayoutConstraint(item: logoImageView,
                                       attribute: .width,
                                       relatedBy: .equal,
                                       toItem: nil,
                                       attribute: .notAnAttribute,
                                       multiplier: 1,
                                       constant: screenWidth/3).isActive = true
        
        
        
        let aspectRatio = NSLayoutConstraint(item: logoImageView,
                                             attribute: .height,
                                             relatedBy: .equal,
                                             toItem: logoImageView,
                                             attribute: .width,
                                             multiplier: 1,
                                             constant: 0).isActive = true
        
        
    }
    
    func loginTextFieldConstraint(){
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        
    

        let top = NSLayoutConstraint(item: loginTextField,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: logoImageView,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 30).isActive = true
        
        let left = NSLayoutConstraint(item: loginTextField,
                                      attribute: .left,
                                     relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                     attribute: .left,
                                     multiplier: 1,
                                     constant: 30).isActive = true
        
        let right = NSLayoutConstraint(item: loginTextField,
                                      attribute: .right,
                                     relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                     attribute: .right,
                                     multiplier: 1,
                                     constant: -30).isActive = true
        
        let height = NSLayoutConstraint(item: loginTextField,
                                      attribute: .height,
                                     relatedBy: .equal,
                                    toItem: nil,
                                     attribute: .notAnAttribute,
                                     multiplier: 1,
                                     constant: 50).isActive = true
        
    }
    
    func passwordTextFieldConstraint() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        
        let top = NSLayoutConstraint(item: passwordTextField,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: loginTextField,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 15).isActive = true
        
        let left = NSLayoutConstraint(item: passwordTextField,
                                      attribute: .left,
                                     relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                     attribute: .left,
                                     multiplier: 1,
                                     constant: 30).isActive = true
        
        let right = NSLayoutConstraint(item: passwordTextField,
                                      attribute: .right,
                                     relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                     attribute: .right,
                                     multiplier: 1,
                                     constant: -30).isActive = true
        
        let height = NSLayoutConstraint(item: passwordTextField,
                                      attribute: .height,
                                     relatedBy: .equal,
                                    toItem: nil,
                                     attribute: .notAnAttribute,
                                     multiplier: 1,
                                     constant: 50).isActive = true
        
    }
    
    func signUpButtonConstraints() {
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
    
        
        let top = NSLayoutConstraint(item: signUpButton,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: passwordTextField,
                                     attribute: .bottom,
                                     multiplier: 1,
                                     constant: 50).isActive = true
        
        let left = NSLayoutConstraint(item: signUpButton,
                                      attribute: .left,
                                     relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                     attribute: .left,
                                     multiplier: 1,
                                     constant: 50).isActive = true
        
        let right = NSLayoutConstraint(item: signUpButton,
                                      attribute: .right,
                                     relatedBy: .equal,
                                      toItem: view.safeAreaLayoutGuide,
                                     attribute: .right,
                                     multiplier: 1,
                                     constant: -50).isActive = true
        
        let height = NSLayoutConstraint(item: signUpButton,
                                      attribute: .height,
                                     relatedBy: .equal,
                                    toItem: nil,
                                     attribute: .notAnAttribute,
                                     multiplier: 1,
                                     constant: 45).isActive = true
        
        
    }

}



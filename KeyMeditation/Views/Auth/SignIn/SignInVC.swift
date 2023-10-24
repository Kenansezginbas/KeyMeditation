//
//  SignInVC.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 24.10.2023.
//

import UIKit

class SignInVC: UIViewController {
    let wellComeTitle   = MdLabel(text: "Wellcome Back!", size: 28, weight: .bold)
    let email           = MdTextField(placeHolder: "Email", keyboardType: .emailAddress)
    let password        = MdTextField(placeHolder: "Password")
    let signInButton    = MdButton(title: "Sign In")
    let goSignUpButton  = MdButton(title: "Forgot Password", isBackground: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
            
    }
    
    final func configureUI() {
        configureInputs()
        configureButtons()
        configureTitle()
    }
    
 
}

#Preview {
    SignInVC()
}


extension SignInVC  {
     final func configureTitle() {
        view.addSubview(wellComeTitle)
       
        NSLayoutConstraint.activate([
          
            wellComeTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            wellComeTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            wellComeTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            wellComeTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            wellComeTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }
    
    final func configureInputs() {
        view.addSubview(email)
        view.addSubview(password)
        
        NSLayoutConstraint.activate([
            email.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            email.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            email.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 10),
            password.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }
    
    final func configureButtons() {
        view.addSubview(signInButton)
        view.addSubview(goSignUpButton)
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),
            signInButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            goSignUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10),
            goSignUpButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            goSignUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            goSignUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }
}

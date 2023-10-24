//
//  SplashVC.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 22.10.2023.
//

import UIKit

class SplashVC: UIViewController {
    
    let titleImage      = MdImageView(image: UIImage(named: "splash-title")!)
    let backgroundImage = MdImageView(image: UIImage(named: "splash-background")!)
    let foregroundImage = MdImageView(image: UIImage(named: "splash-foreground")!)
    let headerTitle     = MdLabel(text: "We are what we do", size: 30, weight: .bold)
    let subTitle        = MdLabel(text: "Thousand of people are usign silent moon for smalls meditation", size: 16, textColor: .systemGray2, weight: .light, numberOfLines: 2)
    let signUpButton    = MdButton(title: "SIGN UP")
    let alreadyAccount  = MdLabel(text: "Already Have An Account", size: 14, textColor: .systemGray3)
    let goSignInButton  = MdButton(title: "Login", isBackground: false)
    


    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    
    final func configureUI() {
        view.backgroundColor  = .white
        configureImages()
        configureLabels()
        configureButtons()
        configureGoLogin()
    }
}

#Preview {
    SplashVC()
}

extension SplashVC {
  
    final func configureImages() {
        view.addSubview(titleImage)
        view.addSubview(foregroundImage)
        
        NSLayoutConstraint.activate([
            titleImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130),
            titleImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -130),
            titleImage.heightAnchor.constraint(equalToConstant: 50),
            
            foregroundImage.topAnchor.constraint(equalTo: titleImage.bottomAnchor, constant: 100),
            foregroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            foregroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            foregroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
      
        ])
    }
    
    final func configureLabels() {
        view.addSubview(headerTitle)
        view.addSubview(subTitle)
        
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: foregroundImage.bottomAnchor, constant: 40),
            headerTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            headerTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            subTitle.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 20),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            subTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
        ])
    }
    
    final func configureButtons() {
        view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    final func configureGoLogin() {
        view.addSubview(alreadyAccount)
        view.addSubview(goSignInButton)
        goSignInButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goSignButtonTapped)))
        
        NSLayoutConstraint.activate([
            alreadyAccount.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            alreadyAccount.heightAnchor.constraint(equalToConstant: 50),
            alreadyAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -20),
            
            goSignInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            goSignInButton.heightAnchor.constraint(equalToConstant: 50),
            goSignInButton.leadingAnchor.constraint(equalTo: alreadyAccount.trailingAnchor, constant: 5),
            
        ])
    }
    
    @objc func goSignButtonTapped() {
        let signInVC = SignInVC()
        signInVC.modalPresentationStyle = .automatic
        present(signInVC, animated: true)
    }

}

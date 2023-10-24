//
//  WellcomeVC.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 25.10.2023.
//

import UIKit

class WellcomeVC: UIViewController {

    let backgroundImage = MdImageView(image: UIImage(named: "wellcome")!)
    let headerTitle     = MdLabel(text: "Explore the app, Find some peace of mind to prepare for meditation.",size: 16, textColor: .white, weight: .light, numberOfLines: 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    final func configureUI() {
        configureBackground()
        configureHeaderTitle()
    }
    
    
}

#Preview {
    WellcomeVC()
}

extension WellcomeVC {
    
    final func configureBackground() {
        view.addSubview(backgroundImage)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.heightAnchor.constraint(equalToConstant: view.frame.height)
        ])
    }
    
    final func configureHeaderTitle() {
        view.addSubview(headerTitle)
        
        NSLayoutConstraint.activate([
            headerTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            headerTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            headerTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            headerTitle.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

//
//  MdButton.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 22.10.2023.
//

import UIKit

class MdButton: UIButton {
    
    init(title: String, isBackground: Bool = true) {
        super.init(frame: .zero)
        let buttonBackgroundColor = UIColor(hex: "#8E97FD")
        if isBackground {
            backgroundColor     = buttonBackgroundColor
        }
        setTitle(title, for: .normal)
        setTitleColor(isBackground ? .white : .black, for: .normal)
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        titleLabel?.font    = .systemFont(ofSize: 14, weight: .medium)
        layer.cornerRadius  = 10
        translatesAutoresizingMaskIntoConstraints = false
    }

}

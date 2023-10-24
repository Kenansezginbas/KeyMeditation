//
//  MdLabel.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 22.10.2023.
//

import UIKit

class MdLabel: UILabel {

    init(text: String, size: CGFloat = 14, textColor: UIColor = .black, weight: UIFont.Weight = .medium, numberOfLines: Int = 1) {
        super.init(frame: .zero)
        self.text               = text
        self.textColor          = textColor
        self.font               = .systemFont(ofSize: size, weight: weight)
        self.numberOfLines      = numberOfLines
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
        textAlignment   =   .center
        translatesAutoresizingMaskIntoConstraints = false
    }

}

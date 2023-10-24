//
//  MdImageView.swift
//  KeyMeditation
//
//  Created by Kenan Sezginbaş on 22.10.2023.
//

import UIKit

class MdImageView: UIImageView {

    init(image: UIImage) {
        super.init(frame: .zero)
        self.image   = image
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        contentMode = .scaleAspectFit
        translatesAutoresizingMaskIntoConstraints = false
    }

}

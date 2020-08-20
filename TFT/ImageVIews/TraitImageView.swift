//
//  TraitImageView.swift
//  TFT
//
//  Created by 桑染 on 2020-06-17.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class TraitImageView: UIImageView {

    override init(image: UIImage?) {
        super.init(image: image)
        
        heightAnchor.constraint(equalToConstant: 25).isActive = true
        widthAnchor.constraint(equalToConstant: 25).isActive = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

//
//  StarImageVIew.swift
//  TFT
//
//  Created by 桑染 on 2020-06-16.
//  Copyright © 2020 Rick. All rights reserved.
//

import UIKit

class StarImageVIew: UIImageView {

    override init(image: UIImage?) {
        super.init(image: image)
        
        heightAnchor.constraint(equalToConstant: 13).isActive = true
        widthAnchor.constraint(equalToConstant: 42).isActive = true
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

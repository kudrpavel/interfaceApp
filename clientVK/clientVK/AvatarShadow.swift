//
//  AvatarShadow.swift
//  clientVK
//
//  Created by paul kudryavtsev on 09.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class AvatarShadow: UIView {
    

    override func layoutSubviews() {
        layer.cornerRadius = bounds.height / 2
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 5, height: 5)
    }
       
}


//Предусмотреть возможность изменения ширины, цвета, прозрачности тени


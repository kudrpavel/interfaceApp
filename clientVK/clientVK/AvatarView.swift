//
//  AvatarView.swift
//  clientVK
//
//  Created by paul kudryavtsev on 08.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class AvatarView: UIView {

    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 0
        layer.borderColor = UIColor.white.cgColor
    }
    
    override func layoutSubviews() {
        layer.cornerRadius = bounds.height / 2

    }
    
    
}



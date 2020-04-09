//
//  AvatarShadow.swift
//  clientVK
//
//  Created by paul kudryavtsev on 09.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class AvatarShadow: UIView {
//
//    @IBDesignable
//    @IBInspectable var radius: CGFloat = 10 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//        guard let context = UIGraphicsGetCurrentContext() else { return }
//        context.fillEllipse(in: CGRect (x: rect.midX - radius,
//                                        y: rect.midY - radius,
//                                        width: radius * 2,
//                                        height: radius * 2))
//    }

    
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
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 5, height: 5)
    }
       
}

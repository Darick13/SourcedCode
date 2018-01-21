//
//  RoundedView.swift
//  SourcedCode
//
//  Created by Andrew Cope on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCorners: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path  = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    
    override func layoutSubviews() {
        setNeedsDisplay()
    }
}

//
//  MarkerView.swift
//  SourcedCode
//
//  Created by Andrew Cope on 1/21/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class MarkerView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        drawCanvas2(frame: rect)
        backgroundColor = UIColor.clear
    }
    
    func drawCanvas2(frame: CGRect = CGRect(x: 229, y: 109, width: 24, height: 22)) {
        //// Color Declarations
        let fillColor3 = UIColor(red: 1.000, green: 0.000, blue: 0.282, alpha: 1.000)
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: frame.minX + 0.81481 * frame.width, y: frame.minY + 0.30769 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.72411 * frame.width, y: frame.minY + 0.52926 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.81481 * frame.width, y: frame.minY + 0.39471 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.78003 * frame.width, y: frame.minY + 0.47329 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.48611 * frame.width, y: frame.minY + 1.00000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.63986 * frame.width, y: frame.minY + 0.69588 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.48611 * frame.width, y: frame.minY + 1.00000 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.29175 * frame.width, y: frame.minY + 0.50571 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.48611 * frame.width, y: frame.minY + 1.00000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.35447 * frame.width, y: frame.minY + 0.66522 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.22222 * frame.width, y: frame.minY + 0.30769 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.24836 * frame.width, y: frame.minY + 0.45221 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.22222 * frame.width, y: frame.minY + 0.38312 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.23153 * frame.width, y: frame.minY + 0.23089 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.22222 * frame.width, y: frame.minY + 0.28117 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.22545 * frame.width, y: frame.minY + 0.25544 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.51852 * frame.width, y: frame.minY + 0.00000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.26438 * frame.width, y: frame.minY + 0.09812 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.38042 * frame.width, y: frame.minY + 0.00000 * frame.height))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 0.81481 * frame.width, y: frame.minY + 0.30769 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.68216 * frame.width, y: frame.minY + 0.00000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.81481 * frame.width, y: frame.minY + 0.13776 * frame.height))
        bezier2Path.close()
        fillColor3.setFill()
        bezier2Path.fill()
    }


}

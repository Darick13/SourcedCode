//
//  MapView.swift
//  SourcedCode
//
//  Created by Andrew Cope on 1/21/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

var w = 332.0
var h = 161.0

class MapView: UIView {
    
    var countries = [String]() {
        didSet {
            placeMarkers()
        }
    }
    
    
    
    var coords = [
        "Australia":CGPoint(x: 284/w, y: 106/h),
        "India":CGPoint(x: 229/w, y: 54/h),
        "China":CGPoint(x: 260/w, y: 44/h),
        "Chile":CGPoint(x: 69/w, y: 110/h),
        "South Africa":CGPoint(x: 166/w, y: 110/h),
        "Congo":CGPoint(x: 170/w, y: 76/h),
        "United States":CGPoint(x: 19/w, y: 36/h),
        
    ]
    
    var markerSize: CGFloat = 30.0
    
    func placeMarkers() {
        for country in countries {
            if let coords = coords[country] {
                let x = self.frame.width * coords.x
                let y = self.frame.height * coords.y
                let pin = MarkerView(frame: CGRect(x: x, y: y, width: markerSize, height: markerSize))
                pin.backgroundColor = UIColor.clear
                self.addSubview(pin)
            }
        }
    }
    
    

}

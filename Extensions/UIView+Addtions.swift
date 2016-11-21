//
//  UIView+Addtions.swift
//  SwiftTest
//
//  Created by Mekor on 20/11/2016.
//  Copyright © 2016 Mekor. All rights reserved.
//

import UIKit

extension UIView {
    
    // size
    var width:   CGFloat { return self.frame.size.width }
    var height:  CGFloat { return self.frame.size.height }
    var size:    CGSize  { return self.frame.size}
    
    // origin
    var origin:  CGPoint { return self.frame.origin }
    var x:       CGFloat { return self.frame.origin.x }
    var y:       CGFloat { return self.frame.origin.y }
    var centerX: CGFloat { return self.center.x }
    var centerY: CGFloat { return self.center.y }
    
    var left:    CGFloat { return self.frame.origin.x }
    var right:   CGFloat { return self.frame.origin.x + self.frame.size.width }
    var top:     CGFloat { return self.frame.origin.y }
    var bottom:  CGFloat { return self.frame.origin.y + self.frame.size.height }
    
    public func setWidth(width: CGFloat) {
        self.frame.size.width = width
    }
    
    public func setHeight(height: CGFloat) {
        self.frame.size.height = height
    }
    
    public func setSize(size: CGSize) {
        self.frame.size = size
    }
    
    public func setOrigin(point: CGPoint) {
        self.frame.origin = point
    }
    
    public func setX(x: CGFloat) {
        self.frame.origin.x = x
    }
    
    public func setY(y: CGFloat) {
        self.frame.origin.y = y
    }
    
    public func roundedCorrner(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    public func roundedRectangleFilter() {
        self.roundedCorrner(radius: self.height / 2)
    }
    
    public func circleFilter() {
        self.roundedCorrner(radius: self.width / 2)
    }
    
    public func border(width: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    public func removeSublayers() {
        if let sublayers = self.layer.sublayers {
            for layer in sublayers {
                layer.removeFromSuperlayer()
            }
        }
    }
    
    public func hasViewClass(targetClass: AnyClass) -> Bool {
        for childView in self.subviews {
            if childView.isMember(of: targetClass) {
                return true
            }
        }
        return false
    }
}

//
//  UIImage+Extension.swift
//  SwiftTest
//
//  Created by Mekor on 20/11/2016.
//  Copyright © 2016 Mekor. All rights reserved.
//

import UIKit

extension UIImage {
    func avatarImage(size:CGSize?,backColor:UIColor = UIColor.clear,lineColor:UIColor = UIColor.lightGray,lineWidth: CGFloat = 2.0) -> UIImage? {
        var size = size
        if size == nil {
            size = self.size
        }
        let rect = CGRect(origin: CGPoint(), size: size!)
        
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 0)
        
        backColor.setFill()
        UIRectFill(rect)
        
        let path = UIBezierPath(ovalIn: rect)
        path.addClip()
        
        draw(in: rect)
        
        let ovalPath = UIBezierPath(ovalIn: rect)
        ovalPath.lineWidth = lineWidth
        lineColor.setStroke()
        ovalPath.stroke()
        
        let result = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return result

    }
}

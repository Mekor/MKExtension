
//
//  UIView+Extension.swift
//  SwiftTest
//
//  Created by Mekor on 2016/11/27.
//  Copyright © 2016年 Mekor. All rights reserved.
//

import Foundation

extension UIView {
    class func instanceFromNibBundle() -> UIView? {
        let nib = UINib(nibName: String(describing: self), bundle: nil)
        let views = nib.instantiate(withOwner: nil, options: nil)
        
        
        for view in views {
            if (view as AnyObject).isMember(of: self) {
                return view as? UIView
            }
        }
        assert(false, "Exepect file:\(String(describing: self)).xib")
        return nil
    }
} 

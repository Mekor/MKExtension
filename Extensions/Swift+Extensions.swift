//
//  Swift+Extensions.swift
//  SwiftTest
//
//  Created by Mekor on 21/11/2016.
//  Copyright © 2016 Mekor. All rights reserved.
//

import Foundation

public func StringFromClass(_ object: AnyObject) -> String {
    return NSStringFromClass(type(of: object)).components(separatedBy: ".").last! as String
}

public func StringFromType<T>(type: T) -> String {
    return String(describing: type.self).components(separatedBy: ".").last!
}

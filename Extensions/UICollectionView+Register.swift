//
//  UICollectionView+Register.swift
//  SwiftTest
//
//  Created by Mekor on 21/11/2016.
//  Copyright © 2016 Mekor. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    
    /// 注册nib
    ///
    /// - Parameter type: nib名称
    public func registerNibFromClass<T: UICollectionViewCell>(type: T.Type) {
        let className = StringFromClass(T.self)
        let nib = UINib(nibName: className, bundle: nil)
        register(nib, forCellWithReuseIdentifier: className)
    }
    
    
    /// 注册nib
    ///
    /// - Parameters:
    ///   - type: nib名称
    ///   - kind: 类型
    public func registerNibFromClass<T: UICollectionReusableView>(type: T.Type, forSupplementaryViewOfKind kind: String) {
        let className = StringFromClass(T.self)
        let nib = UINib(nibName: className, bundle: nil)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    
    /// 注册cell
    ///
    /// - Parameter type: cell名称
    public func registerClassFromClass<T: UICollectionViewCell>(type: T.Type) {
        let className = StringFromClass(T.self)
        register(T.self, forCellWithReuseIdentifier: className)
    }
    
    
    /// 获取cell
    ///
    /// - Parameters:
    ///   - type: cell名称
    ///   - indexPath: IndexPath
    /// - Returns: 获取到的cell
    public func dequeueReusableCell<T: UICollectionViewCell>(type: T.Type,
                                    forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: StringFromClass(T.self), for: indexPath) as! T
    }
    
    
    /// 获取UICollectionReusableView
    ///
    /// - Parameters:
    ///   - kind: 类型
    ///   - type: 名称
    ///   - indexPath: indexpath
    /// - Returns: 获取到的UICollectionReusableView
    public func dequeueReusableCell<T: UICollectionReusableView>(kind: String, withReuseType type: T.Type,
                                    forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: kind,
                                                withReuseIdentifier: StringFromClass(T.self), for: indexPath) as! T
    }
}

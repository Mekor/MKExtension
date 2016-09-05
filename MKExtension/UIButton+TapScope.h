//
//  UIButton+TapScope.h
//  MKExtension
//
//  Created by Mekor on 16/9/5.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (TapScope)
/**
 *  扩大按钮的点击范围（insets必须不被button的superview给挡住）
 */
@property(nonatomic, assign) UIEdgeInsets hitEdgeInsets;
@end

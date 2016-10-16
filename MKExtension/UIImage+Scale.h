//
//  UIImage+Scale.h
//  MKExtension
//
//  Created by Mekor on 16/10/2016.
//  Copyright © 2016 李小争. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)
/// 等比率缩放
- (UIImage *)scaleImageToScale:(float)scale;
/// 自定长宽
- (UIImage*)scaleImageToSize:(CGSize)size;
@end

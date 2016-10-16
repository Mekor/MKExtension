//
//  UIImage+Scale.m
//  MKExtension
//
//  Created by Mekor on 16/10/2016.
//  Copyright © 2016 李小争. All rights reserved.
//

#import "UIImage+Scale.h"

@implementation UIImage (Scale)

//等比率缩放
- (UIImage *)scaleImageToScale:(float)scale
{
    UIGraphicsBeginImageContext(CGSizeMake(self.size.width * scale, self.size.height * scale));
    [self drawInRect:CGRectMake(0, 0, self.size.width * scale, self.size.height * scale)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return scaledImage;
    
}

//自定长宽
- (UIImage*)scaleImageToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return scaledImage;
    
}
@end

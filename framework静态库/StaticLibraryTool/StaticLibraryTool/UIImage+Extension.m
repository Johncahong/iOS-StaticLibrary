//
//  UIImage+Extension.m
//  GHYunRui
//
//  Created by Hello Cai on 2019/6/25.
//  Copyright © 2019 Hello Cai. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

- (UIImage *)imageWithColor:(UIColor *)color
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    /*图片画到rect，而裁剪区域rect的点是否变化取决于alpha。alpha为0，对应clip rect的点为透明；alpha为1，对应clip rect的点不变化
     即保留图片映射区域，裁剪其余区域
     */
    CGContextClipToMask(context, rect, self.CGImage);
    [color setFill];
    CGContextFillRect(context, rect);
    
    UIImage*newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


-(UIImage *)cutCircleImage{
    CGRect imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    //在绘制之前先裁剪出一个圆形
    [[UIBezierPath bezierPathWithRoundedRect:imageRect cornerRadius:self.size.width/2] addClip];
    //图片在设置的圆形里面进行绘制
    [self drawInRect:imageRect];
    //获取图片
    UIImage *clipImage = UIGraphicsGetImageFromCurrentImageContext();
    //结束绘制
    UIGraphicsEndImageContext();
    return clipImage;
}
@end

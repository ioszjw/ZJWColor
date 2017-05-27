//
//  UIColor+ZJWExtensionMethods.h
//  ZJWColorDemo
//
//  Created by zjw on 2017/5/26.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZJWExtensionMethods)

/** RGB + alpha, RGB范围:0~255, alpha范围:0~1 */
+ (instancetype)zjw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
/** RGB, RGB范围:0~255 */
+ (instancetype)zjw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
/** white + alpha, white范围:0~255, alpha范围:0~1 */
+ (instancetype)zjw_colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
/** white, white范围:0~255 */
+ (instancetype)zjw_colorWithWhite:(CGFloat)white;
/** RGB十六进制 + alpha, RGB范围:000000~FFFFFF, alpha范围:0~1 */
+ (instancetype)zjw_colorWithRGBHexString:(NSString *)RGBhexString alpha:(CGFloat)alpha;
/** RGB十六进制, RGB范围:000000~FFFFFF */
+ (instancetype)zjw_colorWithRGBHexString:(NSString *)RGBhexString;
/** 随机颜色 */
+ (instancetype)zjw_randomColor;

@end

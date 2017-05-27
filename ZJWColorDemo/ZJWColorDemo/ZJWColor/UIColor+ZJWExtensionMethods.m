//
//  UIColor+ZJWExtensionMethods.m
//  ZJWColorDemo
//
//  Created by zjw on 2017/5/26.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "UIColor+ZJWExtensionMethods.h"

@implementation UIColor (ZJWExtensionMethods)

/** RGB + alpha, RGB范围:0~255, alpha范围:0~1 */
+ (instancetype)zjw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    red   = red   / 255.0;
    green = green / 255.0;
    blue  = blue  / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

/** RGB, RGB范围:0~255 */
+ (instancetype)zjw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    return [self zjw_colorWithRed:red green:green blue:blue alpha:1.0f];
}

/** white + alpha, white范围:0~255, alpha范围:0~1 */
+ (instancetype)zjw_colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha {
    white = white / 255.0;
    return [UIColor colorWithWhite:white alpha:alpha];
}

/** white, white范围:0~255 */
+ (instancetype)zjw_colorWithWhite:(CGFloat)white {
    return [self zjw_colorWithWhite:white alpha:1.0f];
}

/** RGB十六进制 + alpha, RGB范围:000000~FFFFFF, alpha范围:0~1 */
+ (instancetype)zjw_colorWithRGBHexString:(NSString *)RGBhexString alpha:(CGFloat)alpha {
    NSString *redHexString   = [RGBhexString substringWithRange:NSMakeRange(0, 2)];
    NSString *greenHexString = [RGBhexString substringWithRange:NSMakeRange(2, 2)];
    NSString *blueHexString  = [RGBhexString substringWithRange:NSMakeRange(4, 2)];
    CGFloat red   = strtoul([redHexString UTF8String], NULL, 16);
    CGFloat green = strtoul([greenHexString UTF8String], NULL, 16);
    CGFloat blue  = strtoul([blueHexString UTF8String], NULL, 16);
    return [self zjw_colorWithRed:red green:green blue:blue alpha:alpha];
}

/** RGB十六进制, RGB范围:000000~FFFFFF */
+ (instancetype)zjw_colorWithRGBHexString:(NSString *)RGBhexString {
    return [self zjw_colorWithRGBHexString:RGBhexString alpha:1.0f];
}

/** 随机颜色 */
+ (instancetype)zjw_randomColor {
    CGFloat red   = arc4random_uniform(256);
    CGFloat green = arc4random_uniform(256);
    CGFloat blue  = arc4random_uniform(256);
    return [UIColor zjw_colorWithRed:red green:green blue:blue];
}

@end

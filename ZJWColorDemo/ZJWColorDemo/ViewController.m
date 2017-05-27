//
//  ViewController.m
//  ZJWColorDemo
//
//  Created by zjw on 2017/5/26.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+ZJWExtensionMethods.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 白色
    [UIColor zjw_colorWithRed:255.0f green:255.0f blue:255.0f alpha:1.0f];
    [UIColor zjw_colorWithRed:255.0f green:255.0f blue:255.0f];
    [UIColor zjw_colorWithWhite:255.0f alpha:1.0f];
    [UIColor zjw_colorWithWhite:255.0f];
    [UIColor zjw_colorWithRGBHexString:@"FFFFFF" alpha:1.0f];
    [UIColor zjw_colorWithRGBHexString:@"FFFFFF"];
    
    // 随机颜色
    [UIColor zjw_randomColor];
}

@end

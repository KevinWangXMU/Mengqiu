//
//  SecondViewController.m
//  Mengqiu Pet
//
//  Created by Yao on 15/1/29.
//  Copyright (c) 2015年 Mr.Alpaca Information Technology Co., Ltd. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    // tabBarItem 点击文字或者高亮的时候的颜色
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor],NSForegroundColorAttributeName, nil, nil] forState:UIControlStateHighlighted];
    // tabBarItem 文字失去焦点或者默认的时候的颜色
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[[UIColor alloc] initWithHue:0 saturation:0 brightness:0.6 alpha:1],NSForegroundColorAttributeName, nil, nil] forState:UIControlStateNormal];
    // tabBarItem图片的默认选中图片
    [self.tabBarItem setImage:[UIImage imageNamed:@"myPressed.png"]];
    // tabBarItem 设置完成选中后的图片和失去焦点后的图片背景
    UIImage *myImage = [UIImage imageNamed:@"my.png"];
    UIImage *myImagePressed = [UIImage imageNamed:@"myPressed.png"];
    self.tabBarItem.image = [myImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem.selectedImage = [myImagePressed imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"myPressed.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"my.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

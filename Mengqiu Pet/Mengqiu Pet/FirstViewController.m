//
//  FirstViewController.m
//  Mengqiu Pet
//
//  Created by Yao on 15/1/29.
//  Copyright (c) 2015年 Mr.Alpaca Information Technology Co., Ltd. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSThread sleepForTimeInterval:3.0];//延长3秒
    
    // Do any additional setup after loading the view, typically from a nib.
    // tabBarItem 点击文字或者高亮的时候的颜色
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor],NSForegroundColorAttributeName, nil, nil] forState:UIControlStateHighlighted];
    // tabBarItem 文字失去焦点或者默认的时候的颜色
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[[UIColor alloc] initWithHue:0 saturation:0 brightness:0.6 alpha:1],NSForegroundColorAttributeName, nil, nil] forState:UIControlStateNormal];
    // tabBarItem图片的默认选中图片
    [self.tabBarItem setImage:[UIImage imageNamed:@"homePressed.png"]];
    // tabBarItem 设置完成选中后的图片和失去焦点后的图片背景
    UIImage *homeImage = [UIImage imageNamed:@"home.png"];
    UIImage *homeImagePressed = [UIImage imageNamed:@"homePressed.png"];
    self.tabBarItem.image = [homeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem.selectedImage = [homeImagePressed imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //[self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"homePressed.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"home.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

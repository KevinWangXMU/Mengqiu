//
//  MQHomeController.m
//  Mengqiu Pet
//
//  Created by Yao on 15/1/29.
//  Copyright (c) 2015年 Mr.Alpaca Information Technology Co., Ltd. All rights reserved.
//

#import "MQHomeController.h"
#import "MQNewsViewController.h"
#import "AppDelegate.h"
#import "MQCategoryItem.h"
#import "SlideNavigationController.h"

@interface MQHomeController () <ViewPagerDataSource, ViewPagerDelegate>
{
    AppDelegate *delegate;
    NSMutableArray *categoryList;
}
@end


@implementation MQHomeController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    self.dataSource = self;
    self.delegate = self;
    
    self.title = @"萌球";
    
    // Keeps tab bar below navigation bar on iOS 7.0+
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }

    
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
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ViewPagerDataSource
- (NSUInteger)numberOfTabsForViewPager:(ViewPagerController *)viewPager {
    return 10;
}

- (UIView *)viewPager:(ViewPagerController *)viewPager viewForTabAtIndex:(NSUInteger)index {
    
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont systemFontOfSize:13.0];
    label.text = [NSString stringWithFormat:@"Content View #%i", index];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [label sizeToFit];
    
    return label;
}

#pragma mark - ViewPagerDelegate
- (CGFloat)viewPager:(ViewPagerController *)viewPager valueForOption:(ViewPagerOption)option withDefault:(CGFloat)value {
    
    switch (option) {
        case ViewPagerOptionStartFromSecondTab:
            return 1.0;
            break;
        case ViewPagerOptionCenterCurrentTab:
            return 0.0;
            break;
        case ViewPagerOptionTabLocation:
            return 1.0;
            break;
        default:
            break;
    }
    
    return value;
}
- (UIColor *)viewPager:(ViewPagerController *)viewPager colorForComponent:(ViewPagerComponent)component withDefault:(UIColor *)color {
    
    switch (component) {
        case ViewPagerIndicator:
            return [[UIColor redColor] colorWithAlphaComponent:0.64];
            break;
        default:
            break;
    }
    
    return color;
}

@end

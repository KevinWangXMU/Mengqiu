//
//  SlideNavigationControllerViewController.h
//  Mengqiu Pet
//
//  Created by Yao on 15/1/29.
//  Copyright (c) 2015年 Mr.Alpaca Information Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@protocol SlideNavigationControllerDelegate <NSObject>
@optional
- (BOOL)slideNavigationControllerShouldDisplayRightMenu;
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu;
@end

typedef  enum{
    MenuLeft,
    MenuRight,
}Menu;

@interface SlideNavigationController : UINavigationController <UINavigationControllerDelegate>

@property (nonatomic, assign) BOOL avoidSwitchingToSameClassViewController;
@property (nonatomic, assign) BOOL enableSwipeGesture;
@property (nonatomic, strong) UIViewController *righMenu;
@property (nonatomic, strong) UIViewController *leftMenu;
@property (nonatomic, strong) UIBarButtonItem *leftbarButtonItem;
@property (nonatomic, strong) UIBarButtonItem *rightBarButtonItem;

+ (SlideNavigationController *)sharedInstance;
- (void)switchToViewController:(UIViewController *)viewController withCompletion:(void (^)())completion;

@end

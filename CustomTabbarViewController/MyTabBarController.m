//
//  MyTabBarController.m
//  CustomTabbarViewController
//
//  Created by duanshengwu on 2019/7/11.
//  Copyright © 2019 D-James. All rights reserved.
//

#import "MyTabBarController.h"
#import "HomePageController.h"
#import "DiscoverController.h"
#import "SquareViewController.h"
#import "MyViewController.h"

#import "MyTabBar.h"



@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self setValue:[MyTabBar new] forKey:@"tabBar"];
    
    [self addCustomChildVC:[HomePageController new] title:@"首页" imageName:@"tabbar_home_page"];
    [self addCustomChildVC:[DiscoverController new] title:@"发现"  imageName:@"tabbar_activity"];
    [self addCustomChildVC:[SquareViewController new] title:@"广场"  imageName:@"tabbar_order"];
    [self addCustomChildVC:[MyViewController new] title:@"我的"  imageName:@"tabbar_my"];
    
}



- (void)addCustomChildVC:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName {
    
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256) / 255.0 green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [self addChildViewController:nav];
    
}


@end

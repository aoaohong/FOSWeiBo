//
//  AppDelegate.m
//  WeiBoAPP
//
//  Created by Ibokan on 15/11/23.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "AppDelegate.h"
#import "WeiBo_HomeVC.h"
#import "WeiBo_MessageVC.h"
#import "TabBar_NullVC.h"
#import "WeiBo_MoreVC.h"
#import "WeiBo_DiscoverVC.h"
#import "WeiBo_ProfileVC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UITabBarController *tbC = [[UITabBarController alloc]init];
    self.window.rootViewController = tbC;

    //微博首页界面
    WeiBo_HomeVC *homeVC = [[WeiBo_HomeVC alloc]init];
    homeVC.tabBarItem.title = @"首页";
    homeVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    homeVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_home_selected"];
    UINavigationController *homeNavi = [[UINavigationController alloc]initWithRootViewController:homeVC];
    
    //消息界面
    WeiBo_MessageVC *messageVC = [[WeiBo_MessageVC alloc]init];
    messageVC.tabBarItem.title = @"消息";
    messageVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    messageVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_message_center_selected"];
    UINavigationController *messageNavi = [[UINavigationController alloc]initWithRootViewController:messageVC];
    
    //添加界面
    TabBar_NullVC *moreVC = [[TabBar_NullVC alloc]init];
    moreVC.tabBarItem.enabled = NO;
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(172, 627  , 30, 30)];
    view.backgroundColor = [UIColor colorWithRed:243.0/255.0 green:106.0/255.0 blue:10.0/255.0 alpha:1.0];
    [tbC.view addSubview:view];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    addBtn.frame = CGRectMake(0, 0  , 30, 30);
    addBtn.backgroundColor = [UIColor clearColor];
    [addBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    addBtn.tintColor = [UIColor whiteColor];
    [view addSubview:addBtn];
    
    
    //发现界面
    WeiBo_DiscoverVC *discoverVC = [[WeiBo_DiscoverVC alloc]init];
    discoverVC.tabBarItem.title = @"发现";
    discoverVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    discoverVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_discover_selected"];
    UINavigationController *discoverNavi = [[UINavigationController alloc]initWithRootViewController:discoverVC];
    
    //我界面
    WeiBo_ProfileVC *meVC = [[WeiBo_ProfileVC alloc]init];
    meVC.tabBarItem.title = @"我";
    meVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    meVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_profile_selected"];
    UINavigationController *meNavi = [[UINavigationController alloc]initWithRootViewController:meVC];
    
    self.window.backgroundColor = [UIColor whiteColor];
    tbC.viewControllers = @[homeNavi,messageNavi,moreVC,discoverNavi,meNavi];
    
    tbC.tabBar.tintColor = [UIColor colorWithRed:243.0/255.0 green:106.0/255.0 blue:10.0/255.0 alpha:1.0];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

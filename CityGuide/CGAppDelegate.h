//
//  CGAppDelegate.h
//  CityGuide
//
//  Created by Ramon Bartl on 02.09.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CGViewController;

@interface CGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CGViewController *viewController;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) NSMutableArray *cities;

@end

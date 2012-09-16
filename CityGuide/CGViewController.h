//
//  CGViewController.h
//  CityGuide
//
//  Created by Ramon Bartl on 02.09.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGViewController : UIViewController <UITableViewDataSource,
UITabBarDelegate> {
    
    NSMutableArray *cities;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
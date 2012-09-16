//
//  CGViewController.m
//  CityGuide
//
//  Created by Ramon Bartl on 02.09.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import "CGViewController.h"
#import "CGAppDelegate.h"
#import "City.h"
#import "CityController.h"

@interface CGViewController ()

@end

@implementation CGViewController
@synthesize tableView;

#pragma mark Warnings

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"WARNING: MEMORY LOW");
}

#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"City Guide";
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    cities = delegate.cities;
}

- (void)viewDidUnload
{
    [self setTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


#pragma mark UITableViewDataSource Methods

- (UITableViewCell *)tableView:(UITableView *)tv
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    
    // no existing cell, create a new one
    if(cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"cell"];
    }
    City *thisCity = [cities objectAtIndex:indexPath.row];
    cell.textLabel.text = thisCity.cityName;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tv
 numberOfRowsInSection:(NSInteger)section {
    return [cities count];
}

#pragma mark UITableViewDelegate Methods

- (void)tableView:(UITableView *)tv
        didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tv deselectRowAtIndexPath:indexPath animated:YES];

    NSLog(@"Clicked on Cell %d", indexPath.row);
    CGAppDelegate *delegate = (CGAppDelegate *)[[UIApplication sharedApplication] delegate];
    CityController *city = [[CityController alloc] initWithIndexPath:indexPath];
    [delegate.navController pushViewController:city animated:YES];
}


@end
//
//  City.h
//  CityGuide
//
//  Created by Ramon Bartl on 02.09.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject {
}

@property (nonatomic, strong) NSString *cityName;
@property (nonatomic, strong) NSString *cityDescription;
@property (nonatomic, strong) UIImage *cityPicture;


@end
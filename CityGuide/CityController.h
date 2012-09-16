//
//  CityController.h
//  CityGuide
//
//  Created by Ramon Bartl on 02.09.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityController : UIViewController {
    NSIndexPath *index;
    IBOutlet UIImageView *pictureView;
    IBOutlet UITextView *descriptionView;
}

- (id)initWithIndexPath:(NSIndexPath *) indexPath;

@end
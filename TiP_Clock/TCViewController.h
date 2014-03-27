//
//  TCViewController.h
//  TiP_Clock
//
//  Created by Kyle Frost on 3/27/14.
//  Copyright (c) 2014 Today's iPhone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TCViewController : UIViewController

/******** 1 ********/
@property (weak, nonatomic) IBOutlet UILabel *clockLabel;

/******** 2 ********/
-(void)updateClockLabel;

@end

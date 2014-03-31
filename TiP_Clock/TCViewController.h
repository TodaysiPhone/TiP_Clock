//
//  TCViewController.h
//  TiP_Clock
//
//  Created by Kyle Frost on 3/27/14.
//  Copyright (c) 2014 Today's iPhone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *clockLabel;

-(void)updateClockLabel;

/******** 1 ********/
@property (strong, nonatomic) IBOutlet UISwitch *nightSwitch;

/******** 2 ********/
-(IBAction)nightSwitchDidChangeValue:(id)sender;

@end

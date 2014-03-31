//
//  TCViewController.m
//  TiP_Clock
//
//  Created by Kyle Frost on 3/27/14.
//  Copyright (c) 2014 Today's iPhone. All rights reserved.
//

#import "TCViewController.h"

@interface TCViewController ()

@end

@implementation TCViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self updateClockLabel];
    
    /******** 1 ********/
    self.nightSwitch.on = NO;
}

-(void)updateClockLabel {
    
    NSDateFormatter *clockFormat = [[NSDateFormatter alloc] init];
    [clockFormat setDateFormat:@"hh:mm:ss a"];
    
    self.clockLabel.text = [clockFormat stringFromDate:[NSDate date]];
    
    [self performSelector:@selector(updateClockLabel) withObject:self afterDelay:1.0];
}

/******** 1 ********/
-(IBAction)nightSwitchDidChangeValue:(id)sender {
    
    /******** 2 ********/
    if (self.nightSwitch.on) {
        
        /******** 3 ********/
        self.clockLabel.textColor = [UIColor whiteColor];
        self.view.backgroundColor = [UIColor blackColor];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    }
    
    /******** 4 ********/
    else {
        /******** 5 ********/
        self.clockLabel.textColor = [UIColor blackColor];
        self.view.backgroundColor = [UIColor whiteColor];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

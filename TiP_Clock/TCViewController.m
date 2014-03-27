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
    
    /******** 1 ********/
    [self updateClockLabel];
}

/******** 1 ********/
-(void)updateClockLabel {
    
    /******** 2 ********/
    NSDateFormatter *clockFormat = [[NSDateFormatter alloc] init];
    [clockFormat setDateFormat:@"hh:mm:ss a"];
    
    /******** 3 ********/
    self.clockLabel.text = [clockFormat stringFromDate:[NSDate date]];
    
    /******** 4 ********/
    [self performSelector:@selector(updateClockLabel) withObject:self afterDelay:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Michael Drozdowski on 31/10/2013.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"TimeViewControler loaded its view");
    [[self view] setBackgroundColor:[UIColor greenColor]];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will disappear");
    [super viewWillDisappear:animated];
    [self showCurrentTime:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSBundle *appBundle = [NSBundle mainBundle];
    
    self = [super initWithNibName:@"TimeViewController"
                           bundle:appBundle];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        
        [tbi setTitle:@"Time"];
        
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        [tbi setImage:i];
        
        
        
    }
    
    return self;
}


- (IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
    
}

@end

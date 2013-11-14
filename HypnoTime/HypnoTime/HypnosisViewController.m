//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Michael Drozdowski on 31/10/2013.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view");
    
//    NSArray *colors = [NSArray arrayWithObjects:@"Red", @"Green", @"Blue", nil];
//    colorControl = [[UISegmentedControl alloc] initWithItems:colors];
//    colorControl.frame = CGRectMake(self.view.bounds.size.width / 2 - 100, 30, 200, 30);
//    [[self view] addSubview:colorControl];
   
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
        // Give it a label
        [tbi setTitle:@"Hypnosis"];
    }
    return self;
}

- (void)loadView
{
    // Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    [self setView:v];
}

@end

//
//  MapViewController.m
//  HypnoTime
//
//  Created by Michael Drozdowski on 31/10/2013.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSBundle *appBundle = [NSBundle mainBundle];
    
    self = [super initWithNibName:@"MapViewController"
                           bundle:appBundle];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        
        [tbi setTitle:@"Map View"];
        
        UIImage *i = [UIImage imageNamed:@"joeeye.jpg"];
        [tbi setImage:i];
        
        
        
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    mapView = [[MKMapView alloc] init];
    
}


@end

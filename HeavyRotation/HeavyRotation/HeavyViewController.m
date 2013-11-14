//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Michael Drozdowski on 1/11/2013.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import "HeavyViewController.h"


@implementation HeavyViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    return UIInterfaceOrientationIsLandscape(x);
}

@end

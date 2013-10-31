//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Michael Drozdowski on 29/10/13.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}

@property (strong, nonatomic) UIWindow *window;


@end

//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Michael Drozdowski on 31/10/2013.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
}
- (IBAction)showCurrentTime:(id)sender;

@end

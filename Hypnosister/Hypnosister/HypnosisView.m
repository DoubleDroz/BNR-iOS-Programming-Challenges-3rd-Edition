//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Michael Drozdowski on 29/10/13.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

@synthesize circleColor, colorArray;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColor:[UIColor lightGrayColor]];
        colorArray = [[NSArray alloc] initWithObjects:[UIColor blueColor], [UIColor greenColor], [UIColor purpleColor], [UIColor yellowColor], [UIColor brownColor], nil];
        
        
    }
    return self;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)setCircleColor:(UIColor *)clr
{
    circleColor = clr;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = (bounds.origin.x + bounds.size.width) / 2.0;
    center.y = (bounds.origin.y + bounds.size.height) / 2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    CGContextSetLineWidth(ctx, 10);
    
    [[self circleColor] setStroke];
 
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        [self setCircleColor:[colorArray objectAtIndex:(arc4random() % [colorArray count])]];
        [[self circleColor] setStroke];
        CGContextStrokePath(ctx);
    }
    
    // Save the original context *before* adding some shadow
    CGContextSaveGState(ctx);
    
    NSString *text = @"You are getting sleepy.";
    
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    
    textRect.size = [text sizeWithFont:font];
    
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    
    [[UIColor blackColor] setFill];
    
    CGSize offset = CGSizeMake(4, 3);
    
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    [text drawInRect:textRect
            withFont:font];
    
    // Restore the context to its pre-shadow added state
    CGContextRestoreGState(ctx);
    [[UIColor greenColor] setStroke];
    
    CGContextMoveToPoint(ctx, center.x - 20, center.y);
    CGContextAddLineToPoint(ctx, center.x + 20, center.y);
    CGContextSetLineWidth(ctx, 2);
    
    
    
    
    CGContextStrokePath(ctx);
    
    CGContextMoveToPoint(ctx, center.x, center.y - 20);
    CGContextAddLineToPoint(ctx, center.x, center.y + 20);
    CGContextStrokePath(ctx);
    
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake){
        NSLog(@"Device started shaking!");
        NSUInteger randomIndex = arc4random() % [colorArray count];
        
        [self setCircleColor:[colorArray objectAtIndex:randomIndex]];
    }
}

@end

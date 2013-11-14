//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Michael Drozdowski on 1/11/2013.
//  Copyright (c) 2013 Michael Drozdowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}


+ (BNRItemStore *)sharedStore;

- (NSArray *)allItems;
- (BNRItem *)createItem;

@end

//
//  heldDice.m
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "HeldDice.h"

@implementation HeldDice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.heldDice = [[NSMutableSet alloc] init];
    }
    
    return self;
}

@end

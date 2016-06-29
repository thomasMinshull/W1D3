//
//  Die.m
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Die.h"
#include "stdint.h"

@implementation Die

- (instancetype)init {
    self = [super init];
    if (self) {
        self.faceValue = nil;
    }
    return self;
}

- (NSNumber*)rollDie {
    NSUInteger random = arc4random_uniform(5) + 1;
    self.faceValue = [NSNumber numberWithInteger:random];
    return self.faceValue;
}

@end

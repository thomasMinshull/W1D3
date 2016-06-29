//
//  Dice.m
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Dice.h"
#import "Die.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        Die *die1 = [[Die alloc] init];
        Die *die2 = [[Die alloc] init];
        Die *die3 = [[Die alloc] init];
        Die *die4 = [[Die alloc] init];
        Die *die5 = [[Die alloc] init];
        
        self.array = @[die1, die2, die3, die4, die5];
    }
    return self;
}



@end

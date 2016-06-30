//
//  GameController.m
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "GameController.h"
#import "Die.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dice = [[Dice alloc] init];
        self.heldDice = [[HeldDice alloc] init];
    }
    return self;
}

- (void)holdDie:(int) die {
    if (die < self.dice.array.count) {
        Die *selectedDie = self.dice.array[die];
        NSMutableSet *set = self.heldDice.heldDice;
        
        if ([set containsObject:selectedDie]) {
            [set removeObject:selectedDie];
        } else {
            [set addObject:selectedDie];
        }
    }
}

- (void)rollDice {
    for (Die *d in self.dice.array) {
        if (![self.heldDice.heldDice containsObject:d]) {
            [d rollDie];
        }
    }
}

- (void)resetDice {
    [self.heldDice.heldDice removeAllObjects];
}

- (void)printFaceValues {
    for (Die *d in self.dice.array) {
        if ([self.heldDice.heldDice containsObject:d]) {
            NSLog(@"Face Value: [%@]", d.faceValue);
        } else {
            NSLog(@"Face Value: %@", d.faceValue);
        }
    }
}

@end

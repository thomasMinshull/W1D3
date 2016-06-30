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
            NSLog(@"Face Value: [%@] = %@", [self dieFaceForInt:[d.faceValue intValue]], d.faceValue);
        } else {
            NSLog(@"Face Value: %@ = %@", [self dieFaceForInt:[d.faceValue intValue]], d.faceValue);
        }
    }
    
    NSLog(@"Score: %i", [self score]);
    
}

- (NSString *)dieFaceForInt:(int)faceValue {
    switch (faceValue) {
        case 1:
            return @"\u2680";
            break;
            
        case 2:
            return @"\u2681";
            break;
        case 3:
            return @"\u2682";
            break;
        case 4:
            return @"\u2683";
            break;
        case 5:
            return @"\u2684";
            break;
        case 6:
            return @"\u2685";
        default:
            return nil;
            break;
    }
}

- (int)score {
    int score = 0;
    for (Die *d in self.heldDice.heldDice) {
        if ([d.faceValue intValue] != 3) {
            score = score + [d.faceValue intValue];
        }
    }
    return score;
}

@end

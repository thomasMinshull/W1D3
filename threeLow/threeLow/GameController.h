//
//  GameController.h
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "HeldDice.h"

@interface GameController : NSObject

@property Dice *dice;
@property HeldDice *heldDice;

- (void)holdDie:(int) die;
- (void)rollDice;
- (void)printFaceValues;
- (void)resetDice;

@end

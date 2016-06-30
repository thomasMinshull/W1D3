//
//  main.m
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "InputCollector.h"

#define MENU_STRING @"Type \"roll\" to roll the dice\nType \"q\" to quit:"
#define SELECT_DICE_TO_HOLD @"type the number of the die, you would like to hold.\n Type \"reset\" to restart.\n Type \"d\" when you are done:"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        NSString *userInput;
        
        [gameController rollDice];
        
        while (![userInput isEqualToString:@"q"]) {
            userInput = [inputCollector inputForPrompt:MENU_STRING];
            
            if ([userInput isEqualToString:@"q"]) {
                break;
            } else if ([userInput isEqual:@"roll"]) {
                [gameController rollDice];
                [gameController printFaceValues];
                NSString *userResponse;
                while (![userResponse isEqualToString:@"d"]) {
                    userResponse = [inputCollector inputForPrompt:SELECT_DICE_TO_HOLD];
                    NSNumber *NumberRespondedWith = [NSNumber numberWithInt:(int)[userResponse integerValue]];
                    
                    if (NumberRespondedWith && [NumberRespondedWith integerValue] <= [gameController.dice.array count] && [NumberRespondedWith integerValue] != 0) { // nil check
                        [gameController holdDie:(((int)[NumberRespondedWith integerValue]) - 1)];
                        NSLog(@"As you wish! I've change die %i", (int)[NumberRespondedWith integerValue]);
                    } else if ([userResponse isEqualToString:@"reset"]) {
                        [gameController resetDice];
                    } else  if (![userResponse isEqualToString:@"d"]){
                        NSLog(@"WFT? that wasn't an option");
                    }
                }
                
            } else {
                NSLog(@"Sorry I didn't understand that selection");
            }
        }
        
        
        
    }
    return 0;
}

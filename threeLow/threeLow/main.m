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

//void rollAllAndShow(NSArray *array) {
//    for (Die *d in array) {
//        [d rollDie];
//        NSLog(@"face Value: %@", d.faceValue);
//    }
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc] init];
//        Dice *dice = [[Dice alloc] init];
        
        NSString *userInput;
        
        while (![userInput isEqualToString:@"q"]) {
            userInput = [inputCollector inputForPrompt:MENU_STRING];
            
            if ([userInput isEqualToString:@"q"]) {
                break;
            } else if ([userInput isEqual:@"roll"]) {
                [gameController printFaceValues];
            } else {
                NSLog(@"Sorry I didn't understand that selection");
            }
        }
        
        
        
    }
    return 0;
}

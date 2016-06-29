//
//  main.m
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Die.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Die *die1 = [[Die alloc] init];
        Die *die2 = [[Die alloc] init];
        Die *die3 = [[Die alloc] init];
        Die *die4 = [[Die alloc] init];
        Die *die5 = [[Die alloc] init];
        
        NSArray *array = @[die1, die2, die3, die4, die5];
        
        for (Die *d in array) {
            [d rollDie];
            NSLog(@"face Value: %@", d.faceValue);
        }
        
    }
    return 0;
}

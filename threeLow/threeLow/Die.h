//
//  Die.h
//  threeLow
//
//  Created by thomas minshull on 2016-06-29.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Die : NSObject

@property (nonatomic)NSNumber *faceValue;

- (NSNumber*)rollDie;

@end

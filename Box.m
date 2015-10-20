//
//  Box.m
//  Boxes
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype) initWithHeight:(float)height Width:(float)width Depth:(float)depth
{
    self = [super init];
    
    if (self) {
        _height = height;
        _width = width;
        _depth = depth;
    }
    
    return self;
}

- (float) calculateVolume
{
    return self.height * self.width * self.depth;
}

//Add a method that takes in another box and returns how many times one box will fit inside the other.
//Be conscious about understanding which box has a greater volume and how that will affect the result.

- (float) canFitBoxSoManyTimes:(Box *)otherBox
{

    if ([self calculateVolume] > [otherBox calculateVolume]) {
        return [self calculateVolume] / [otherBox calculateVolume];
    } else {
        return 0;
    }
    
}


@end

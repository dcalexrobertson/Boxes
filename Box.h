//
//  Box.h
//  Boxes
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

- (instancetype) initWithHeight:(float)height Width:(float)width Depth:(float)depth;

- (float) calculateVolume;

//Add a method that takes in another box and returns how many times one box will fit inside the other.
//Be conscious about understanding which box has a greater volume and how that will affect the result.

- (float) canFitBoxSoManyTimes:(Box *)otherBox;

@end

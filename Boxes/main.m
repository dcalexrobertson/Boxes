//
//  main.m
//  Boxes
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Box *box = [[Box alloc] initWithHeight:4 Width:5 Depth:6];
        
        float boxVolume = [box calculateVolume];
        
        NSLog(@"The volume of the box is %0.2f", boxVolume);
        
        Box *box2 = [[Box alloc] initWithHeight:2 Width:3 Depth:4];
        
        float boxVolume2 = [box2 calculateVolume];
        
        NSLog(@"The volume of the second box is %0.2f", boxVolume2);
        
        float fitsHowManyTimes = [box canFitBoxSoManyTimes:box2];
        
        NSLog(@"The second box can fit into the first box %0.2f times", fitsHowManyTimes);
        
    }
    return 0;
}

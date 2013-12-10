//
//  TouchUtilities.m
//  Touchburst
//
//  Created by natalie on 12/10/13.
//  Copyright (c) 2013 Natalie Podrazik. All rights reserved.
//

#import "TouchUtilities.h"

@implementation TouchUtilities

+(BOOL)isInArea:(CCSprite*)sprite point:(CGPoint)point {
    // get the frame of the sprite.
    
    NSLog(@"Sprite position: (%.2f, %.2f), sized: %.2f x %.2f\n",
          sprite.boundingBox.origin.x,
          sprite.boundingBox.origin.y,
          sprite.boundingBox.size.width, sprite.boundingBox.size.height);
    
    NSLog(@"POINT: (%.2f, %.2f)\n", point.x, point.y);
    
    
    // Use the bounding box origin instead of the position.
    BOOL is_within_x_bounds = ((point.x >= sprite.boundingBox.origin.x) &&
                               (point.x <= (sprite.boundingBox.origin.x + sprite.boundingBox.size.width)));
    
    
    BOOL is_within_y_bounds = ((point.y >= sprite.boundingBox.origin.y) &&
                               (point.y <= (sprite.boundingBox.origin.y + sprite.boundingBox.size.height)));
    
    return (is_within_x_bounds && is_within_y_bounds);
    
    
}



@end

//
//  TouchUtilities.h
//  Touchburst
//
//  Created by natalie on 12/10/13.
//  Copyright (c) 2013 Natalie Podrazik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


@interface TouchUtilities : NSObject
+(BOOL)isInArea:(CCSprite*)sprite point:(CGPoint)point;

@end

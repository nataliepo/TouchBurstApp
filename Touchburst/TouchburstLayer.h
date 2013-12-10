//
//  TouchburstLayer.h
//  Touchburst
//
//  Created by natalie on 12/5/13.
//  Copyright 2013 Natalie Podrazik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface TouchburstLayer : CCLayerColor  {
    NSMutableArray * circles_;
}
// returns a CCScene that contains the TouchburstLayer as the only child
+(CCScene *) scene;

@property (readonly)NSMutableArray * circles;


@end

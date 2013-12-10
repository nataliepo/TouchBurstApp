//
//  GreetingLayer.h
//  Touchburst
//
//  Created by natalie on 12/5/13.
//  Copyright Natalie Podrazik 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface GreetingLayer : CCLayerColor {
    CCSprite *beginButton_;

}

@property (nonatomic, retain) CCSprite * beginButton;

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end

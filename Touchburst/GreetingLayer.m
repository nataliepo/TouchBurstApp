//
//  GreetingLayer.m
//  Touchburst
//
//  Created by natalie on 12/5/13.
//  Copyright Natalie Podrazik 2013. All rights reserved.
//


// Import the interfaces
#import "GreetingLayer.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#import "TouchburstLayer.h"

#import "TouchUtilities.h"

#pragma mark - GreetingLayer


// HelloWorldLayer implementation
@implementation GreetingLayer

@synthesize beginButton=beginButton_;


// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	GreetingLayer *layer = [GreetingLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super initWithColor:ccc4(255, 255, 100, 255)]) ) {
		
    
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Touchburst" fontName:@"Futura-Medium" fontSize:64];

		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
        
        beginButton_ = [CCSprite spriteWithFile: @"begin.png"];
        beginButton_.scale = 2.0;
        beginButton_.position = ccp( 275, 75 );
        
        
        
        // self.touchEnabled = YES;
        
        [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self
                                                                  priority:0
                                                           swallowsTouches:YES];
        [self addChild: beginButton_];
	}
	return self;
}

-(void)openTouchBurst:(CCMenuItem  *) menuItem {
    NSLog(@"About to open the touch burst screen.\n");
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionCrossFade transitionWithDuration:1.0
                                                                                      scene:[TouchburstLayer scene] ]];

}



// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
    beginButton_ = nil;
    
	// don't forget to call "super dealloc"
	[super dealloc];
}

# pragma mark - Touch delegate responses
- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
	return YES;
}
- (void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event {
	CGPoint location = [touch locationInView: [touch view]];
	CGPoint convertedLocation = [[CCDirector sharedDirector] convertToGL:location];
    
    if ([TouchUtilities isInArea:beginButton_ point:convertedLocation]) {
        // turn touch off?
        /*
         [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self
                                                                  priority:0
                                                           swallowsTouches:YES];
         */
        [[[CCDirector sharedDirector] touchDispatcher] removeDelegate:self];
    
        
        [self openTouchBurst:nil];
    }
    else {
        NSLog(@"Out of bounds.\n");
        
    }
    
    
	// [cocosGuy stopAllActions];
	// [cocosGuy runAction: [CCMoveTo actionWithDuration:1 position:convertedLocation]];
}

@end

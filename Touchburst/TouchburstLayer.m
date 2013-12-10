//
//  TouchburstLayer.m
//  Touchburst
//
//  Created by natalie on 12/5/13.
//  Copyright 2013 Natalie Podrazik. All rights reserved.
//

#import "TouchburstLayer.h"
#import "BrilliantColors.h"
#import "TouchUtilities.h"

#define NUM_CIRCLES 25
#define BUFFER 10
#define MIN_CIRCLE_SIZE 50
#define MAX_CIRCLE_SIZE 200

#define DEFAULT_CIRCLE_SIZE 100


@implementation TouchburstLayer

@synthesize circles=circles_;



// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene {
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	TouchburstLayer *layer = [TouchburstLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init {
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super initWithColor:ccc4(255, 200, 255, 255)]) ) {

        // seed randomizer.
        srand(time(0));

        [self setUpCircles];
        
        [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self
                                                                  priority:0
                                                           swallowsTouches:YES];
        
    }
    
    return self;
}

/*
-(void)draw {
    // When we set up the circles in this draw method,
    // it keeps repeating on a timer.

        
    [self setUpCircles];


    
    

}
 */

-(void)drawCGCircleAtPoint:(CGPoint)point radius:(float)radius {
    
    
    ccDrawColor4F(100, 100, 100, 255);
    
    
    ccDrawSolidCircle(point, radius, 360);
}

-(CCSprite*)drawRandomSpriteCircle {
    
    
    
    // get the max size first.
    CGSize screenSize = [[CCDirector sharedDirector] winSize];
    
    // reduce the size by the buffer x2 on both edges.
    screenSize = CGSizeMake(screenSize.width - (2 * BUFFER),
                            screenSize.height - (2 * BUFFER));
    
    
    int rand_x = (rand() % (int)screenSize.width) + BUFFER;
    int rand_y = (rand() % (int)screenSize.height) + BUFFER;
    
    
    
    // Make a circle.
    int radius = (rand() % (MAX_CIRCLE_SIZE - MIN_CIRCLE_SIZE)) + MIN_CIRCLE_SIZE;
    
    
    
    CGPoint center = ccp(rand_x, rand_y);
    
    // instead of drawing these programmatically...
    // [self drawCGCircleAtPoint:center radius:radius];
    

    
    float scale = (radius) / (float)DEFAULT_CIRCLE_SIZE;
    
    CCSprite * sprite = [CCSprite spriteWithFile:@"circle.png"];

    sprite.position = center;
    [sprite setScale:scale];
    
    [sprite setColor:[BrilliantColors randomColor]];
    
    
    [self addChild:sprite];
    
    return sprite;
}




-(void)setUpCircles {
    
    // first, allocate space for NUM_CIRCLES.
    circles_ = [[NSMutableArray alloc] initWithCapacity:NUM_CIRCLES];
    
    for (int i = 0; i < NUM_CIRCLES; i++) {
       CCSprite * sprite = [self drawRandomSpriteCircle];
       [sprite setTag:(i + 1)];
        
        [circles_ addObject:sprite];
        
        sprite = nil;
    }
}


-(void)removeCircle:(int)index {
    
    CCSprite * sprite = [circles_ objectAtIndex:index];
    
    [self removeChild:sprite cleanup:YES];
    
    // Then, add a new one in its place.
    // CCSprite * newCircle = [self drawRandomSpriteCircle];
    // [sprite setTag:(index + 1)];
    
    [circles_ insertObject:[self drawRandomSpriteCircle] atIndex:index];
}

# pragma mark - Touch delegate responses
- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {

	
    return YES;
}
- (void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event {
    
    CGPoint location = [touch locationInView: [touch view]];
	CGPoint convertedLocation = [[CCDirector sharedDirector] convertToGL:location];

    NSLog(@"beginning to check circles...\n");
    int finite_count = [circles_ count];
    int i = (finite_count - 1);
    BOOL circle_found = NO;
    while (i >= 0 && !circle_found) {
        CCSprite * sprite = [circles_ objectAtIndex:i];
        if ([TouchUtilities isInArea:sprite point:convertedLocation]) {
            NSLog(@"!! Found it: sprite number: %d\n", (i + 1));
            
            [self removeCircle:i];
            circle_found = YES;
        }
        i--;
    }
    
    NSLog(@"circle check complete.\n");

}


@end

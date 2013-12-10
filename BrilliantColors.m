//
//  BrilliantColors.m
//  Touchburst
//
//  Created by natalie on 12/10/13.
//  Copyright (c) 2013 Natalie Podrazik. All rights reserved.
//

#import "BrilliantColors.h"

#define NUM_COLORS 131



@implementation BrilliantColors

// colors, courtesy of:
// http://www.cocos2d-iphone.org/forums/topic/cccolor3b-predefined-colors/
// and syntax for making an array of ccColor3B's here:
// http://brandontreb.com/Cocos2D-Tutorial-Dynamically-Coloring-Sprites

+(ccColor3B)randomColor {
    
    
    
    ccColor3B colors[] = {
        //! AliceBlue color (240,248,255)
        {240,248,255},

        //! AntiqueWhite color (250,235,215)
        {250,235,215},
    
        //! Aqua color (0,255,255)
        {0,255,255},
    
        //! Aquamarine color (127,255,212)
        {127,255,212},
        
        //! Azure color (240,255,255)
        {240,255,255},
        
        //! Beige color (245,245,220)
        {245,245,220},
        
        //! Bisque color (255,228,196)
        {255,228,196},
        
        //! BlanchedAlmond color (255,235,205)
        {255,235,205},
        
        //! BlueViolet color (138,43,226)
        {138,43,226},
        
        //! Brown color (165,42,42)
        {165,42,42},
        
        //! BurlyWood color (222,184,135)
        {222,184,135},
        
        //! CadetBlue color (95,158,160)
        {95,158,160},
        
        //! Chartreuse color (127,255,0)
        {127,255,0},
        
        //! Chocolate color (210,105,30)
        {210,105,30},
        
        //! Coral color (255,127,80)
        {255,127,80},
        
        //! CornflowerBlue color (100,149,237)
        {100,149,237},
        
        //! Cornsilk color (255,248,220)
        {255,248,220},
        
        //! Crimson color (220,20,60)
        {220,20,60},
        
        //! Cyan color (0,255,255)
        {0,255,255},
        
        //! DarkBlue color (0,0,139)
        {0,0,139},
        
        //! DarkCyan color (0,139,139)
        {0,139,139},
        
        //! DarkGoldenRod color (184,134,11)
        {184,134,11},
        
        //! DarkGray color (169,169,169)
        {169,169,169},
        
        //! DarkGreen color (0,100,0)
        {0,100,0},
        
        //! DarkKhaki color (189,183,107)
        {189,183,107},
        
        //! DarkMagenta color (139,0,139)
        {139,0,139},
        
        //! DarkOliveGreen color (85,107,47)
        {85,107,47},
        
        //! Darkorange color (255,140,0)
        {255,140,0},
        
        //! DarkOrchid color (153,50,204)
        {153,50,204},
        
        //! DarkRed color (139,0,0)
        {139,0,0},
        
        //! DarkSalmon color (233,150,122)
        {233,150,122},
        
        //! DarkSeaGreen color (143,188,143)
        {143,188,143},
        
        //! DarkSlateBlue color (72,61,139)
        {72,61,139},
        
        //! DarkSlateGray color (47,79,79)
        {47,79,79},
        
        //! DarkTurquoise color (0,206,209)
        {0,206,209},
        
        //! DarkViolet color (148,0,211)
        {148,0,211},
        
        //! DeepPink color (255,20,147)
        {255,20,147},
        
        //! DeepSkyBlue color (0,191,255)
        {0,191,255},
        
        //! DimGray color (105,105,105)
        {105,105,105},
        
        //! DodgerBlue color (30,144,255)
        {30,144,255},
        
        //! FireBrick color (178,34,34)
        {178,34,34},
        
        //! FloralWhite color (255,250,240)
        {255,250,240},
        
        //! ForestGreen color (34,139,34)
        {34,139,34},
        
        //! Fuchsia color (255,0,255)
        {255,0,255},
        
        //! Gainsboro color (220,220,220)
        {220,220,220},
        
        //! GhostWhite color (248,248,255)
        {248,248,255},
        
        //! Gold color (255,215,0)
        {255,215,0},
        
        //! GoldenRod color (218,165,32)
        {218,165,32},
        
        //! GreenYellow color (173,255,47)
        {173,255,47},
        
        //! HoneyDew color (240,255,240)
        {240,255,240},
        
        //! HotPink color (255,105,180)
        {255,105,180},
        
        //! IndianRed color (205,92,92)
        {205,92,92},
        
        //! Indigo color (75,0,130)
        {75,0,130},
        
        //! Ivory color (255,255,240)
        {255,255,240},
        
        //! Khaki color (240,230,140)
        {240,230,140},
        
        //! Lavender color (230,230,250)
        {230,230,250},
        
        //! LavenderBlush color (255,240,245)
        {255,240,245},
        
        //! LawnGreen color (124,252,0)
        {124,252,0},
        
        //! LemonChiffon color (255,250,205)
        {255,250,205},
        
        //! LightBlue color (173,216,230)
        {173,216,230},
        
        //! LightCoral color (240,128,128)
        {240,128,128},
        
        //! LightCyan color (224,255,255)
        {224,255,255},
        
        //! LightGoldenRodYellow color (250,250,210)
        {250,250,210},
        
        //! LightGrey color (211,211,211)
        {211,211,211},
        
        //! LightGreen color (144,238,144)
        {144,238,144},
        
        //! LightPink color (255,182,193)
        {255,182,193},
        
        //! LightSalmon color (255,160,122)
        {255,160,122},
        
        //! LightSeaGreen color (32,178,170)
        {32,178,170},
        
        //! LightSkyBlue color (135,206,250)
        {135,206,250},
        
        //! LightSlateGray color (119,136,153)
        {119,136,153},
        
        //! LightSteelBlue color (176,196,222)
        {176,196,222},
        
        //! LightYellow color (255,255,224)
        {255,255,224},
        
        //! Lime color (0,255,0)
        {0,255,0},
        
        //! LimeGreen color (50,205,50)
        {50,205,50},
        
        //! Linen color (250,240,230)
        {250,240,230},
        
        //! Maroon color (128,0,0)
        {128,0,0},
        
        //! MediumAquaMarine color (102,205,170)
        {102,205,170},
        
        //! MediumBlue color (0,0,205)
        {0,0,205},
        
        //! MediumOrchid color (186,85,211)
        {186,85,211},
        
        //! MediumPurple color (147,112,216)
        {147,112,216},
        
        //! MediumSeaGreen color (60,179,113)
        {60,179,113},
        
        //! MediumSlateBlue color (123,104,238)
        {123,104,238},
        
        //! MediumSpringGreen color (0,250,154)
        {0,250,154},
        
        //! MediumTurquoise color (72,209,204)
        {72,209,204},
        
        //! MediumVioletRed color (199,21,133)
        {199,21,133},
        
        //! MidnightBlue color (25,25,112)
        {25,25,112},
        
        //! MintCream color (245,255,250)
        {245,255,250},
        
        //! MistyRose color (255,228,225)
        {255,228,225},
        
        //! Moccasin color (255,228,181)
        {255,228,181},
        
        //! NavajoWhite color (255,222,173)
        {255,222,173},
        
        //! Navy color (0,0,128)
        {0,0,128},
        
        //! OldLace color (253,245,230)
        {253,245,230},
        
        //! Olive color (128,128,0)
        {128,128,0},
        
        //! OliveDrab color (107,142,35)
        {107,142,35},
        
        //! OrangeRed color (255,69,0)
        {255,69,0},
        
        //! Orchid color (218,112,214)
        {218,112,214},
        
        //! PaleGoldenRod color (238,232,170)
        {238,232,170},
        
        //! PaleGreen color (152,251,152)
        {152,251,152},
        
        //! PaleTurquoise color (175,238,238)
        {175,238,238},
        
        //! PaleVioletRed color (216,112,147)
        {216,112,147},
        
        //! PapayaWhip color (255,239,213)
        {255,239,213},
        
        //! PeachPuff color (255,218,185)
        {255,218,185},
        
        //! Peru color (205,133,63)
        {205,133,63},
        
        //! Pink color (255,192,203)
        {255,192,203},
        
        //! Plum color (221,160,221)
        {221,160,221},
        
        //! PowderBlue color (176,224,230)
        {176,224,230},
        
        //! Purple color (128,0,128)
        {128,0,128},
        
        //! RosyBrown color (188,143,143)
        {188,143,143},
        
        //! RoyalBlue color (65,105,225)
        {65,105,225},
        
        //! SaddleBrown color (139,69,19)
        {139,69,19},
        
        //! Salmon color (250,128,114)
        {250,128,114},
        
        //! SandyBrown color (244,164,96)
        {244,164,96},
        
        //! SeaGreen color (46,139,87)
        {46,139,87},
        
        //! SeaShell color (255,245,238)
        {255,245,238},
        
        //! Sienna color (160,82,45)
        {160,82,45},
        
        //! Silver color (192,192,192)
        {192,192,192},
        
        //! SkyBlue color (135,206,235)
        {135,206,235},
        
        //! SlateBlue color (106,90,205)
        {106,90,205},
        
        //! SlateGray color (112,128,144)
        {112,128,144},
        
        //! Snow color (255,250,250)
        {255,250,250},
        
        //! SpringGreen color (0,255,127)
        {0,255,127},
        
        //! SteelBlue color (70,130,180)
        {70,130,180},
        
        //! Tan color (210,180,140)
        {210,180,140},
        
        //! Teal color (0,128,128)
        {0,128,128},
        
        //! Thistle color (216,191,216)
        {216,191,216},
        
        //! Tomato color (255,99,71)
        {255,99,71},
        
        //! Turquoise color (64,224,208)
        {64,224,208},
        
        //! Violet color (238,130,238)
        {238,130,238},
        
        //! Wheat color (245,222,179)
        {245,222,179},
        
        //! WhiteSmoke color (245,245,245)
        {245,245,245},
        
        //! YellowGreen color (154,205,50)
        {154,205,50},
    };
    

    int random_index = (rand() % NUM_COLORS);
    
    return colors[random_index];
}
@end

//
//  SquareFinder.m
//  SchorChess
//
//  Created by Adam Schor on 6/15/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "SquareFinder.h"

@implementation SquareFinder

+(CGPoint)findSquare:(float)xCorner yCorner:(float)yCorner width:(float)width xPosiiton:(float)xPosition yPosition:(float)yPosition startPoint:(CGPoint)startPoint{
   
    
    float xOffset = xPosition - xCorner;
    float yOffset = yPosition - yCorner;
    
    NSInteger column = xOffset/width +1;
    NSInteger row = yOffset/width + 1;
    
    
    
    float centerSquareX = xCorner + column * width - width/2;
    float centerSquareY = yCorner + row * width - width/2;
    CGPoint center;
    if (xPosition<xCorner || yPosition>yCorner+8*width || xPosition>xCorner+8*width || yPosition<yCorner) {
         center = startPoint;
        
    }
    else {
      center = CGPointMake(centerSquareX, centerSquareY);
    }
    
    return center;
    
}



@end

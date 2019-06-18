//
//  SquareFinder.h
//  SchorChess
//
//  Created by Adam Schor on 6/15/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SquareFinder : NSObject


+(CGPoint)findSquare:(float)xCorner yCorner:(float)yCorner width:(float)width xPosiiton:(float)xPosition yPosition:(float)yPosition startPoint:(CGPoint)startPoint;



@end

NS_ASSUME_NONNULL_END

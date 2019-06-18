//
//  Board.h
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pawn.h"
#import "King.h"
#import "Queen.h"
#import "Rook.h"
#import "Knight.h"
#import "Bishop.h"







NS_ASSUME_NONNULL_BEGIN

@interface Board : UIView

-(Board *)makeBoardWithView: (UIView*)view width:(NSInteger)width height: (NSInteger)height;

@property float currentX;
@property float currentY;

@property UIView* view;
@property NSInteger startX;
@property NSInteger startY;
@property NSInteger squareWidth;
@property UIColor* color1;
@property UIColor* color2 ;

@property (strong, nonatomic) UIView *viewSquare;

@property (strong, nonatomic) NSMutableArray *arrSquares;

@property CGPoint startLocation;

@property NSInteger squareNumber;

@property NSInteger gameSide; //0 means white on bottom 1 means black on bottom


@end

NS_ASSUME_NONNULL_END

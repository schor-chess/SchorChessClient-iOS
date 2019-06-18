//
//  Piece.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Piece.h"
#import "Board.h"
#import "SquareFinder.h"

@implementation Piece

+(Piece*)createPieceOnBoard: (Board *) board pieceName: (NSInteger)pieceID pieceColor: (NSString*)color active:(BOOL)isActive{
    
    
    Piece *piece = [[Piece alloc] init];
    piece.board = board;
    piece.backgroundColor = [UIColor clearColor];
    
    if (isActive) {
        
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:piece action:@selector(pieceTouched:)];
    [pan setMaximumNumberOfTouches:1];
    [pan setMinimumNumberOfTouches:1];
    [piece addGestureRecognizer:pan];
    [piece setUserInteractionEnabled:YES];
    }

    switch (pieceID) {
        case 1:
            //PAWNS
            if ([color isEqualToString: @"black"]) {
                piece.image = [UIImage imageNamed:@"blackPawn"];
            }
            else {
                piece.image = [UIImage imageNamed:@"whitePawn"];
            }
            
            break;
            
        default:
            break;
    }
    
    piece.tag = pieceID;
    return piece;
    
}



-(void)pieceTouched:(UIPanGestureRecognizer *)recognizer{
    
    
    UIView *squareSelected = recognizer.view;
    [_board.view bringSubviewToFront:squareSelected];
    
    switch (squareSelected.tag) {
        case 1:
            NSLog(@"This is a pawn");
            break;
        case 2:
            NSLog(@"This is a rook");
            break;
        case 3:
            NSLog(@"This is a knight");
            break;
        case 4:
            NSLog(@"This is a bishop");
            break;
        case 5:
            NSLog(@"This is the queen");
            break;
        case 6:
            NSLog(@"This is the king");
            break;
        default:
            break;
    }
  
    

    CGPoint translation = [recognizer translationInView:_board.view];
    CGPoint newLocation = CGPointMake(squareSelected.center.x+translation.x, squareSelected.center.y+translation.y);
    squareSelected.center = newLocation;
    
    if (newLocation.x<_board.startX+_board.squareWidth*8 && newLocation.y < _board.startY + _board.squareWidth *8) {
        
        [self findActiveSquare:newLocation.x yValue:newLocation.y];
    }
    else {
        UIView * finishedSquare = _board.arrSquares[_board.squareNumber-1];
        finishedSquare.layer.borderWidth = 0;
    }
    
    [recognizer setTranslation:CGPointMake(0, 0) inView:_board.view];
    
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        _board.startLocation = squareSelected.center;
        
    }
    
    
    
    if (recognizer.state == UIGestureRecognizerStateEnded ) {
        _board.currentX =squareSelected.center.x;
        _board.currentY =squareSelected.center.y;
        
        squareSelected.center = [SquareFinder findSquare:_board.startX yCorner:_board.startY width:_board.squareWidth  xPosiiton:_board.currentX yPosition:_board.currentY startPoint:_board.startLocation];
        
        UIView * finishedSquare = _board.arrSquares[_board.squareNumber-1];
        finishedSquare.layer.borderWidth = 0;
        
    }
   
    
}


-(void)findActiveSquare: (float)xValue yValue:(float)yValue {
   
   
    NSInteger column = (xValue - _board.startX)/_board.squareWidth + 1;
    NSInteger row = (yValue - _board.startY)/_board.squareWidth +1;
    
    _board.squareNumber = (row-1) * 8 + column;
    
    for (UIView *activeSquare in _board.arrSquares) {
        if (activeSquare.tag == _board.squareNumber-1) {
            activeSquare.layer.borderColor = [[UIColor blueColor] CGColor];
            activeSquare.layer.borderWidth = 7;
        }
        else {
            
            activeSquare.layer.borderWidth = 0;
        }
    }
    
    
    
   
}




@end

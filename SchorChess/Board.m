//
//  Board.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Board.h"

@implementation Board

-(Board *)makeBoardWithView: (UIView*)view width:(NSInteger)width height: (NSInteger)height{
    _gameSide = 1; //means black on bottom
   
    _view = view;
   
    _startX = width*.05;
    _startY = height*.05;
    _squareWidth = width*.9/8;
    _color1 = [UIColor whiteColor];
    _color2 = [UIColor greenColor];
    
     _arrSquares = [[NSMutableArray alloc] init];
    
    
 
    
    for (int y=0; y<8; y++) {
        
        for (int x = 0; x<8; x++) {
        _viewSquare = [[UIView alloc]initWithFrame:CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth)];
        _viewSquare.tag = (y * 8)+ x;
         
            
            [view addSubview:_viewSquare];
            
            
            if (y%2) {
                
                if (x%2) {
                    _viewSquare.backgroundColor = _color1;
                   

                }
                
                else{
                    _viewSquare.backgroundColor = _color2;
                }
            }
            if (!(y%2)) {
                
                if (x%2) {
                    _viewSquare.backgroundColor = _color2;
                }
                
                else{
                    _viewSquare.backgroundColor = _color1;
                }
            }
            
            switch (_gameSide) {
                case 1:
                    
                    break;
                    
                default:
                    break;
            }
           //BLACK PAWN ROW
            if (y==6) {
                Pawn *pawn = [Pawn makePawnOnBoard:self];
                pawn.frame = CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth);
                
                [view addSubview:pawn];
               
                
                
            }
            
           //ADD BLACK KING
            if (y==7 && x ==3) {
                King *king = [King makeKingOnBoard:self];
                king.frame = CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth);
                
                [view addSubview:king];
            }
            
            //ADD BLACK QUEEN
            if (y==7 && x ==4) {
                Queen *queen = [Queen makeQueenOnBoard:self];
                queen.frame = CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth);
                
                [view addSubview:queen];
            }
            
            //ADD BLACK ROOKS
            if ((y==7 && x ==0) || (y==7 && x ==7)) {
                Rook *rook = [Rook makeRookOnBoard:self];
                rook.frame = CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth);
                
                [view addSubview:rook];
            }
           //ADD BLACK KNIGHTS
            if ((y==7 && x ==1) || (y==7 && x ==6)) {
                 Knight *knight = [Knight makeKnightOnBoard:self];
                knight.frame = CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth);
                
                [view addSubview:knight];
            }
            //ADD BLACK BISHOPS
            if ((y==7 && x ==2) || (y==7 && x ==5)) {
                 Bishop *bishop = [Bishop makeBishopOnBoard:self];
                bishop.frame = CGRectMake(_startX +(_squareWidth* x), _startY+(_squareWidth* y), _squareWidth, _squareWidth);
                
                [view addSubview:bishop];
            }
                [_arrSquares addObject:_viewSquare];
}
        
       
       
        
    }
    
    return self;
    
}







@end

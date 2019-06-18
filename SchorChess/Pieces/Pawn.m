//
//  Pawn.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Pawn.h"
#import "Board.h"

@implementation Pawn

+(Pawn*)makePawnOnBoard: (Board *) board color:(NSString *)pieceColor active: (BOOL)isActive{

  
Pawn *pawn = (Pawn *)[Piece createPieceOnBoard:(Board*)board active:isActive];
  
    if ([pieceColor isEqualToString:@"white"]) {
        
        pawn.image = [UIImage imageNamed:@"whitePawn.png"];
}
    else {pawn.image = [UIImage imageNamed:@"blackPawn.png"];
    }
    pawn.tag = 1;
    

    
    return pawn;
    
}







/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

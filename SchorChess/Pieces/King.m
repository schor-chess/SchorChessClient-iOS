//
//  King.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "King.h"

@implementation King
+(King*)makeKingOnBoard: (Board *) board{
    
  King *king = (King *)[Piece createPieceOnBoard: (Board *) board];
    
    king.image = [UIImage imageNamed:@"blackKing.png"];
    king.tag = 6;
  
    return king;
  
}

@end

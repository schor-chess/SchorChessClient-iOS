//
//  Bishop.m
//  SchorChess
//
//  Created by Adam Schor on 6/17/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Bishop.h"

@implementation Bishop

+(Bishop*)makeBishopOnBoard: (Board *) board{
    
    Bishop *bishop = (Bishop *)[Piece createPieceOnBoard: (Board *) board];
    
    bishop.image = [UIImage imageNamed:@"blackBishop.png"];
    bishop.tag = 4;
    
    return bishop;
}

@end

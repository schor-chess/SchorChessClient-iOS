//
//  Knight.m
//  SchorChess
//
//  Created by Adam Schor on 6/17/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Knight.h"

@implementation Knight

+(Knight*)makeKnightOnBoard: (Board *) board{
    
    Knight *knight = (Knight *)[Piece createPieceOnBoard: (Board *) board];
    
    knight.image = [UIImage imageNamed:@"blackKnight.png"];
    knight.tag = 3;
    
    return knight;
}

@end

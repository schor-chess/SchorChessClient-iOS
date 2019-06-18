//
//  Queen.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Queen.h"

@implementation Queen
+(Queen*)makeQueenOnBoard: (Board *) board{
    
    Queen *queen = (Queen*)[Piece createPieceOnBoard: (Board *) board];
    
    queen.image = [UIImage imageNamed:@"blackQueen.png"];
    queen.tag = 5;
    
    return queen;
}

@end

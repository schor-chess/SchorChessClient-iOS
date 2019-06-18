//
//  Rook.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Rook.h"

@implementation Rook

+(Rook*)makeRookOnBoard: (Board *) board{
    
    Rook *rook = (Rook *)[Piece createPieceOnBoard: (Board *) board];
    
    rook.image = [UIImage imageNamed:@"blackRook.png"];
    rook.tag = 2;
    
    return rook;
}


@end

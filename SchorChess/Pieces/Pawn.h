//
//  Pawn.h
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Piece.h"


NS_ASSUME_NONNULL_BEGIN

@interface Pawn : Piece

+(Pawn*)makePawnOnBoard: (Board *) board color:(NSString *)pieceColor active: (BOOL)isActive;


@end

NS_ASSUME_NONNULL_END

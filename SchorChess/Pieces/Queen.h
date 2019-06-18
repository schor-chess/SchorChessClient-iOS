//
//  Queen.h
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Piece.h"

NS_ASSUME_NONNULL_BEGIN

@interface Queen : Piece
+(Queen*)makeQueenOnBoard: (Board *) board;
@end

NS_ASSUME_NONNULL_END

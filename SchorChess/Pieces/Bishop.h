//
//  Bishop.h
//  SchorChess
//
//  Created by Adam Schor on 6/17/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "Piece.h"

NS_ASSUME_NONNULL_BEGIN

@interface Bishop : Piece

+(Bishop*)makeBishopOnBoard: (Board *) board;

@end

NS_ASSUME_NONNULL_END

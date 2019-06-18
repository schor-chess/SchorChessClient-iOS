//
//  Piece.h
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Board;


NS_ASSUME_NONNULL_BEGIN

@interface Piece : UIImageView

+(Piece*)createPieceOnBoard: (Board *) board;
@property Board * board;

@end

NS_ASSUME_NONNULL_END

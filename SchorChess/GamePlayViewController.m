//
//  GamePlayViewController.m
//  SchorChess
//
//  Created by Adam Schor on 6/16/19.
//  Copyright © 2019 AandA Development. All rights reserved.
//

#import "GamePlayViewController.h"

@interface GamePlayViewController ()

@end

@implementation GamePlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self makeBoard];
}

-(void)makeBoard {
    NSInteger screenWidth = self.view.frame.size.width;
    NSInteger screenHeight = self.view.frame.size.height;
    
    Board *board = [[Board alloc] init];
    [board makeBoardWithView:self.view width:screenWidth height:screenHeight];
    
    
    
    
    
    
    [self.view addSubview:board];
    
}

@end

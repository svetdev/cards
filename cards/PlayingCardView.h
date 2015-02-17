//
//  PlayingCardView.h
//  cards
//
//  Created by Andrey on 2/17/15.
//  Copyright (c) 2015 Svetliy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong,nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

@end

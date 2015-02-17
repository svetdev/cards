//
//  PlayingCardView.m
//  cards
//
//  Created by Andrey on 2/17/15.
//  Copyright (c) 2015 Svetliy. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView
#pragma mark - Setup

-(void)setSuit:(NSString *)suit{
    _suit = suit;
    [self setNeedsDisplay];
}

-(void)setRank:(NSUInteger)rank {
    _rank = rank;
    [self setNeedsDisplay];
}

-(void)setFaceUp:(BOOL)faceUp{
    _faceUp = faceUp;
    [self setNeedsDisplay];
}

#define CORNER_FONT_STANDART_HEIGHT 100.0
#define CORNER_RADIUS 12.0

-(CGFloat)cornerScaleFactor {return self.bounds.size.height / CORNER_FONT_STANDART_HEIGHT; }
-(CGFloat)cornerRadius { return CORNER_RADIUS * [self cornerScaleFactor]; }
-(CGFloat)cornerOffset { return [self cornerRadius] / 3.0; }

#pragma mark - Draw Card

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:[self cornerRadius]];
    //Don't draw outside of rect
    [roundedRect addClip];
    
    [[UIColor whiteColor] setFill];
    UIRectFill(self.bounds);
    
    [[UIColor blackColor] setStroke];
    [roundedRect stroke];
    
    
}



#pragma mark - Initialization

-(void)setup{
    self.backgroundColor = nil;
    self.opaque = NO;
    self.contentMode = UIViewContentModeRedraw;
}

-(void)awakeFromNib{
    [self setup];
}


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        // Initialization code
    }
    return self;
    
}

@end

//
//  Card.m
//  Matchismo
//
//  Created by John Xu on 1/24/15.
//  Copyright (c) 2015 Liuxizi Xu. All rights reserved.
//

#import "Card.h"

@interface Card()
//private stuff, such as property
@end

@implementation Card
//public stuff

- (int)match: (NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end

//
//  PlayingCard.h
//  Matchismo
//
//  Created by John Xu on 1/25/15.
//  Copyright (c) 2015 Liuxizi Xu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end

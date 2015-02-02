//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by John Xu on 2/2/15.
//  Copyright (c) 2015 Liuxizi Xu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designated initalizer
-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property(nonatomic,readonly) NSUInteger score;

@end

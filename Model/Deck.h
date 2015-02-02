//
//  Deck.h
//  Matchismo
//
//  Created by John Xu on 1/25/15.
//  Copyright (c) 2015 Liuxizi Xu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end

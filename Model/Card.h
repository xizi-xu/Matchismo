//
//  Card.h
//  Matchismo
//
//  Created by John Xu on 1/24/15.
//  Copyright (c) 2015 Liuxizi Xu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end

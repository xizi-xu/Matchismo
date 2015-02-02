//
//  ViewController.m
//  Matchismo
//
//  Created by John Xu on 1/24/15.
//  Copyright (c) 2015 Liuxizi Xu. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@property (strong, nonatomic) Deck *deckOfCards;
@end

@implementation ViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips :%d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    } else {
        Card *card = [self.deckOfCards drawRandomCard];
        //not flip the card once it goes through the whole deck
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

//lazy instantiate a PlayingCardDeck
- (Deck *)deckOfCards {
    if (!_deckOfCards) _deckOfCards = [[PlayingCardDeck alloc] init];
    return _deckOfCards;
}

@end
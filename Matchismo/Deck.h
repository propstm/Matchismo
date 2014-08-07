//
//  Deck.h
//  Matchismo
//
//  Created by Matthew Propst on 8/6/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card*)card atTop:(BOOL)atTop;
- (void)addCard:(Card*)card;

- (Card*)drawRandomCard;
@end

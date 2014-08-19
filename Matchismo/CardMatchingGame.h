//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Matthew Propst on 8/18/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(instancetype)initWIthCardCount:(NSUInteger)count
                       usingDeck:(Deck*)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card*)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;
@end

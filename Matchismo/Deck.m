//
//  Deck.m
//  Matchismo
//
//  Created by Matthew Propst on 8/6/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (void)addCard:(Card *)card atTop:(BOOL)atTop{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
}

- (Card*)drawRandomCard{
    Card *randomCard = nil;
    if([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}
@end

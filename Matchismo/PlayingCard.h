//
//  PlayingCard.h
//  Matchismo
//
//  Created by Matthew Propst on 8/10/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray*)rankStrings;
+ (NSUInteger)maxRank;


@end

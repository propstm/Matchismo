//
//  PlayingCard.m
//  Matchismo
//
//  Created by Matthew Propst on 8/10/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;

- (NSString*)contents
{
    
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray*)validSuits{
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}

+ (NSArray*)rankStrings
{
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count]-1;
}

@end

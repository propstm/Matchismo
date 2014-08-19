//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Matthew Propst on 8/18/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import "CardMatchingGame.h"
#import "Constants.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards; //of type Card
@end

@implementation CardMatchingGame

//Lazy init cards
-(NSMutableArray *)cards{
    if(!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(instancetype)initWIthCardCount:(NSUInteger)count usingDeck:(Deck *)deck{
    self = [super init];
    if(self){
        for(int i = 0; i< count; i++){
            Card *card = [deck drawRandomCard];
            if(card){
                [self.cards addObject:card];
            }else{
                //if no cards return nil
                self = nil;
                break;
            }
        }
    }
    
    
    return self;
}

-(Card*)cardAtIndex:(NSUInteger)index{
    if(index <[self.cards count]){
        return self.cards[index];
    }else{
        return nil;
    }
}

-(void)chooseCardAtIndex:(NSUInteger)index{
    Card *card = [self cardAtIndex:index];
    
    if(!card.isMatched){
        if(card.isChosen){
            card.chosen = NO;
        }else{
            //match other cards;
            for(Card* otherCard in self.cards){
                if(otherCard.isChosen && !otherCard.isMatched){
                    int matchScore = [card match:@[otherCard]];
                    if(matchScore){
                        self.score += matchScore + MATCH_BONUS;
                        otherCard.matched = YES;
                        card.matched = YES;
                    }else{
                        self.score -= MISMATCH_PENALTY;
                        otherCard.chosen = NO;
                    }
                }
            }
            self.score -= COST_TO_CHOOSE;
            card.chosen = YES;
        }
    }

}
@end

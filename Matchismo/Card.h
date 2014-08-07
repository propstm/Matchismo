//
//  Card.h
//  Matchismo
//
//  Created by Matthew Propst on 8/6/14.
//  Copyright (c) 2014 Matthew Propst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;

- (int)match:(NSArray*)otherCards;

@end

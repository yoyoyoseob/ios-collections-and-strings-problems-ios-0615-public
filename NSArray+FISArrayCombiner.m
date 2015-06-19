//
//  NSArray+FISArrayCombiner.m
//  ios-collections-and-strings-problems
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "NSArray+FISArrayCombiner.h"

@implementation NSArray (FISArrayCombiner)

+ (NSArray *)combineArrayOne:(NSArray *)firstArray withArrayTwo:(NSArray *)secondArray
{
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < firstArray.count; i++){
        [newArray addObject:[firstArray objectAtIndex:i]];
        [newArray addObject:[secondArray objectAtIndex:i]];
    }
    NSLog(@"%@", newArray);
    return newArray;
}

@end

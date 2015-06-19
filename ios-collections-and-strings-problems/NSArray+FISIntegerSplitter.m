//
//  NSArray+FISIntegerSplitter.m
//  ios-collections-and-strings-problems
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "NSArray+FISIntegerSplitter.h"

@implementation NSArray (FISIntegerSplitter)

+(NSArray *)integerSplitter:(NSInteger)number
{
    NSString *splitString = [NSString stringWithFormat:@"%lu", number];
    NSMutableArray *convertedArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < splitString.length; i++){
        NSString *eachNumber = [splitString substringWithRange:NSMakeRange(i, 1)];
        NSInteger numbers = [eachNumber integerValue];
        NSNumber *convertedNumber = @(numbers);
        [convertedArray addObject:convertedNumber];
    }
    
    NSLog(@"%@", convertedArray);
    return convertedArray;
}

@end

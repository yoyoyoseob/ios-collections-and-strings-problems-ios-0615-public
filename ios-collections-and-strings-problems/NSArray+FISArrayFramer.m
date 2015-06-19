//
//  NSArray+FISArrayFramer.m
//  ios-collections-and-strings-problems
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "NSArray+FISArrayFramer.h"
#import "NSString+FISStringRepeater.h"

@implementation NSArray (FISArrayFramer)

+(void)stringFramer:(NSArray *)arrayOfWords
{
    NSSortDescriptor *lengthDescriptor;
    lengthDescriptor = [[NSSortDescriptor alloc]initWithKey:@"length" ascending:NO];
    NSArray *sortDescriptors = [NSArray arrayWithObject:lengthDescriptor];
    NSArray *sortedArray = [arrayOfWords sortedArrayUsingDescriptors:sortDescriptors];
    
    NSUInteger frame = ([sortedArray[0]length] + 4);
    
    NSLog(@"%@", [NSString makeAsteriskFrameWithSize:frame]);
    
    for (NSString *word in arrayOfWords){
        NSMutableString *oneLine = [[NSMutableString alloc]init];
        
        while (oneLine.length < frame){
            if (oneLine.length == 0){
                [oneLine appendFormat:@"* %@", word];
            }
            else if (oneLine.length == frame -2){
                [oneLine appendFormat:@" *"];
            }
            else {
                [oneLine appendFormat:@" "];
            }
        }
        NSLog(@"%@", oneLine);
    }
    
    NSLog(@"%@", [NSString makeAsteriskFrameWithSize:frame]);
    
}


@end

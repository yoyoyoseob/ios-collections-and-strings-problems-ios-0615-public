//
//  NSString+FISPigLatinMaker.m
//  ios-collections-and-strings-problems
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "NSString+FISPigLatinMaker.h"

@implementation NSString (FISPigLatinMaker)

+(void)makePigLatin:(NSString *)string
{
    
    NSMutableArray *individualStringsArray = [[string componentsSeparatedByString:@" "]mutableCopy];
    NSMutableArray *newArray = [@[]mutableCopy];
    
    for (NSString *words in individualStringsArray){
        NSString *removedLetter = [[words substringToIndex:1] lowercaseString]; // Remove first letter and lowercase it
        NSMutableString *newWord = [[words stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:@""] mutableCopy]; // Pull out rest of the word
        [newWord appendFormat:@"%@ay", removedLetter]; // Append removed letter to rest of the word
        [newArray addObject:newWord];
        
    }
    NSString *newString = [newArray componentsJoinedByString:@" "];
    NSString *finalString = [newString stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[newString substringToIndex:1] capitalizedString]];
    NSLog(@"%@", finalString);
}

@end

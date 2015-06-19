//
//  NSString+FISStringRepeater.m
//  ios-collections-and-strings-problems
//
//  Created by Yoseob Lee on 6/11/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "NSString+FISStringRepeater.h"

@implementation NSString (FISStringRepeater)

+(NSString *)makeAsteriskFrameWithSize:(NSUInteger)number
{
    return [@"" stringByPaddingToLength:number withString:@"*" startingAtIndex:0];
}

@end

//
//  FISAppDelegate.m
//  ios-collections-and-strings-problems
//
//  Created by iOS Staff on 6/4/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"
#import "NSString+FISStringRepeater.h"
#import "NSArray+FISArrayFramer.h"
#import "NSString+FISPigLatinMaker.h"
#import "NSArray+FISArrayCombiner.h"
#import "NSArray+FISIntegerSplitter.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *sentenceArray = @[@"Hello", @"New", @"York", @"and", @"Brooklyn"];
    [NSArray stringFramer:sentenceArray];
    
    NSString *sentence = @"The quick brown fox";
    [NSString makePigLatin:sentence];
    
    NSArray *firstArray = @[@"a", @"b", @"c"];
    NSArray *secondArray = @[@1, @2, @3];
    [NSArray combineArrayOne:firstArray withArrayTwo:secondArray];
    
    NSInteger number = 12045;
    [NSArray integerSplitter:number];
    
    NSArray *testArray = @[@1, @2, @3, @4, @5, @6];
    NSArray *reversedArray = [[testArray reverseObjectEnumerator] allObjects];
    NSLog(@"%@", reversedArray);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

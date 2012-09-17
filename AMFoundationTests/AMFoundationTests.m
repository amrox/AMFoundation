//
//  AMFoundationTests.m
//  AMFoundationTests
//
//  Created by Andy Mroczkowski on 4/23/11.
//  Copyright 2011 Andy Mroczkowski. All rights reserved.
//

#import "AMFoundationTests.h"
#import <Availability.h>


@implementation AMFoundationTests


+ (void)initialize
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
#ifdef __MAC_OS_X_VERSION_MIN_REQUIRED
        NSLog(@"** OSX Tests **");
#endif
#ifdef __IPHONE_OS_VERSION_MIN_REQUIRED
        NSLog(@"** iOS Tests **");
#endif
    });
}

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

//- (void)testLogEnvironment
//{
//#ifdef __MAC_OS_X_VERSION_MIN_REQUIRED
//    NSLog(@"OSX Tests");
//#endif
//#ifdef __IPHONE_OS_VERSION_MIN_REQUIRED
//    NSLog(@"iOS Tests");
//#endif
//}
@end

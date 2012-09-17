//
//  AMExtensions.m
//  AMSpringboardView
//
//  Created by Andy Mroczkowski on 3/2/11.
//  Copyright 2011 Andy Mroczkowski. All rights reserved.
//

#import "AMExtensions.h"


@implementation NSArray (AMExtensions)

- (id) am_firstObject
{
    if( [self count] > 0 )
        return [self objectAtIndex:0];
    return nil;
}

@end


@implementation NSData (AMExtensions)

- (id) am_utf8String
{
    NSString* string = [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
    return [string autorelease];
}


@end


//
//  AMExtensions.h
//  AMSpringboardView
//
//  Created by Andy Mroczkowski on 3/2/11.
//  Copyright 2011 Andy Mroczkowski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSArray (AMExtensions)

- (id) am_firstObject;

@end


@interface NSData (AMExtensions)

- (NSString*) am_utf8String;

@end
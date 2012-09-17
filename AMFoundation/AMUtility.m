//
//  Utility.m
//  GeoTick
//
//  Created by Andy Mroczkowski on 3/10/11.
//  Copyright 2011 Andy Mroczkowski. All rights reserved.
//

#import "AMUtility.h"

NSString* AMGetUUID(void)
{
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    return [(NSString *)string autorelease];
}

NSString* AMGetApplicationDocumentsDirectory(void)
{
	return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

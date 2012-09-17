/*
 *  AMLogMacros.h
 *  AMStuff
 *
 *  Created by Andy Mroczkowski on 3/14/11.
 *  Copyright 2011 Andy Mroczkowski. All rights reserved.
 *
 */


#ifdef DEBUG
	#define AMLOG_DEBUG(fmt, ...)    (NSLog(fmt, ##__VA_ARGS__));
	#define AMLOG_TRACE()            (NSLog(@"%s:%d", __FILE__, __LINE__));
#else
	#define AMLOG_DEBUG(...)
	#define AMLOG_TRACE()
#endif

#define AMLOG_WARNING(fmt, ...)   (NSLog(@"WARN: %s " fmt, __PRETTY_FUNCTION__, ##__VA_ARGS__));
#define AMLOG_ERROR(fmt, ...)		(NSLog(@"ERR: %s " fmt, __PRETTY_FUNCTION__, ##__VA_ARGS__));

#define AMFourCC2Str(code) (char[5]){(code >> 24) & 0xFF, (code >> 16) & 0xFF, (code >> 8) & 0xFF, code & 0xFF, 0}

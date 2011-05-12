#import "AMError.h"

NSError* _AMErrorMake( int errorCode, char const *errorName,  char const *fileName, int lineNumber, NSDictionary *userInfo )
{
	NSString *errorNameString = [NSString stringWithCString:errorName encoding:NSUTF8StringEncoding];
	NSString *fileNameString = [[NSString stringWithCString:fileName encoding:NSUTF8StringEncoding] lastPathComponent];
	NSString *errorOrigin = [NSString stringWithFormat:@"%@:%d", fileNameString, lineNumber ];
	
	NSString *localizedDescription = [[NSBundle mainBundle] localizedStringForKey:errorNameString
																			value:errorNameString
																			table:@"Errors"];
	
	NSMutableDictionary *dict;
	if( userInfo != nil )
		dict = [NSMutableDictionary dictionaryWithDictionary:userInfo];
	else
		dict = [NSMutableDictionary dictionaryWithCapacity:3];
	[dict setValue:errorOrigin forKey:AMErrorOriginKey];
	[dict setValue:errorNameString forKey:AMErrorNameKey];
	[dict setValue:localizedDescription forKey:NSLocalizedDescriptionKey];
	
	return [NSError errorWithDomain:[[NSBundle mainBundle] bundleIdentifier] code:errorCode userInfo:dict];
}


NSError* _AMErrorAddOrigin( NSError* origError, char const *fileName, int lineNumber )
{
	NSString *fileNameString = [[NSString stringWithCString:fileName encoding:NSUTF8StringEncoding] lastPathComponent];
	NSString *errorOrigin = [NSString stringWithFormat:@"%@:%d", fileNameString, lineNumber ];
	
	NSMutableDictionary* userInfo;
	if( [origError userInfo] != nil )
		userInfo = [NSMutableDictionary dictionaryWithDictionary:[origError userInfo]];
	else
		userInfo = [NSMutableDictionary dictionaryWithCapacity:1];
    
	[userInfo setValue:errorOrigin forKey:AMErrorOriginKey];
	
	return [NSError errorWithDomain:[origError domain] code:[origError code] userInfo:userInfo];
}

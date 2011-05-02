#import <Foundation/Foundation.h>

// TODO: needs docs like crazy

#ifdef __cplusplus
extern "C" {
#endif

static NSString *const AMErrorOriginKey = @"ErrorOrigin";
static NSString *const AMErrorNameKey = @"ErrorName";

enum
{
	AMERR_WRAPPED = 1,	
};

#define AMError(S) _AMErrorMake(S, #S, __FILE__, __LINE__, nil)
#define AMErrorWithInfo(S,T) _AMErrorMake(S, #S, __FILE__, __LINE__, T)
#define AMErrorP(S,T) AMErrorAssignIfNotNil(S, AMError(T))
#define AMErrorWithInfoP(S,T,U) AMErrorAssignIfNotNil(S, AMErrorWithInfo(T,U))
    

#define _AMErrorWrapError(S) AMErrorWithInfo(AMERR_WRAPPED, [NSDictionary dictionaryWithObject:S forKey:NSUnderlyingErrorKey])
#define AMErrorWrapError(S) (S = _AMErrorWrapError(S))
#define AMErrorWrapErrorP(S) AMErrorAssignIfNotNil(S, (S != NULL) ? _AMErrorWrapError(*S) : NULL)

#define AMErrorAddOriginToError(S) (S = _AMErrorAddOrigin(S, __FILE__, __LINE__))
#define AMErrorAddOriginToErrorP(S) AMErrorAssignIfNotNil(S, (S != NULL) ? AMErrorAddOriginToError(*S) : NULL)


	
static inline void AMErrorAssignIfNotNil( NSError** outError, NSError* error )
{
	if( outError != nil ) *outError = error;
}

	

// internal methods, use macros
extern NSError* _AMErrorMake( int errorCode, char const *errorName,  char const *fileName, int lineNumber, NSDictionary *userInfo );	
extern NSError* _AMErrorAddOrigin( NSError* origError, char const *fileName, int lineNumber );

	
#ifdef __cplusplus
}
#endif

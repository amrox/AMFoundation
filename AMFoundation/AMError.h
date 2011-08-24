#import <Foundation/Foundation.h>

// TODO: needs docs like crazy

#ifdef __cplusplus
extern "C" {
#endif

//extern NSString *const AMErrorOriginKey = @"ErrorOrigin";
//extern NSString *const AMErrorNameKey = @"ErrorName";
extern NSString *const AMErrorOriginKey;
extern NSString *const AMErrorNameKey;

enum
{
    AMERR_WRAPPED = 1,	
};
    
#define AMError(E,D) _AMErrorMake(E, #E, D, __FILE__, __LINE__, nil)
#define AMErrorWithInfo(E,D,I) _AMErrorMake(E, #E, D, __FILE__, __LINE__, I)
    //#define AMErrorP(S,T) AMErrorAssignIfNotNil(S, AMError(T))
    //#define AMErrorWithInfoP(S,T,U) AMErrorAssignIfNotNil(S, AMErrorWithInfo(T,U))
    
    
    //#define _AMErrorWrapError(S) AMErrorWithInfo(AMERR_WRAPPED, [NSDictionary dictionaryWithObject:S forKey:NSUnderlyingErrorKey])
    //#define AMErrorWrapError(S) (S = _AMErrorWrapError(S))
    //#define AMErrorWrapErrorP(S) AMErrorAssignIfNotNil(S, (S != NULL) ? _AMErrorWrapError(*S) : NULL)
    
#define AMErrorAddOriginToError(S) (S = _AMErrorAddOrigin(S, __FILE__, __LINE__))
#define AMErrorAddOriginToErrorP(S) AMErrorAssignIfNotNil(S, (S != NULL) ? AMErrorAddOriginToError(*S) : NULL)
    
    
	
static inline void AMErrorAssignIfNotNil( NSError** outError, NSError* error )
{
    if( outError != nil ) *outError = error;
}
    
	
    
// internal methods, use macros
extern NSError* _AMErrorMake( int errorCode, char const *errorName, NSString* domain, char const *fileName, int lineNumber, NSDictionary *userInfo );	
extern NSError* _AMErrorAddOrigin( NSError* origError, char const *fileName, int lineNumber );
    
	
#ifdef __cplusplus
}
#endif


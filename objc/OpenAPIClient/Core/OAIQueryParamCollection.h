#import <Foundation/Foundation.h>

/**
* Big Book API
* The world's book wrapped into a single API.
*
* The version of the OpenAPI document: 1.0
* Contact: mail@bigbookapi.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


@interface OAIQueryParamCollection : NSObject

@property(nonatomic, readonly) NSArray* values;
@property(nonatomic, readonly) NSString* format;

- (id) initWithValuesAndFormat: (NSArray*) values
                        format: (NSString*) format;

@end

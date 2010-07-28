//
//  NSDictionary+SerializePlist.h
//  plistSerliazation
//
//  Copyright 2010 Paul Crawford. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary(SerializePlist)

+ (NSDictionary *)dictionaryWithPropertyListData:(NSData *)plistData;
- (NSData *) propertyListData;

@end

//
//  NSArray+SerializePlist.h
//  plistSerliazation
//
//  Copyright 2010 Paul Crawford. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray(SerializePlist)

+ (NSArray *)arrayWithPropertyListData:(NSData *)plistData;
- (NSData *) propertyListData;

@end

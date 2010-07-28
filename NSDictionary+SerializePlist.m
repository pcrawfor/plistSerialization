//
//  NSDictionary+SerializePlist.m
//  plistSerliazation
//
//  Copyright 2010 Paul Crawford. All rights reserved.
//

#import "NSDictionary+SerializePlist.h"


@implementation NSDictionary(SerializePlist)

+ (NSDictionary *)dictionaryWithPropertyListData:(NSData *)plistData {
  NSString *plistError;
  NSPropertyListFormat format;
  return (NSDictionary *)[NSPropertyListSerialization propertyListFromData:plistData 
                                                                        mutabilityOption:kCFPropertyListImmutable 
                                                                                  format:&format 
                                                                        errorDescription:&plistError];                
}

- (NSData *) propertyListData {
  NSString *plistError;
  return [NSPropertyListSerialization dataFromPropertyList:self 
                                             format:NSPropertyListBinaryFormat_v1_0 
                                   errorDescription:&plistError];
}

@end

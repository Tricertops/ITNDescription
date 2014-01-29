//
//  NSNumber+ITNDescription.m
//  Jukebox
//
//  Created by Martin Kiss on 29.1.14.
//  Copyright (c) 2014 iAdverti. All rights reserved.
//

@import Foundation.NSString;
@import CoreFoundation.CFNumber;
#import "NSNumber+ITNDescription.h"





@implementation NSNumber (ITNDescription)





- (NSString *)itn_descriptionWithIndentation:(NSUInteger)indent depth:(NSUInteger)depth {
    if (self == (id)kCFBooleanTrue
        || self == (id)kCFBooleanFalse) {
        return ([self boolValue]? @"Yes" : @"No");
    }
    else return [self description];
}





@end



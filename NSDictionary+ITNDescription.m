//
//  NSDictionary+ITNDescription.m
//  Jukebox
//
//  Created by Martin Kiss on 29.1.14.
//  Copyright (c) 2014 iAdverti. All rights reserved.
//

@import Foundation.NSString;
#import "NSDictionary+ITNDescription.h"
#import "NSObject+ITNDescription.h"





@implementation NSDictionary (ITNDescription)





- (NSString *)itn_descriptionWithIndentation:(NSUInteger)indent depth:(NSUInteger)depth {
    NSMutableString *d = [NSMutableString stringWithFormat:@"%lu pair%@", self.count, (self.count == 1? @"" : @"s")];
    if (depth == 0 || self.count == 0) return d; // Short description.
    
    [d appendString:@" {\n"];
    
    for (id key in self) {
        for (NSUInteger i = 0; i < indent + ITN_INDENT; i++) [d appendString:@" "];
        
        NSString *keyDescription = [key itn_descriptionWithIndentation:(indent + ITN_INDENT) depth:0];
        if ( ! keyDescription.length) {
            keyDescription = @"(no description)";
        }
        id value = [self objectForKey:key];
        NSString *valueDescription = [value itn_descriptionWithIndentation:0 depth:(depth - 1)];
        if ( ! valueDescription.length) {
            valueDescription = @"(no description)";
        }
        [d appendFormat:@"%@ = %@,\n", keyDescription, valueDescription];
    }
    for (NSUInteger i = 0; i < indent; i++) [d appendString:@" "];
    [d appendString:@"}"];
    return d;
}





@end



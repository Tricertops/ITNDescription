//
//  NSArray+ITNDescription.m
//  Jukebox
//
//  Created by Martin Kiss on 29.1.14.
//  Copyright (c) 2014 iAdverti. All rights reserved.
//

@import Foundation.NSString;
#import "NSArray+ITNDescription.h"










@implementation NSArray (ITNDescription)





- (NSString *)itn_descriptionWithIndentation:(NSUInteger)indent depth:(NSUInteger)depth {
    NSMutableString *d = [NSMutableString stringWithFormat:@"%lu object%@", self.count, (self.count == 1? @"" : @"s")];
    if (depth == 0 || self.count == 0) return d; // Short description.
    
    [d appendString:@" (\n"];
    
    for (id value in self) {
        for (NSUInteger i = 0; i < indent + ITN_INDENT; i++) [d appendString:@" "];
        
        NSString *subdescription = [value itn_descriptionWithIndentation:(indent + ITN_INDENT) depth:depth - 1];
        if ( ! subdescription.length) {
            subdescription = @"(no description)";
        }
        [d appendFormat:@"%@,\n", subdescription];
    }
    for (NSUInteger i = 0; i < indent; i++) [d appendString:@" "];
    [d appendString:@")"];
    return d;
}





@end



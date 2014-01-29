//
//  NSString+ITNDescription.m
//  Jukebox
//
//  Created by Martin Kiss on 29.1.14.
//  Copyright (c) 2014 iAdverti. All rights reserved.
//

#import "NSString+ITNDescription.h"





@implementation NSString (ITNDescription)




- (NSString *)itn_descriptionWithIndentation:(NSUInteger)indent depth:(NSUInteger)depth {
    return [NSString stringWithFormat:@"“%@”", self];
}





@end



//
//  NSDictionary+ITNDescription.h
//  Jukebox
//
//  Created by Martin Kiss on 29.1.14.
//  Copyright (c) 2014 iAdverti. All rights reserved.
//

@import Foundation.NSDictionary;





@interface NSDictionary (ITNDescription)


- (NSString *)itn_descriptionWithIndentation:(NSUInteger)indent depth:(NSUInteger)depth;


@end



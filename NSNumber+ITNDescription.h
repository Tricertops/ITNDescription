//
//  NSNumber+ITNDescription.h
//  Jukebox
//
//  Created by Martin Kiss on 29.1.14.
//  Copyright (c) 2014 iAdverti. All rights reserved.
//

@import Foundation.NSValue;





@interface NSNumber (ITNDescription)


- (NSString *)itn_descriptionWithIndentation:(NSUInteger)indent depth:(NSUInteger)depth;


@end



//
//  NSString+Validation.h
//  Core Data
//
//  Created by maxud on 10.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validation)

-(bool)isEqualToName:(NSString*)name;

@property (readonly)NSString *value;

@end

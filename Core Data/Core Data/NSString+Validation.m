//
//  NSString+Validation.m
//  Core Data
//
//  Created by maxud on 10.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation) 

-(BOOL)isEqualToName:(NSString *)name
{
    return [self isEqualToString:name];
}

-(NSString*)value
{
    return self;
}

@end

//
//  Owner+CoreDataProperties.m
//  Core Data
//
//  Created by maxud on 10.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Owner+CoreDataProperties.h"

@implementation Owner (CoreDataProperties)

+ (NSFetchRequest<Owner *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Owner"];
}

@dynamic age;
@dynamic name;
@dynamic cars;

@end

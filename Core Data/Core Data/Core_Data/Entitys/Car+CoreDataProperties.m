//
//  Car+CoreDataProperties.m
//  Core Data
//
//  Created by maxud on 10.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Car+CoreDataProperties.h"

@implementation Car (CoreDataProperties)

+ (NSFetchRequest<Car *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Car"];
}

@dynamic name;
@dynamic speed;
@dynamic owner;

@end

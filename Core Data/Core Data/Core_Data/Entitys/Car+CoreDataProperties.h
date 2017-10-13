//
//  Car+CoreDataProperties.h
//  Core Data
//
//  Created by maxud on 10.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Car+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Car (CoreDataProperties)

+ (NSFetchRequest<Car *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) float speed;
@property (nullable, nonatomic, retain) NSSet<Owner *> *owner;

@end

@interface Car (CoreDataGeneratedAccessors)

- (void)addOwnerObject:(Owner *)value;
- (void)removeOwnerObject:(Owner *)value;
- (void)addOwner:(NSSet<Owner *> *)values;
- (void)removeOwner:(NSSet<Owner *> *)values;

@end

NS_ASSUME_NONNULL_END

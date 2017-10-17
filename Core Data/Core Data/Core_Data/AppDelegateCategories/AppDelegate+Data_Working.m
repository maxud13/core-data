//
//  NSString+Data_Working.m
//  Core Data
//
//  Created by maxud on 13.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "AppDelegate+Data_Working.h"
#import "Car+CoreDataProperties.h"
#import "Owner+CoreDataProperties.h"

@implementation AppDelegate (Data_Working)

- (NSArray*)allCars
{
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error)
    {
        NSLog(@"%@",error.localizedDescription);
        return  nil;
    }
    return results;
}

-(NSArray *)carsWithSpeed:(NSNumber*)speed forOwner:(Owner*)owner;
{
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    
    NSError *error = nil;
    
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"speed == %d && owner == %@",speed.intValue,owner];
    
    [fetchedRequest setPredicate:predicate];
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error)
    {
        NSLog(@"%@",error.localizedDescription);
        return nil;
        
    }
    return results;
}

-(NSArray *)carSortedBySpeed
{
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"speed" ascending:YES];
    [fetchedRequest setSortDescriptors:@[sortDescriptor]];
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error)
    {
        NSLog(@"%@",error.localizedDescription);
        return nil;
    }
    return results;
}
- (void)removeCarWithSpeed:(NSNumber*)speed
{
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;

    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"speed == %d",speed.intValue];
    [fetchedRequest setPredicate:predicate];

NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];

if (error)
{
    NSLog(@"%@",error.localizedDescription);
    
}
    else
    {
        for(Car *car in results)
        {
            [context deleteObject:car];
        }
        NSLog(@"Cars were successed removed");
    }
}

@end

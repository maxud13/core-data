//
//  NSString+Data_Working.h
//  Core Data
//
//  Created by maxud on 13.10.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "AppDelegate.h"

@class Owner ,Car;


@interface AppDelegate (Data_Working)

-(NSArray *)allCars;
-(NSArray *)carsWithSpeed:(NSNumber*)speed forOwner:(Owner*)owner;
-(NSArray *)carSortedBySpeed;
-(void)removeCarWithSpeed:(NSNumber*)speed;
@end

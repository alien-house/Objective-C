//
//  Employee.h
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receipt.h"
#import "Food.h"
#import "Burger.h"

@interface Employee : NSObject

//properties
@property NSInteger employeeID;
@property (strong, nonatomic) NSString* name;
@property NSInteger age;

//consructors
-(id)initWithName:(NSString*)name age:(NSInteger)age;

//methods(APIs)
-(void) announceWithAmount:(Invoice*)invoice;
-(Food*) makeMealReceipt:(Receipt*)receipt;
-(void) announceWithMealWithBox:(Food*)food;


@end

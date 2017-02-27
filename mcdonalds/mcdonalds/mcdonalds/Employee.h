//
//  Employee.h
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ingredient.h"
#import "Receipt.h"
#import "Food.h"
#import "Burger.h"

@interface Employee : NSObject

//properties
@property NSInteger employeeID;
@property (strong, nonatomic) NSString* name;
@property NSInteger age;
@property (strong, nonatomic) Ingredient* ingredient;
@property (strong, nonatomic) Receipt* receipt;

//consructors
-(id)initWithName:(NSString*)name age:(NSInteger)age;

//Receipt* receipt = [[Receipt alloc] initInvoice:invoice];

//methods(APIs)
-(void) announceWithAmount:(Invoice*)invoice;
-(Food*) makeMealReceipt:(Receipt*)receipt;
//-(MealBox*) serveMealReceipt:(Receipt*)receipt food:(Food*)food;
-(void) announceWithMealWithBox:(Food*)food;


@end

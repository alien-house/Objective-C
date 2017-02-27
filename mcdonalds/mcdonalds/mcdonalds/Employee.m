//
//  Employee.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "objc/runtime.h"
#import "Employee.h"
#import "Invoice.h"
#import "Food.h"
#import "Receipt.h"
#import "Burger.h"

@implementation Employee

-(id)initWithName:(NSString*)name age:(NSInteger)age{
    //step1 : memory allocation
    self = [super init];
    //step2 : properties initialization
    if(self){
    }
    return self;
}

-(void) announceWithAmount:(Invoice*)invoice{
    
    NSLog(@"[Staff]\n");
    NSLog(@"That will be $%0.2f, please. \n", invoice.amount);
    
}

-(Food*) makeMealReceipt:(Receipt*)receipt{
    
    Food* food = [[Food alloc] initReceipt:receipt];
    return food;
    
}

-(void) announceWithMealWithBox:(Food*)food{
    
    NSLog(@"[Staff]\n");
    NSLog(@"Your meals ");
    for(int i = 0; i < food.meal.count; i++){
//        if([food.meal[i] isMemberOfClass:[Burger class]]){
//            NSLog(@"you are ba-ga-!!!!!!");
//        }
            NSLog(@"%@,",food.meal[i].name);
    }
    NSLog(@"have been ready!! \n");
    
}


//-(MealBox*) serveMealReceipt:(Receipt*)receipt food:(Food*)food{
//    
//    unsigned int outCount, i;
//    objc_property_t *properties = class_copyPropertyList([(food) class], &outCount);
//    for (i = 0; i < outCount; i++) {
//        objc_property_t property = properties[i];
//        const char *name = property_getName(property);
//        NSString *propertyName = [NSString stringWithUTF8String:name];
//        NSString *propertyValue = [(food) valueForKey:propertyName];
//        NSLog(@"プロパティ名[%d]:%@",i ,propertyName);
//        NSLog(@"プロパティ値[%d]:%@",i ,propertyValue);
//    }
//    free(properties);
//    
//    
//    
//    MealBox* burgerMealWithBox = [[MealBox alloc] initWithSize:@"small"];
//    
//    return burgerMealWithBox;
//}


@end

//
//  Employee.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Employee.h"
#import "Invoice.h"
#import "Food.h"
#import "Receipt.h"

@implementation Employee

-(id)initWithName:(NSString*)name age:(NSInteger)age{
    //step1 : memory allocation
    self = [super init];
    //step2 : properties initialization
    if(self){
        self.name = name;
        self.age  = age;
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

-(void) announceWithMeal:(Food*)food{
    
    NSLog(@"[Staff]\n");
    NSLog(@"Your meals ");
    for(int i = 0; i < food.meal.count; i++){
        Meal* meal = [food.meal objectAtIndex:i];
        if([meal isMemberOfClass:[Burger class]]){
            [((Burger*)meal) printName];
        }else if([food.meal[i] isMemberOfClass:[Fries class]]){
            [((Fries*)meal) printName];
        }else if([food.meal[i] isMemberOfClass:[Drink class]]){
            [((Drink*)meal) printName];
        }else if([food.meal[i] isMemberOfClass:[Salads class]]){
            [((Salads*)meal) printName];
        }else if([food.meal[i] isMemberOfClass:[Wrap class]]){
            [((Wrap*)meal) printName];
        }else if([food.meal[i] isMemberOfClass:[Dessert class]]){
            [((Dessert*)meal) printName];
        }else if([food.meal[i] isMemberOfClass:[Bakery class]]){
            [((Bakery*)meal) printName];
        }
        
//        NSLog(@"%@,",food.meal[i].name);
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

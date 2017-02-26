//
//  Employee.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "objc/runtime.h"
#import "Employee.h"
#import "Ingredient.h"
#import "Food.h"
#import "MealBox.h"
#import "Receipt.h"

@implementation Employee

-(id) init{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
    }
    return self;
}


-(Food*) makeMealIngredient:(Ingredient*)ingredient receipt:(Receipt*)receipt{
    
//    Burger* burger = [[Burger alloc] initIngredient:ingredient size:size];
    
    Food* food = [[Food alloc] initWithIngredient:ingredient receipt:receipt];
    
    return food;
    
}




-(MealBox*) serveMealReceipt:(Receipt*)receipt food:(Food*)food{
    
    
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([(food) class], &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:name];
        NSString *propertyValue = [(food) valueForKey:propertyName];
        NSLog(@"プロパティ名[%d]:%@",i ,propertyName);
        NSLog(@"プロパティ値[%d]:%@",i ,propertyValue);
    }
    free(properties);
    
    
    
    MealBox* burgerMealWithBox = [[MealBox alloc] initWithSize:@"small"];
    
    return burgerMealWithBox;
}

-(void) announceWithMealWithBox:(MealBox*)mealBox{
    
    NSLog(@"\n Your meal has been ready!! \n");
    
}



@end

//
//  Meal.m
//  mcdonalds
//
//  Created by sin on 2017/02/26.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Meal.h"
#import "Ingredient.h"

@implementation Meal

-(id) init{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.name = @"chesbaga";
    }
    return self;
    
}

@end

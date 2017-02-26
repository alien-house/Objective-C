//
//  Bakery.m
//  mcdonalds
//
//  Created by sin on 2017/02/24.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Bakery.h"
#import "Ingredient.h"

@implementation Bakery

-(id) initIngredient:(Ingredient*)ingredient size:(NSString*)size{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.ingredient = ingredient;
        self.size = size;
        self.name = @"chesbaga";
    }
    return self;
    
}

@end
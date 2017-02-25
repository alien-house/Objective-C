//
//  Food.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Food.h"
#import "Ingredient.h"
#import "Burger.h"
#import "Fries.h"

@implementation Food

-(id) initWithIngredient:(Ingredient*)ingredient receipt:(Receipt*)receipt{
    
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.ingredient = ingredient;
        self.size = receipt.size;
        
        NSLog(@"mealID %ld \n(long)",receipt.mealID);
        
        /* The Menu ID */
        /*
         Burger  : 1
         Fries   : 2
         Salads  : 3
         Wrap    : 4
         Dessert : 5
         Bakery  : 6
         Drink   : 7
         */
        if(receipt.mealID == 1){
            self.burger = [[Burger alloc] initIngredient:ingredient size:receipt.size];
        }else if(receipt.mealID == 2){
            self.fries = [[Fries alloc] initIngredient:ingredient size:receipt.size];
        }
        //http://qiita.com/TechMeetMeet/items/32e091f16febfa3298d6
        // return string...
    }
    return self;
    
}

-(void) takeFood{
}





//Food* cheeseBurgerMeal = [staff makeMealIngredient:cheeseIngredient size:@"medium"];


@end

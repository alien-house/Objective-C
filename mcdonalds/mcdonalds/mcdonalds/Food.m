//
//  Food.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Food.h"
#import "Ingredient.h"
#import "OrderDetail.h"
#import "Meal.h"
#import "Burger.h"
#import "Fries.h"
#import "Drink.h"
#import "Salads.h"
#import "Wrap.h"
#import "Dessert.h"
#import "Bakery.h"

@implementation Food

-(id) initReceipt:(Receipt*)receipt{
    
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        
        self.meal  = [[NSMutableArray alloc] init];
        for(int i = 0; i < receipt.orderDetail.count; i++){
            
            [self.meal addObject:[self perpareMeal:receipt.orderDetail[i]]];
            
        }
        
    }
    return self;
    
}
//        if(receipt.mealID == 1){
//            Burger* meal  = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//        }else if(receipt.mealID == 2){
//            Fries* meal   = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//        }else if(receipt.mealID == 3){
//            Drink* meal   = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//        }else if(receipt.mealID == 4){
//            Salads* meal  = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//        }else if(receipt.mealID == 5){
//            Dessert* meal = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//        }else if(receipt.mealID == 6){
//            Bakery* meal  = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//        }else if(receipt.mealID == 7){
//            Wrap* meal    = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
//
//            if([meal isMemberOfClass:[Wrap class]]){
//
//            }
//
//        }


-(Meal*) perpareMeal:(OrderDetail*)orderDetail{
    
    Meal* meal = [[Meal alloc] init];
    
    switch (orderDetail.mealID) {
        case 1:
            meal = [[Burger alloc] initOrderDetail:orderDetail];
            break;
        case 2:
            meal = [[Fries alloc] initOrderDetail:orderDetail];
            break;
        case 3:
            meal = [[Drink alloc] initOrderDetail:orderDetail];
            break;
        case 4:
            meal = [[Salads alloc] initOrderDetail:orderDetail];
            break;
        case 5:
            meal = [[Wrap alloc] initOrderDetail:orderDetail];
            break;
        case 6:
            meal = [[Dessert alloc] initOrderDetail:orderDetail];
            break;
        case 7:
            meal = [[Bakery alloc] initOrderDetail:orderDetail];
            break;
            
        default:
            break;
    }
    
    return meal;
}


-(void) takeFood{
}










//Food* cheeseBurgerMeal = [staff makeMealIngredient:cheeseIngredient size:@"medium"];


@end

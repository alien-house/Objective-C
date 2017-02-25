//
//  main.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Customer.h"
#import "Invoice.h"
#import "Receipt.h"
#import "Ingredient.h"
#import "Employee.h"
#import "Burger.h"
#import "Fries.h"
#import "Drink.h"
#import "Salads.h"
#import "Dessert.h"
#import "Bakery.h"
#import "Wrap.h"
#import "MealBox.h"

int main(int argc, const char * argv[]) {
    
//    Customer* customer = [[Customer alloc] initWithUsername:@"ali" password:@"ali123"];
    
    //* Creating an Customer object
    Customer* customer = [Customer alloc];
    Employee* staff    = [Employee alloc];
    
    //* Order the items
    Invoice* invoice = [customer orderMenuName:@"choeeseburger" mealID:1 size:@"medium"];
    Receipt* receipt = [customer payInvoice:invoice];
    
    if(receipt.paidBoo == true){
        NSLog(@"\n You paid for it! \n");
        Ingredient* cheeseIngredient = [[Ingredient alloc] initWithName:@"choeeseburger"];
        
//        Food* cheeseBurgerMeal = [staff makeMealIngredient:cheeseIngredient receipt:receipt];

        if(receipt.mealID == 1){
            Burger* meal  = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
        }else if(receipt.mealID == 2){
            Fries* meal   = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
        }else if(receipt.mealID == 3){
            Drink* meal   = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
        }else if(receipt.mealID == 4){
            Salads* meal  = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
        }else if(receipt.mealID == 5){
            Dessert* meal = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
        }else if(receipt.mealID == 6){
            Bakery* meal  = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
        }else if(receipt.mealID == 7){
            Wrap* meal    = [staff makeMealIngredient:cheeseIngredient receipt:receipt];
            
            if([meal isMemberOfClass:[Wrap class]])
            {
                
            }
        }

        
        
        
//        Burger* cheeseBurgerMeal = [staff makeMealIngredient:cheeseIngredient size:@"medium"];
        
        
        
        MealBox* cheeseBurgerMealBox = [staff serveMealReceipt:receipt food:meal];
        
        [staff announceWithMealWithBox:cheeseBurgerMealBox];
        
    }else{
        NSLog(@"\nDid you pay for it? \n");
    }
    
    
    return NSApplicationMain(argc, argv);
}





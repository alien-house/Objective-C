//
//  main.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Customer.h"
#import "OrderDetail.h"
#import "Invoice.h"
#import "Receipt.h"
#import "Ingredient.h"
#import "Employee.h"
#import "Burger.h"
#import "Fries.h"
#import "Drink.h"
#import "Dessert.h"
#import "Bakery.h"
#import "Wrap.h"
#import "MealBox.h"

int main(int argc, const char * argv[]) {
    
//    Customer* customer = [[Customer alloc] initWithUsername:@"ali" password:@"ali123"];
    
    //* Creating an Customer object
    Customer* customer = [Customer alloc];
    Employee* staff    = [Employee alloc];
    
    // Example Order
    NSArray *orders         = @[@"ChoeeseBurger", @"Fries", @"Coke"];
    NSArray *orders_mealID  = @[@1, @2, @3]; //category ID
    NSArray *orders_size    = @[@"small", @"medium", @"large"];
    NSArray *orders_price   = @[@100, @200, @300];
    
    
    OrderDetail* orderDetail1 = [[OrderDetail alloc]
                                 initWithID:1 mealID:1 name:@"ChoeeseBurger" size:@"small" price:10];
    OrderDetail* orderDetail2 = [[OrderDetail alloc]
                                 initWithID:1 mealID:2 name:@"Fries" size:@"medium" price:20];
    OrderDetail* orderDetail3 = [[OrderDetail alloc]
                                 initWithID:1 mealID:3 name:@"Coke" size:@"large" price:30];
    NSArray<OrderDetail*>* listOfOrderDetails = @[orderDetail1, orderDetail2, orderDetail3];
    
    //* Order the items
    Invoice* invoice = [customer orderMenuName:listOfOrderDetails];
//    Invoice* invoice = [customer orderMenuName:orders mealID:orders_mealID size:orders_size price:orders_price];
//    NSLog(@"\n invoice : %@ \n", invoice);
    
    Receipt* receipt = [customer payInvoice:invoice];
    
    //customer see the receipt
    [customer printReceipt];
    
    NSLog(@"\n You paid for it! \n");
    Ingredient* cheeseIngredient = [[Ingredient alloc] initWithName:@"choeeseburger"];
    [staff makeMealIngredient:cheeseIngredient receipt:receipt];
    

    
//
        
//      Food* cheeseBurgerMeal = [staff makeMealIngredient:cheeseIngredient receipt:receipt];

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

        
        
        
//        Burger* cheeseBurgerMeal = [staff makeMealIngredient:cheeseIngredient size:@"medium"];
        
        
        
//        MealBox* cheeseBurgerMealBox = [staff serveMealReceipt:receipt food:meal];
        
//        [staff announceWithMealWithBox:cheeseBurgerMealBox];
    
//    if(receipt.paidBoo == true){
//    }else{
//        NSLog(@"\nDid you pay for it? \n");
//    }
//    
//    
    return NSApplicationMain(argc, argv);
}





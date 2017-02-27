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
#import "Employee.h"
#import "Burger.h"
#import "Fries.h"
#import "Drink.h"
#import "Dessert.h"
#import "Bakery.h"
#import "Wrap.h"

int main(int argc, const char * argv[]) {
    
    
    /* ===================================== */
    // Creating an Customer & Staff object
    /* ===================================== */
    Customer* customer = [Customer alloc];
    Employee* staff    = [[Employee alloc] initWithName:@"Donald Trump" age:71];
    
    
    /* ===================================== */
    // 1) Example Order
    /* ===================================== */
    /* The Menu ID */
    /*
     Burger  : 1
     Fries   : 2
     Drink   : 3
     Salads  : 4
     Wrap    : 5
     Dessert : 6
     Bakery  : 7
     */
    OrderDetail* orderDetail1 = [[OrderDetail alloc]
                                 initWithID:1 mealID:1 name:@"ChoeeseBurger" size:@"small" price:10];
    OrderDetail* orderDetail2 = [[OrderDetail alloc]
                                 initWithID:1 mealID:2 name:@"Fries" size:@"medium" price:20];
    OrderDetail* orderDetail3 = [[OrderDetail alloc]
                                 initWithID:1 mealID:3 name:@"Coke" size:@"large" price:30];
    NSArray<OrderDetail*>* listOfOrderDetails = @[orderDetail1, orderDetail2, orderDetail3];
    
    
    /* ===================================== */
    // 2) Order the items
    /* ===================================== */
    Invoice* invoice = [customer orderMenu:listOfOrderDetails];
    
    
    /* ===================================== */
    // 3) Announcing amount of cost
    /* ===================================== */
    [staff announceWithAmount:invoice];
    Receipt* receipt = [customer payInvoice:invoice];
    
    /* ===================================== */
    // 4) Customer see the receipt
    /* ===================================== */
    [customer printReceipt:receipt];

    
    /* ===================================== */
    // 5) Preparing the meals & Calling
    /* ===================================== */
    Food* customerOrderedMeal = [staff makeMealReceipt:receipt];
    [staff announceWithMealWithBox:customerOrderedMeal];
    
    
    return NSApplicationMain(argc, argv);
}





//
//  main.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Customer.h"
#import "Employee.h"
#import "OrderDetail.h"
#import "Invoice.h"
#import "Receipt.h"

int main(int argc, const char * argv[]) {
    
    /* ===================================== */
    // SUBJECT :
    // The customer buys some meal through staffs directly and pays for it.
    /* ===================================== */
    
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
                                 initWithID:1 mealID:1 name:@"ChoeeseBurger" size:@"small"];
    OrderDetail* orderDetail2 = [[OrderDetail alloc]
                                 initWithID:1 mealID:2 name:@"FrenchFries" size:@"medium"];
    OrderDetail* orderDetail3 = [[OrderDetail alloc]
                                 initWithID:1 mealID:3 name:@"Coke" size:@"large"];
    NSArray<OrderDetail*>* listOfOrderDetails = @[orderDetail1, orderDetail2, orderDetail3];
    
    
    /* ===================================== */
    // 2) Order the items
    /* ===================================== */
    Invoice* invoice = [customer orderMenu:listOfOrderDetails];
    
    
    /* ===================================== */
    // 3) Pay for it
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
    [staff announceWithMeal:customerOrderedMeal];
    [customer printThanks];
    
    return NSApplicationMain(argc, argv);
}


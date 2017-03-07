//
//  ShoppingCart.m
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ShoppingCart.h"
#import "Drink.h"
#import "Food.h"
#import "Product.h"

@implementation ShoppingCart

-(id)init{
    
    self = [super init];
    if(self){
        self.cart = [[NSMutableArray<Product*> alloc] init];
    }
    return self;
}

-(void)addItem:(Product*)item{
    [self.cart addObject:item];
}

-(void)calculateTotalCost{
    float totalcost = 0.0;
    for(int i = 0; self.cart.count > i; i++){
        Product* obj = [self.cart objectAtIndex:i];
        float cost = [obj calculateAmount];
        totalcost += cost * obj.amount;
    }
    NSLog(@"total cost:%0.2f",totalcost);
}

-(void)printAllItemName{
    for(int i = 0; self.cart.count > i; i++){
        Product* obj = [self.cart objectAtIndex:i];
        
        NSLog(@"item name:%@ \n",obj.productName);
        
    }
    
}


@end

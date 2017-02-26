//
//  Invoice.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Invoice.h"

@implementation Invoice

-(id) initWithID:(NSInteger)invoiceID name:(NSArray*)name mealID:(NSArray*)mealID price:(NSArray*)myPrice size:(NSArray*)mySize{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        self.invoiceID = invoiceID;
        self.price = myPrice;
        self.size = mySize;
        self.name = name;
        self.mealID = mealID;
        self.time = [NSDate date];
        // calculate amount of price 
        for(int i = 0; i < myPrice.count; i++){
            NSUInteger priceInt = [myPrice[i] unsignedIntegerValue];
            self.amount = self.amount + priceInt;
        }
        
    }
    
    return self;
}

@end

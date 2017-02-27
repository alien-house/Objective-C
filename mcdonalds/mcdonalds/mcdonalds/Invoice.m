//
//  Invoice.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Invoice.h"
#import "OrderDetail.h"

@implementation Invoice

-(id) initWithlistOfOrderDetails:(NSArray<OrderDetail*>*)listOfOrderDetails{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        
        self.orderDetail = listOfOrderDetails;
        self.time = [NSDate date];
        // calculate amount of price 
        for(int i = 0; i < listOfOrderDetails.count; i++){
//            NSUInteger priceInt = [listOfOrderDetails[i].price unsignedIntegerValue];
            self.amount = self.amount + listOfOrderDetails[i].price;
        }
        
    }
    
    return self;
}

@end

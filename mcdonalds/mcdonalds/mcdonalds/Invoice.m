//
//  Invoice.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Invoice.h"
#import "Menu.h"
#import "OrderDetail.h"

@implementation Invoice

-(id) initWithlistOfOrderDetails:(NSArray<OrderDetail*>*)listOfOrderDetails{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        self.orderDetail = listOfOrderDetails;
        self.menu = [[Menu alloc] init];
        self.time = [NSDate date];
        // calculate amount of price
        for(int i = 0; i < listOfOrderDetails.count; i++){
            NSInteger prices = [self getPriceWithMenuName:listOfOrderDetails[i]];
            listOfOrderDetails[i].price = prices;
            self.amount = self.amount + prices;
        }
        
    }
    
    return self;
}


-(NSInteger) getPriceWithMenuName:(OrderDetail*)name{
    NSInteger prices = 0;
    
    for(int i = 0; i < self.menu.menu.count; i++){
        if ([self.menu.menu[i].name isEqualToString:name.name]) {
            prices = self.menu.menu[i].price;
        }
    }
    
    return prices;
}





@end

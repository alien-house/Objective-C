//
//  Receipt.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Receipt.h"
#import "Invoice.h"


@implementation Receipt

-(id) initInvoice:(Invoice*)invoice{
    
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.orderDetail = invoice.orderDetail;
        self.receiptID = invoice.orderDetail[0].orderDetailID;
        self.menuname  = [[NSMutableArray alloc] init];
        self.size      = [[NSMutableArray alloc] init];
        self.price     = [[NSMutableArray alloc] init];
        for(int i = 0; i < invoice.orderDetail.count; i++){
            [self.menuname addObject:invoice.orderDetail[i].name];
            [self.size addObject:invoice.orderDetail[i].size];
            [self.price addObject:[NSNumber numberWithInteger:invoice.orderDetail[i].price]];
        }
        self.amount    = invoice.amount;
        self.time      = invoice.time;
    }
    return self;
    
}


@end

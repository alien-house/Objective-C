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
        self.receiptID = invoice.invoiceID;
        self.menuname  = invoice.name;
        self.price     = invoice.price;
        self.amount    = invoice.amount;
        self.mealID    = invoice.mealID;
        self.size      = invoice.size;
        self.time      = invoice.time;
        self.paidBoo   = true;
    }
    return self;
    
}


@end

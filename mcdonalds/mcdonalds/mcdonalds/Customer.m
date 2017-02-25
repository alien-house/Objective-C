//
//  Customer.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Customer.h"
#import "Invoice.h"
#import "Receipt.h"

@implementation Customer

-(id) init{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
    }
    return self;
}


-(Invoice*) orderMenuName:(NSString*)menuname mealID:(NSUInteger)mealID size:(NSString*) size{
    
    Invoice* invoice = [[Invoice alloc] initWithID:1 name:menuname mealID:mealID price:132 size:@"small"];
    
    NSLog(@"\n I'd like to order %@ size of %@\n", size, menuname);
    return invoice;
    
}

-(Receipt*) payInvoice:(Invoice*)invoice{
    
    Receipt* receipt = [[Receipt alloc] initInvoice:invoice];
    
    
//    NSLog(@"\n I'd like to order %@ size of %@\n", size, menuname);
    return receipt;
    
}





@end

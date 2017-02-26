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

-(Invoice*) orderMenuName:(NSArray*)menuname mealID:(NSArray*)mealID size:(NSArray*)size price:(NSArray*)price{
    
//    [menuname enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
//        NSLog(@"%lu: %@", (unsigned long)idx, obj);
//        
//        if ([obj isEqualToString:@"c"]) {
//            *stop = YES;
//        }
//    }];
    
    
    Invoice* invoice = [[Invoice alloc] initWithID:1 name:menuname mealID:mealID price:price size:size];
//    
//    NSLog(@"\n I'd like to order %@ size of %@\n", size, menuname);
    return invoice;
    return 0;
    
}


-(Receipt*) payInvoice:(Invoice*)invoice{
    
    Receipt* receipt = [[Receipt alloc] initInvoice:invoice];
    self.receipt = receipt;
    
//    NSLog(@"\n I'd like to order %@ size of %@\n", size, menuname);
    return receipt;
    
}


-(void) printReceipt{
    NSLog(@"==============================\n");
    NSLog(@"Your order number : %ld\n", (long)self.receipt.receiptID);
    NSLog(@"! ! ! THANK YOU ! ! !\n");
    NSLog(@"%@\n", self.receipt.time);
    for(int i = 0; i < self.receipt.menuname.count; i++){
        NSLog(@"%@:%@ $%@\n", self.receipt.menuname[i], self.receipt.size[i], self.receipt.price[i]);
    }
    NSLog(@"------------------------------\n");
    NSLog(@"Total : $%0.2f\n", self.receipt.amount);
    NSLog(@"==============================\n");
}




@end

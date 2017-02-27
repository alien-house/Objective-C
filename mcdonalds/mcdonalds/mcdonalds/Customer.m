//
//  Customer.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Customer.h"
#import "OrderDetail.h"
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


-(Invoice*) orderMenu:(NSArray<OrderDetail*>*)listOfOrderDetails{
    NSLog(@"[Customer]\n");
    for(int i = 0; i < listOfOrderDetails.count; i++){
        NSLog(@"I'd like to order %@ size of %@\n", listOfOrderDetails[i].size, listOfOrderDetails[i].name);
    }
    Invoice* invoice = [[Invoice alloc] initWithlistOfOrderDetails:listOfOrderDetails];
    return invoice;
}


-(Receipt*) payInvoice:(Invoice*)invoice{
    
    Receipt* receipt = [[Receipt alloc] initInvoice:invoice];
    NSLog(@"\n The Customer paid for it! \n");
    return receipt;
    
}


-(void) printReceipt:(Receipt*)receipt{
    NSLog(@"==============================\n");
    NSLog(@"********** RECEIPT ***********\n");
    NSLog(@"Your order number : %ld\n", (long)receipt.receiptID);
    NSLog(@"! ! ! THANK YOU ! ! !\n");
    NSLog(@"%@\n", receipt.time);
    
    for(int i = 0; i < receipt.menuname.count; i++){
        NSLog(@"%@:%@ $%@\n", receipt.menuname[i], receipt.size[i], receipt.price[i]);
    }
    NSLog(@"------------------------------\n");
    NSLog(@"Total : $%0.2f\n", receipt.amount);
    NSLog(@"==============================\n");
}



-(void) printThanks{
    NSLog(@"[Customer]\n");
    NSLog(@"Thank you!!\n");
}




////NSDateFormatter
//NSDateFormatter *format = [[NSDateFormatter alloc] init];
//
////Locale.setting japanese time。
//[format setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"ja_JP"]];
//
////出力形式を文字列で指定する。
//[format setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
//
//// 現在時刻を取得しつつ、NSDateFormatterクラスをかませて、文字列を出力する。
//NSString *StTime = [format stringFromDate:[NSDate date]]; NSLog(@"%f",StTime);
//

//    [menuname enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
//        NSLog(@"%lu: %@", (unsigned long)idx, obj);
//
//        if ([obj isEqualToString:@"c"]) {
//            *stop = YES;
//        }
//    }];


@end

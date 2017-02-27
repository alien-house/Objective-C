//
//  Customer.h
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoice.h"
#import "Receipt.h"

@interface Customer : NSObject

//properties
@property (strong, nonatomic) Invoice* invoice;
@property (strong, nonatomic) Receipt* receipt;

//consructors
-(id) init;

//methods(APIs)
-(Invoice*) orderMenu:(NSArray<OrderDetail*>*)listOfOrderDetails;
//-(Invoice*) orderMenuName:(NSArray*)menuname mealID:(NSArray*)mealID size:(NSArray*)size price:(NSArray*)price;
-(Receipt*) payInvoice:(Invoice*)invoice;
-(void) printReceipt:(Receipt*)receipt;
-(void) printThanks;

@end

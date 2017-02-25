//
//  Receipt.h
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoice.h"


@interface Receipt : NSObject

//properties
//@property (strong, nonatomic) Invoice* invoice;
@property (strong, nonatomic) NSString* menuname;
@property (strong, nonatomic) NSString* size;
@property float amount;
@property NSInteger receiptID;
@property NSInteger mealID;
@property BOOL paidBoo;

//consructors
-(id) initInvoice:(Invoice*)invoice;


//Receipt* receipt = [[Receipt alloc] initInvoice:invoice];

//methods(APIs)



@end

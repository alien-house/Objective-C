//
//  Receipt.h
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoice.h"
#import "OrderDetail.h"

@interface Receipt : NSObject

//properties
@property (strong, nonatomic) NSArray<OrderDetail*>* orderDetail;
@property (strong, nonatomic) NSMutableArray<NSString*>* menuname;
@property (strong, nonatomic) NSMutableArray<NSString*>* size;
@property (strong, nonatomic) NSMutableArray* price;
@property float amount;
@property NSInteger receiptID;
@property NSInteger mealID;
@property NSDate* time;

//consructors
-(id) initInvoice:(Invoice*)invoice;

//methods(APIs)



@end

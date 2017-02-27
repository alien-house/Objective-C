//
//  Invoice.h
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderDetail.h"
#import "Menu.h"


@interface Invoice : NSObject

//properties
@property NSInteger invoiceID;
@property (strong, nonatomic) NSArray<OrderDetail*>* orderDetail;
@property (strong, nonatomic) Menu* menu;
@property NSDate* time;
@property float amount;

//consructors
-(id) initWithlistOfOrderDetails:(NSArray<OrderDetail*>*)listOfOrderDetails;

//methods(APIs)
-(NSInteger) getPriceWithMenuName:(OrderDetail*)name;

@end

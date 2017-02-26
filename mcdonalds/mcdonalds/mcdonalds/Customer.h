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
@property (strong, nonatomic) NSString* menuname;
@property (strong, nonatomic) NSString* size;


//consructors
-(id) init;

//methods(APIs)
//-(Invoice*) orderMenuName:(NSDictionary*)menuname size:(NSString*) size;
-(Invoice*) orderMenuName:(NSArray*)menuname mealID:(NSArray*)mealID size:(NSArray*)size price:(NSArray*)price;
-(Receipt*) payInvoice:(Invoice*)invoice;
-(void) printReceipt;

@end

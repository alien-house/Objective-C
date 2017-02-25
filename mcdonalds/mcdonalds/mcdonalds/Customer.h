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
@property (strong, nonatomic) NSString* menuname;
@property (strong, nonatomic) NSString* size;


//consructors
-(id) init;

//methods(APIs)
-(Invoice*) orderMenuName:(NSString*)menuname mealID:(NSUInteger)mealID size:(NSString*) size;
-(Receipt*) payInvoice:(Invoice*)invoice;

@end

//
//  Invoice.m
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Invoice.h"

@implementation Invoice

-(id) initWithID:(NSInteger)myID name:(NSString*) name mealID:(NSInteger) mealID price:(NSInteger) myPrice size:(NSString*) mySize{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        self.invoiceID = myID;
        self.price = myPrice;
        self.size = mySize;
        self.name = name;
        self.mealID = mealID;
    }
    
    return self;
}

@end

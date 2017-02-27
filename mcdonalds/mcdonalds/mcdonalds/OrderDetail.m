//
//  OrderDetail.m
//  mcdonalds
//
//  Created by sin on 2017/02/26.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "OrderDetail.h"

@implementation OrderDetail

-(id) initWithID:(NSInteger)orderDetailID mealID:(NSInteger)mealID name:(NSString*)name size:(NSString*)size{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        self.orderDetailID = orderDetailID;
        self.mealID = mealID;
        self.size = size;
        self.name = name;
    }
    
    return self;
}

@end

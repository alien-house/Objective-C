//
//  Meal.m
//  mcdonalds
//
//  Created by sin on 2017/02/26.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Meal.h"
#import "OrderDetail.h"

@implementation Meal

-(id) initOrderDetail:(OrderDetail*)orderDetail{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.name = orderDetail.name;
        self.size = orderDetail.size;
    }
    return self;
    
}

-(void)printName{
    NSLog(@"%@\n",self.name);
}

@end

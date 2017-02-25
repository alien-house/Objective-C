//
//  mealBox.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "MealBox.h"

@implementation MealBox

-(id) initWithSize:(NSString*)size{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        self.size = size;
    }
    
    return self;
    
}


@end

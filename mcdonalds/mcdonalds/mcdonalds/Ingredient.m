//
//  Ingredient.m
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Ingredient.h"

@implementation Ingredient

-(id) initWithName:(NSString*)name{
    
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.name  = name;
    }
    return self;
    
}

@end

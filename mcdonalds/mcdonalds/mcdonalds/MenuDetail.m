//
//  MenuDetail.m
//  mcdonalds
//
//  Created by sin on 2017/02/27.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "MenuDetail.h"

@implementation MenuDetail

-(id)initWithMenuID:(NSInteger)menuID name:(NSString*)name price:(NSInteger)price size:(NSString*)size{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.menuID = menuID;
        self.name   = name;
        self.price  = price;
        self.size   = size;
    }
    return self;
}


@end

//
//  Material.m
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Material.h"

@implementation Material

-(id)initWithCode:(int)MaterialCode MaterialName:(NSString*)MaterialName{
    
    self = [super init];
    
    if(self){
        self.MaterialCode = MaterialCode;
        self.MaterialName = MaterialName;
    }
    
    return self;
}


@end

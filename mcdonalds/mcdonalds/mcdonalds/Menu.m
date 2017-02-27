//
//  Menu.m
//  mcdonalds
//
//  Created by sin on 2017/02/27.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Menu.h"
#import "MenuDetail.h"

@implementation Menu

-(id) init{
    //step1 : memory allocation
    self = [super init];
    
    //step2 : properties initialization
    if(self){
        self.menu  = [[NSMutableArray alloc] init];
        
        [self.menu addObject:[[MenuDetail alloc] initWithMenuID:1 name:@"ChoeeseBurger" price:10 size:@"medium"] ];
        [self.menu addObject:[[MenuDetail alloc] initWithMenuID:2 name:@"MightyAngus" price:20 size:@"medium"] ];
        [self.menu addObject:[[MenuDetail alloc] initWithMenuID:3 name:@"McDouble" price:8 size:@"medium"] ];
        [self.menu addObject:[[MenuDetail alloc] initWithMenuID:4 name:@"FrenchFries" price:5 size:@"small"] ];
        [self.menu addObject:[[MenuDetail alloc] initWithMenuID:5 name:@"Coke" price:4 size:@"small"] ];
    }
    return self;
}

@end

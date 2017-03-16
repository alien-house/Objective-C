//
//  Product.m
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Product.h"

@implementation Product

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry{
    
    self = [super init];
    if(self){
        self.productID            = productID;
        self.productName          = productName;
        self.productPrice         = productPrice;
        self.productMadeInCountry = productMadeInCountry;
    }
    
    return self;
    
};

-(float)calculateAmount{
    return self.productPrice;
}

@end

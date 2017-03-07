//
//  Food.m
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Food.h"

@implementation Food

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry productSize:(int)productSize amount:(int)amount foodCalorie:(int)foodCalorie foodIngredients:(NSArray<NSString*>*)foodIngredients{
    
    self = [super initWithID:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry amount:(int)amount];
    
    if(self){
        self.foodCalorie = foodCalorie;
        self.foodIngredients = [[NSArray<NSString*> alloc] init];
        self.foodIngredients = foodIngredients;
        self.productSize = productSize;
    }
    
    return self;
    
}

-(float)calculateAmount{
    return self.productPrice * self.productSize;
}

@end

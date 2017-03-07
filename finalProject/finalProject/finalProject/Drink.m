//
//  Drink.m
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Drink.h"

@implementation Drink

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry productSize:(int)productSize amount:(int)amount isDrinkDiet:(BOOL)isDrinkDiet{
    
    self = [super initWithID:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry amount:(int)amount];
    
    if(self){
        self.isDrinkDiet = isDrinkDiet;
        self.productSize = productSize;
    }
    
    return self;
    
};


@end

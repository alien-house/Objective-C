//
//  Food.h
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Food : Product

@property int foodCalorie;
@property int productSize;
@property (strong, nonatomic) NSArray<NSString*>* foodIngredients;

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry productSize:(int)productSize amount:(int)amount foodCalorie:(int)foodCalorie foodIngredients:(NSArray<NSString*>*)foodIngredients;


-(float)calculateAmount;

@end

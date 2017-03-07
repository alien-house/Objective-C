//
//  Drink.h
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Drink : Product

@property int productSize;
@property BOOL isDrinkDiet;

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry productSize:(int)productSize amount:(int)amount isDrinkDiet:(BOOL)isDrinkDiet;

@end

//
//  Food.h
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ingredient.h"
#import "Receipt.h"
#import "Burger.h"
#import "Fries.h"

@interface Food : NSObject

//properties
@property (strong, nonatomic) Ingredient* ingredient;
@property (strong, nonatomic) NSString* bread;
@property (strong, nonatomic) NSString* size;
@property float price;
@property BOOL breakfast;
@property int box;
@property NSInteger mealID;
@property (strong, nonatomic) Burger* burger;
@property (strong, nonatomic) Fries* fries;

//consructors
-(id) initWithIngredient:(Ingredient*)ingredient receipt:(Receipt*)receipt;

//methods(APIs)
-(void) takeFood;

@end

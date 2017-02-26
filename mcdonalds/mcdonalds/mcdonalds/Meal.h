//
//  Meal.h
//  mcdonalds
//
//  Created by sin on 2017/02/26.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ingredient.h"

@interface Meal : NSObject

//properties
@property (strong, nonatomic) Ingredient* ingredient;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* bread;
@property (strong, nonatomic) NSString* size;
@property float price;
@property BOOL breakfast;
@property int box;

//consructors
-(id) init;

//methods(APIs)

@end

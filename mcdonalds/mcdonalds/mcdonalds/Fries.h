//
//  Fries.h
//  mcdonalds
//
//  Created by sin on 2017/02/24.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ingredient.h"

@interface Fries : NSObject

//properties
@property (strong, nonatomic) Ingredient* ingredient;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* bread;
@property (strong, nonatomic) NSString* size;
@property float price;
@property BOOL breakfast;
@property int box;

//consructors
-(id) initIngredient:(Ingredient*)ingredient size:(NSString*)size;

//methods(APIs)

@end

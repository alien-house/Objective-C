//
//  Combo.h
//  mcdonalds
//
//  Created by sin on 2017/02/25.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Meal.h"

@interface Combo : Meal

//properties
@property (strong, nonatomic) NSMutableArray<Meal*>* mealCombo;
@property BOOL isCombo;

//consructors

//methods(APIs)
@end

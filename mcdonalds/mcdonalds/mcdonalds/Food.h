//
//  Food.h
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receipt.h"
#import "Meal.h"

@interface Food : NSObject

//properties
@property (strong, nonatomic) NSMutableArray<Meal*>* meal;
@property (strong, nonatomic) NSString* bread;
@property (strong, nonatomic) NSString* size;
@property float price;
@property NSInteger mealID;

//consructors
-(id) initReceipt:(Receipt*)receipt;

//methods(APIs)
-(void) takeFood;
-(Meal*) perpareMeal:(OrderDetail*)orderDetail;

@end

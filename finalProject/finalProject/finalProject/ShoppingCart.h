//
//  ShoppingCart.h
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface ShoppingCart : NSObject

@property (strong, nonatomic) NSMutableArray<Product*>* cart;

-(id)init;
-(void)addItem:(Product*)item;
-(void)calculateTotalCost;
-(void)printAllItemName;

@end

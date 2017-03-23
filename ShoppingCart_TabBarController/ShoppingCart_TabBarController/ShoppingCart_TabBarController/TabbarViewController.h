//
//  TabbarViewController.h
//  ShoppingCart_TabBarController
//
//  Created by sin on 2017/03/20.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "DrinksViewController.h"
#import "FoodViewController.h"
#import "ClothViewController.h"
#import "ListViewController.h"

//@protocol TabBarControllerDelegate <NSObject>
//
//@optional
//
//@end


@interface TabbarViewController : UITabBarController
//@property (weak, nonatomic) id<TabBarControllerDelegate> delegate;

//@property TabbarViewController shopTab;
@property (strong, nonatomic) NSMutableArray<Product*>* cart;
@property float totalPrice;

-(NSMutableArray<Product*>*)getItemsArray;
-(void)addItemIntoCart:(Product*)item;

@end

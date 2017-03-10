
//  foodViewController.h
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"

@protocol FoodViewDelegate <NSObject>
-(void) addItemIntoCart:(Product*)item;

@optional

@end

@interface FoodViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *foodIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodCalorieTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodSizeTextField;
@property (weak, nonatomic) IBOutlet UITextField *foodIngredientsTextField;
@property (weak, nonatomic) id<FoodViewDelegate> delegate;

- (IBAction)addItem:(UIButton *)sender;
- (IBAction)btnClose:(UIButton *)sender;

@end

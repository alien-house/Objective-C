//
//  DrinksViewController.h
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"

@protocol DrinksViewDelegate <NSObject>
-(void) sayHello;
-(void) addItemIntoCart:(Product*)item;

@optional

@end

@interface DrinksViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *drinkIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkisDrinkDietTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *drinkisDrinkDietSwitch;

@property (weak, nonatomic) IBOutlet UITextField *drinkSizeTextField;
@property (weak, nonatomic) id<DrinksViewDelegate> delegate;

- (IBAction)closePage:(UIButton *)sender;
- (IBAction)addItem:(UIButton *)sender;

@end


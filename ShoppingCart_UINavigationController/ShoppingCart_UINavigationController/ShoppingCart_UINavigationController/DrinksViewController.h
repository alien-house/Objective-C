//
//  DrinksViewController.h
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "DrinkTableViewCell.h"

@protocol DrinksViewDelegate <NSObject>
-(void) addItemIntoCart:(Product*)item;

@optional

@end

@interface DrinksViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *drinkIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *drinkisDrinkDietTextField;
//@property (weak, nonatomic) IBOutlet UISegmentedControl *drinkisDrinkDietSwitch;

@property (weak, nonatomic) IBOutlet UITextField *drinkSizeTextField;
@property (weak, nonatomic) id<DrinksViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITableView *drinkTableView;
@property (strong, nonatomic) NSMutableArray* drinkTextFieldArray;

- (IBAction)closePage:(UIButton *)sender;
- (IBAction)addItem:(UIButton *)sender;

@end


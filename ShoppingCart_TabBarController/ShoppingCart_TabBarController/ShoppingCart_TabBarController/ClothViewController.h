//
//  ClothViewController.h
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "ClothViewController.h"
#import "ClothTableViewCell.h"
#import "TabbarViewController.h"

@protocol ClothViewDelegate <NSObject>
-(void) addItemIntoCart:(Product*)item;

@optional

@end
@interface ClothViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *ClothIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *ClothNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ClothPriceTextField;
@property (weak, nonatomic) IBOutlet UITextField *ClothMadeInCountryTextField;
@property (weak, nonatomic) IBOutlet UITextField *ClothMaterialsTextField;
@property (weak, nonatomic) IBOutlet UITextField *ClothMaterialsCodeTextField;
@property (weak, nonatomic) id<ClothViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITableView *clothTableView;
@property (strong, nonatomic) NSMutableArray* clothTextFieldArray;


- (IBAction)btnClose:(UIButton *)sender;
- (IBAction)addItem:(UIButton *)sender;



@end

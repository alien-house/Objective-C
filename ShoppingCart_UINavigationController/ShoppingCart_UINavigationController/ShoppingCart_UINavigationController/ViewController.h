//
//  ViewController.h
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "DrinksViewController.h"
#import "FoodViewController.h"
#import "ClothViewController.h"
#import "ListViewController.h"
#import "CategoryAddViewCell.h"


// (necessary for delegating①)
@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,DrinksViewDelegate,FoodViewDelegate,ClothViewDelegate>

@property (strong, nonatomic) NSMutableArray<Product*>* cart;
@property (weak, nonatomic) IBOutlet UILabel *priceBox;
@property float totalPrice;

@property (weak, nonatomic) IBOutlet UITableView *catBtnTableView;

- (IBAction)gotoPage:(id)sender;
-(NSMutableArray<Product*>*)getItemsArray;
- (IBAction)btnItemList:(id)sender;

@end


//@interface ViewController : UIViewController
//
//
//
//@end


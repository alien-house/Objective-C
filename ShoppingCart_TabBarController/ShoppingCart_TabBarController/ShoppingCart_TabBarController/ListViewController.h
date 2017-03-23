//
//  ListViewController.h
//  ShoppingCart
//
//  Created by sin on 2017/03/08.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "ListTableViewCell.h"
#import "TabbarViewController.h"


@interface ListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextView *listItemName;
@property (strong, nonatomic) NSMutableArray<Product*>* listItem;
@property (weak, nonatomic) IBOutlet UITableView *listTableView;

- (IBAction)btnBack:(UIButton *)sender;

@end

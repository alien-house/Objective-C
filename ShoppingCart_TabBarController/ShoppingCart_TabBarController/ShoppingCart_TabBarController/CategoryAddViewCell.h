//
//  categoryAddViewCell.h
//  ShoppingCart_TableView
//
//  Created by sin on 2017/03/12.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClothViewController.h"

@interface CategoryAddViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *catAddBtnImage;
@property (weak, nonatomic) IBOutlet UIButton *catAddBtn;

- (IBAction)catAddBtn:(UIButton *)sender;

@end

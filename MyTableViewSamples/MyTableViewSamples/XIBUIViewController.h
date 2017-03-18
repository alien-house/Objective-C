//
//  XIBUIViewController.h
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "CustomUITableViewCell.h"
#import "HeaderView.h"
#import "FooterView.h"

@interface XIBUIViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

//
//  ViewController.h
//  TableView
//
//  Created by sin on 2017/03/10.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageTableViewCell.h"
#import "textFieldTableViewCell.h"

//client
@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end


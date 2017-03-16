//
//  ImageTableViewCell.h
//  TableView
//
//  Created by sin on 2017/03/10.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *myText;

@end

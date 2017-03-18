//
//  CustomUITableViewCell.h
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUITableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImgView;

@property (weak, nonatomic) IBOutlet UILabel *cellDesc;

@end

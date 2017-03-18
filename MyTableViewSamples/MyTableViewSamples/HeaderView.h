//
//  HeaderView.h
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderView : UIView

@property (strong, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UILabel *HeaderLabel;


@end

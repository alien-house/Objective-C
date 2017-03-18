//
//  FooterView.h
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FooterView : UIView
@property (strong, nonatomic) IBOutlet UIView *contentView;

- (IBAction)cancelDidClicked:(id)sender;

- (IBAction)dineDidClicked:(id)sender;

@end

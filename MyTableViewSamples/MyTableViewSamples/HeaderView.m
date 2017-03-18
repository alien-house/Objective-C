//
//  HeaderView.m
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self)
    {
        [self ourInitializer];
    }
    
    return self;
}


-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self)
    {
        [self ourInitializer];
    }
    
    return self;
}

-(void) ourInitializer
{
    [[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:NULL];
    
    [self addSubview:self.contentView];
    
    self.contentView.frame = self.bounds;
 
    self.contentView.backgroundColor = [UIColor greenColor];
    
    self.HeaderLabel.text = @"Shopping Card";
}

@end

//
//  Product.m
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Product.h"

@implementation Product


-(id) initWithImageName:(NSString*) imageName desc:(NSString*) desc
{
    self = [super init];
    
    if(self)
    {
        self.imageName = imageName;
        self.desc = desc;
    }
    
    return self;
}
@end

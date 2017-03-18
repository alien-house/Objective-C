//
//  Product.h
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject


@property (strong, nonatomic) NSString* imageName;
@property (strong, nonatomic) NSString* desc;

-(id) initWithImageName:(NSString*) imageName desc:(NSString*) desc;


@end

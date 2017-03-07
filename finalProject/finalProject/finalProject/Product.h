//
//  Product.h
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property int productID;
@property (strong, nonatomic) NSString* productName;
@property float productPrice;
@property (strong, nonatomic) NSString* productMadeInCountry;
@property int amount;

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry amount:(int)amount;

-(float)calculateAmount;

@end

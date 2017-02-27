//
//  OrderDetail.h
//  mcdonalds
//
//  Created by sin on 2017/02/26.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderDetail : NSObject

//properties
@property NSInteger orderDetailID;
@property (strong, nonatomic) NSString* name;
@property NSInteger mealID;
@property (strong, nonatomic) NSString* size;
@property NSInteger price;


//consructors
-(id) initWithID:(NSInteger)orderDetailID mealID:(NSInteger)mealID name:(NSString*)name size:(NSString*)size;

//methods(APIs)


@end



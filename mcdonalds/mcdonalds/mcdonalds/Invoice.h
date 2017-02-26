//
//  Invoice.h
//  mcdonalds
//
//  Created by sin on 2017/02/22.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Invoice : NSObject

//properties
@property NSInteger invoiceID;
//@property (strong, nonatomic) NSString* size;
//@property (strong, nonatomic) NSString* name;
//@property NSInteger price;
//@property NSInteger mealID;

@property (strong, nonatomic) NSArray* size;
@property (strong, nonatomic) NSArray* name;
@property (strong, nonatomic) NSArray* price;
@property (strong, nonatomic) NSArray* mealID;
@property NSDate* time;
@property float amount;

//consructors
-(id) initWithID:(NSInteger)invoiceID name:(NSArray*) name mealID:(NSArray*) mealID price:(NSArray*) myPrice size:(NSArray*) mySize;

//methods(APIs)



@end

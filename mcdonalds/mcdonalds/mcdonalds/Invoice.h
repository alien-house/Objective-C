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
@property (strong, nonatomic) NSString* size;
@property (strong, nonatomic) NSString* name;
@property NSInteger price;
@property NSInteger mealID;

//consructors
-(id) initWithID:(NSInteger)myID name:(NSString*) name mealID:(NSInteger) mealID price:(NSInteger) myPrice size:(NSString*) mySize;

//methods(APIs)



@end

//
//  MenuDetail.h
//  mcdonalds
//
//  Created by sin on 2017/02/27.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuDetail : NSObject

//properties
@property NSInteger menuID;
@property (strong, nonatomic) NSString* name;
@property NSInteger price;
@property (strong, nonatomic) NSString* size;

//consructors
-(id)initWithMenuID:(NSInteger)menuID name:(NSString*)name price:(NSInteger)price size:(NSString*)size;



@end

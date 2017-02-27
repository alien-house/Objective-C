//
//  Menu.h
//  mcdonalds
//
//  Created by sin on 2017/02/27.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuDetail.h"

@interface Menu : NSObject

//properties
@property (strong, nonatomic) NSMutableArray<MenuDetail*>* menu;

//consructors
-(id) init;

//methods(APIs)

@end

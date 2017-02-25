//
//  Ingredient.h
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ingredient : NSObject

//properties
@property (strong, nonatomic) NSString* name;

//consructors
-(id) initWithName:(NSString*)name;

//methods(APIs)

@end

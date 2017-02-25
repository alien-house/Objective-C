//
//  mealBox.h
//  mcdonalds
//
//  Created by sin on 2017/02/23.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MealBox : NSObject

//properties
@property (strong, nonatomic) NSString* size;

//consructors
-(id) initWithSize:(NSString*)size;

//methods(APIs)


@end

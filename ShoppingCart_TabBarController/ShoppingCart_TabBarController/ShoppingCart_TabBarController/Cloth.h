//
//  Cloth.h
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "Material.h"

@interface Cloth : Product

@property (strong, nonatomic) NSMutableArray<Material*>* ClothMaterials;

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry ClothMaterials:(NSMutableArray<Material*>*)ClothMaterials;

@end

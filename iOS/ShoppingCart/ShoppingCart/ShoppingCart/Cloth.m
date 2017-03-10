//
//  Cloth.m
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Cloth.h"
#import "Material.h"

@implementation Cloth

-(id)initWithID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry ClothMaterials:(NSMutableArray<Material*>*)ClothMaterials{
    
    self = [super initWithID:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    
    if(self){
        self.ClothMaterials = ClothMaterials;
    }
    
    return self;
    
}

@end

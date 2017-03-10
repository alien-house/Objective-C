//
//  Material.h
//  finalproject_problem3
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Material : NSObject

@property int MaterialCode;
@property (strong, nonatomic) NSString* MaterialName;

-(id)initWithCode:(int)MaterialCode MaterialName:(NSString*)MaterialName;


@end

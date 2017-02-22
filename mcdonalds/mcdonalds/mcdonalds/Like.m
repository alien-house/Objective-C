//
//  Like.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Like.h"

@implementation Like

-(id) initWithLikeID:(int)likeID likeOwner:(User*)likeOwner date:(NSDate*)date{
    self = [super init];
    
    if(self){
        self.likeID = likeID;
        self.likeOwner = likeOwner;
        self.date = date;
    }
    
    return self;
    
}




@end

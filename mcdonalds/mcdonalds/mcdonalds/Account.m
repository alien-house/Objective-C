//
//  Account.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Account.h"

@implementation Account

//id = any object
-(id) initWithUsername:(NSString*)myUsername password:(NSString*) myPassword{
    
    self = [super init]; //allocated some memory
    if(self){
        self.username = myUsername;
        self.password = myPassword;
    }
    
    return self;
}




-(BOOL) isAccountValid{
    return true;

}





@end

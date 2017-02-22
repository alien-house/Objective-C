//
//  Account.h
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

//properties

//username
//password
@property (strong, nonatomic) NSString* username;
@property (strong, nonatomic) NSString* password;


//consructors

//-(id) init(NSString* username, NSString* password);
-(id) initWithUsername:(NSString*)myUsername password:(NSString*) myPassword;


//methods(APIs)

-(BOOL) isAccountValid;




@end

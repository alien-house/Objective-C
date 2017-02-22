//
//  FeedsManager.h
//  
//
//  Created by sin on 2017/02/21.
//
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "Post.h"

@interface FeedsManager : NSObject

//properties

//constructors


//methods (APIs)
-(NSArray<Post*>*) loadsFeedsForAccount:(Account*)account amount:(int)numberOfFeeds;

@end

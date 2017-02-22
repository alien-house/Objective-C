//
//  PostComment.h
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Attachment.h"

@interface PostComment : NSObject

//propeties
@property int commentID;
@property (strong, nonatomic) User* commentAuthor;
@property (strong, nonatomic) NSDate* date;
@property (strong, nonatomic) NSMutableArray<Attachment*>* attachments;

//constructor
-(id) initWithCommentID:(int)commentID commentAuthor:(User*)commentAuthor date:(NSDate*)date attachments:(NSMutableArray<Attachment*>*)attachments;

//mehods(APIs)


@end

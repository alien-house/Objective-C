//
//  PostComment.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "PostComment.h"

@implementation PostComment

-(id) initWithCommentID:(int)commentID commentAuthor:(User*)commentAuthor date:(NSDate*)date attachments:(NSMutableArray<Attachment*>*)attachments{

    self = [super init];
    
    if(self){
        self.commentID = commentID;
        self.commentAuthor = commentAuthor;
        self.date = date;
        self.attachments = attachments;

    }
    
    return self;
    
}




@end

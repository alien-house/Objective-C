//
//  Post.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Post.h"

@implementation Post

-(id) initWIthDate:(NSDate*)data author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments numberOfLikes:(int)numberOfLikes numberofCommnets:(int)numberofCommnets likes:(NSMutableArray<Like*>*)likes commnets:(NSMutableArray<PostComment*>*)commnets type:(int)type{
    
    self = [super init];
    if(self){
        self.data = data;
        self.author = author;
        self.attachments = attachments;
        self.numberOfLikes = numberOfLikes;
        self.numberofCommnets = numberofCommnets;
        self.likes = likes;
        self.comments = commnets;
        
        self.type = type;
        
        self.isReported = false;
    }
    return self;
    
    
}


//mehods (APIs)
-(void) addLike:(Like*) newLike{
    self.numberOfLikes++;
    [self.likes addObject:newLike];
    
}

-(void) addCommnet:(PostComment*) newComment{
    self.numberofCommnets++;
    [self.comments addObject:newComment];
}


-(void) EditPosWithNewAttachments:(NSArray<Attachment*>*) newAttachments newType:(int)newType{
    //TODO
}


-(void) reportThePost{
    self.isReported = true;
}

-(void) show{
    NSLog(@" I am here");
}





@end

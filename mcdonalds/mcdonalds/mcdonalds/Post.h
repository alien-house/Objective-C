//
//  Post.h
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Attachment.h"
#import "Like.h"
#import "PostComment.h"


@interface Post : NSObject

//properties

@property (strong, nonatomic) NSDate* data;
@property (strong, nonatomic) User* author;

@property (strong, nonatomic) NSMutableArray<Attachment*>* attachments;
@property int numberOfLikes;
@property int numberofCommnets;

@property (strong, nonatomic) NSMutableArray<Like*>* likes;
@property (strong, nonatomic) NSMutableArray<PostComment*>* comments;

@property BOOL isReported;

@property int type;


//constructors
-(id) initWIthDate:(NSDate*)data author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments numberOfLikes:(int)numberOfLikes numberofCommnets:(int)numberofCommnets likes:(NSMutableArray<Like*>*)likes commnets:(NSMutableArray<PostComment*>*)commnets type:(int)type;


//mehods (APIs)
-(void) addLike:(Like*) newLike;
-(void) addCommnet:(PostComment*) newComment;

-(void) EditPosWithNewAttachments:(NSArray<Attachment*>*) newAttachments newType:(int)newType;
-(void) reportThePost;
-(void) show;

@end

//
//  Attachment.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Attachment.h"

@implementation Attachment

-(id) initWithAttachmentID:(int)attachmentID type:(int)type dataURL:(NSString*)dataURL{
    self = [super init];
    if(self){
        self.attachmentID = attachmentID;
        self.type = type;
        self.dataURL = dataURL;
    }
    return self;
}


@end

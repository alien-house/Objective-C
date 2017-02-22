//
//  Attachment.h
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Foundation/Foundation.h>

//POJO: Plain Old Java Object: Classes with only propetires and constructors and
@interface Attachment : NSObject

//properties
@property int attachmentID;
@property int type;
@property (strong, nonatomic) NSString* dataURL;

//constructors

-(id) initWithAttachmentID:(int)attachmentID type:(int)type dataURL:(NSString*)dataURL;


//methods (APIs)





@end

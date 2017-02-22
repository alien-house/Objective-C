//
//  main.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Account.h"
#import "Profile.h"
#import "FeedsManager.h"

int main(int argc, const char * argv[]) {
    
    //create an account object
    
    //Step1: Creating an account object
    Account* myAccount = [[Account alloc] initWithUsername:@"ali" password:@"ali123"];
    
    
    //Step2: Checking whether the account is valid or not
    BOOL isValid = [myAccount isAccountValid];
    
    if(isValid==true){
        NSLog(@"\nThe account is Valid\n");
    }else{
        NSLog(@"\nThe account is Not valid\n");
    }
    
    
    //create a profile object
    //Step1:
    Profile* myProfile = [[Profile alloc] initWithFirstname:@"Alii" lastname:@"Rese" address:@"Vancouver" age:82 phoneNumber:@"234567" profilePicURL:@"https://tsetsets.com"];
    
    [myProfile printProfile];
    
    
    //Ask Linkedin to show us 10 most recent posts
    FeedsManager* feedManeger = [[FeedsManager alloc] init];
    NSArray<Post*>* listOfPosts = [feedManeger loadsFeedsForAccount:myAccount amout:10];
    
    for (int i=0; i<listOfPosts.count; i++) {
        Post* post = [listOfPosts objectAtIndex:1];
        
        // showing the post
        [post show];
        //reporting the post
        [post reportThePost];
        
        NSDate* date = [NSDate date];
        
        //adding a like to the post
        User* user = [[User alloc] init];
        Like* like = [[Like alloc] initWithLikeID:1 likeOwner:user date:date];
        [post addLike:like];
        
        NSMutableArray<Attachment*>* attachments = [[NSMutableArray<Attachment*>* alloc] init];
        Attachment* att = [[Attachment alloc] initWithAttachmentID:1 type:1 dataURL:@"htttp;_/:wwww.ggoog;e."];
        
        [attachments addObject:att1];
        
        Attachment* att2 = [[Attachment alloc] initWithAttachmentID:1 type:1 dataURL:@"htttp;_/:wwww.ggoog;e."];
        
        
        
        PostComment* comment = [PostComment alloc] initWithCommentID:1 commentAuthor:user date:date attachments:NULL
        [post addCommnet:attachments];
        
        
    }
    
    
    
    return NSApplicationMain(argc, argv);
}

//
//  Profile.m
//  mcdonalds
//
//  Created by sin on 2017/02/21.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "Profile.h"

@implementation Profile

-(id) initWithFirstname:(NSString*)firstname lastname:(NSString*)lastname address:(NSString*)address age:(int)age phoneNumber:(NSString*)phoneNumber profilePicURL:(NSString*)profilePicURL{
    
    //step1 : memory allocation
    self = [super init]; // memory allocation
    
    //step2 : properties initialization
    if(self){
        self.firstname = firstname;
        self.lastname = lastname;
        self.address = address;
        self.age = age;
        self.phoneNumber = phoneNumber;
        self.profilePicURL = profilePicURL;
    }
    return self;
}

-(void) editProfileWithNewfirstname:(NSString*)newFirstname newLastname:(NSString*)newLastname newAddress:(NSString*)newAddress newAge:(int)newAge newPhoneNumber:(NSString*)newPhoneNumber newprofilePicURL:(NSString*)newprofilePicURL{
    
    self.firstname = newFirstname;
    self.lastname = newLastname;
    self.address = newAddress;
    self.age = newAge;
    self.phoneNumber = newPhoneNumber;
    self.profilePicURL = newprofilePicURL;
    
}

-(void) saveProfile{
    NSLog(@"\nAccount has been successfully updated!\n");
}

-(void) printProfile{
    NSLog(@"\n\n====================================\n");
    NSLog(@"Firstname is %@\n", self.firstname);
    NSLog(@"Lastname is %@\n", self.lastname);
    NSLog(@"Address is %@\n", self.address);
    NSLog(@"Age is %d\n", self.age);
    
    NSLog(@"Phone# is %@\n", self.phoneNumber);
    NSLog(@"My profile Picture is located at this link %@\n", self.profilePicURL);
    NSLog(@"\n\n====================================\n");
}

@end

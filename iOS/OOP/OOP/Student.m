//
//  Student.m
//  OOP
//
//  Created by sin on 2017/02/16.
//  Copyright © 2017年 shinji. All rights reserved.
//

// more private stuff
#import "Student.h"

@implementation Student


-(void) printStudentInformation{
    NSLog(@"Hello");
    NSLog(@"My name is %@ and my address is %@. My age is %d, My major is %@",
          self.name,
          self.address,
          self.age,
          self.major);
}

-(id) initStudentwithStudentID:(NSString*) studentID name: (NSString*)name age:(int) age major:(NSString*) major courses:(NSArray<NSString*>*) courses admissionYear:(int) admissionYear address:(NSString*) address{
    
    self = [super init];
    if(self){
        self.studentID = studentID;
        self.addmissionYear = admissionYear;
        self.age = age;
        self.major = major;
        self.name = name;
        self.courses = courses;
        self.address = address;
    }
    
    return self;
    
};

@end

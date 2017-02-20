//
//  Student.h
//  OOP
//
//  Created by sin on 2017/02/16.
//  Copyright © 2017年 shinji. All rights reserved.
//

// more public stuff
#import <Foundation/Foundation.h>

@interface Student : NSObject
// connection with __
// how to comunicate each other


/* Properities */

//everything is pointer, except primitive data
@property NSString* studentID;
@property NSInteger age; // int is same
@property NSString* name;
@property NSString* major;
@property float gpa;
@property NSArray<NSString*>* courses;
//@property (strong, nonatomic) NSString* major1;
@property int addmissionYear;
@property NSString* address;
//ARC:automaticaly memory allocation



/* Method */
// Objective-C
-(void) printStudentInformation;
//-(void) printStudentID;
//-(void) printAge;


// C
//void printStudent(Struct Course* students){}


//constructer
//id initStudent(NSString* studentID, int age, NSString* name, NSString* major, float gpa, NSArray<NSString*>* courses, int admissionYear, NSString* address)


-(id) initStudentwithStudentID:(NSString*) studentID name: (NSString*)name age:(int) age major:(NSString*) major courses:(NSArray<NSString*>*) courses admissionYear:(int) admissionYear address:(NSString*) address;





@end

//
//  ViewController.m
//  OOP
//
//  Created by sin on 2017/02/16.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createOneStudentObject];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)createOneStudentObject{
    //We want to create an object from classs student
    
    //alloc using these parametor
    Student* student1 = [[Student alloc] initStudentwithStudentID:@"12345" name:@"Ali" age:82 major:@"Objective-C" courses:NULL admissionYear:2016 address:@"Van"];
    
    [student1 printStudentInformation];

}



@end

//
//  ViewController.m
//  UINavigationController
//
//  Created by sin on 2017/03/16.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.window.rootViewController = navigationController;
    self.navigationController.title = nil;
    self.navigationController.title = @"This is first";
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

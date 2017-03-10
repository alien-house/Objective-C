//
//  ViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ViewController.h"
#import "DrinksViewController.h"

@interface ViewController () <DrinksViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (IBAction)btnClothGotoPage:(UIButton *)sender {
//}
//- (IBAction)btnFoodGotoPage:(UIButton *)sender {
//}
//- (IBAction)btnDrinkGotoPage:(UIButton *)sender {
//}

-(void) didsomething:(NSDate*)date{
    NSLog(@"didsomething!!");
}

-(void) sendRequest{
//    SampleViewController *sampleViewController = segue.destinationViewController;
//    DrinksViewController.delegate = self;
}


@end

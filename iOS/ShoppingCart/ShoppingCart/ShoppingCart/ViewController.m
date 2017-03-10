//
//  ViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ViewController.h"
#import "DrinksViewController.h"
#import "ListViewController.h"
#import "Product.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cart = [[NSMutableArray alloc] init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    // (necessary for delegating②)
    if ([segue.identifier isEqualToString:@"drinksView"]) {
        DrinksViewController *drinksViewController = segue.destinationViewController;
        drinksViewController.delegate = self;
    }else if([segue.identifier isEqualToString:@"foodView"]){
        FoodViewController *foodViewController = segue.destinationViewController;
        foodViewController.delegate = self;
    }else if([segue.identifier isEqualToString:@"clothView"]){
        ClothViewController *clothViewController = segue.destinationViewController;
        clothViewController.delegate = self;
    }
    
    if ([[segue identifier] isEqualToString:@"itemListView"]) {
        ListViewController *listController = segue.destinationViewController;
//        listController = [[NSMutableArray<Product*> alloc] init];
        listController.listItem = self.cart;
    }
}

-(void)sayHello{
    //    NSLog(@" HEllllllll!!");
}

-(void)addItemIntoCart:(Product*)item{
    [self.cart addObject:item];
    self.totalPrice += item.productPrice;
    self.priceBox.text = [NSString stringWithFormat:@"$%0.2f", self.totalPrice];
}


//-(void) sendRequest{
////    SampleViewController *sampleViewController = segue.destinationViewController;
////    DrinksViewController.delegate = self;
//}


@end

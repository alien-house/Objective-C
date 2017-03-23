//
//  TabbarViewController.m
//  ShoppingCart_TabBarController
//
//  Created by sin on 2017/03/20.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "TabbarViewController.h"

@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cart = [[NSMutableArray alloc] init];
    
//    self.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addItemIntoCart:(Product*)item{
    NSLog(@"addItemIntoCart!!!!!!");
    [self.cart addObject:item];
    self.totalPrice += item.productPrice;
//    self.priceBox.text = [NSString stringWithFormat:@"$%0.2f", self.totalPrice];
}


-(NSMutableArray<Product*>*)getItemsArray{
    return self.cart;
}

-(float)getPrice{
    return self.totalPrice;
}



//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
//    NSLog(@"viewController!!!!!!");
//    
//    UIViewController *controller = [[self storyboard] instantiateViewControllerWithIdentifier:@"mainView"];
//    
//    if ([viewController isMemberOfClass:[ClothViewController class]]) {
//        NSLog(@"%@",viewController);
//        ClothViewController *clothViewController = (ClothViewController*)viewController;
//        clothViewController.delegate = controller;
//    }
//    
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

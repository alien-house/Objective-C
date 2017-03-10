//
//  DrinksViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "DrinksViewController.h"
#import "Drink.h"

@interface DrinksViewController ()

@property (strong, nonatomic) Drink* drink;

@end


@implementation DrinksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)addItem:(UIButton *)sender {

    NSString* drinkID            = self.drinkIDTextField.text;
    NSString* drinkName          = self.drinkNameTextField.text;
    NSString* drinkPrice         = self.drinkPriceTextField.text;
    NSString* drinkMadeInCountry = self.drinkMadeInCountryTextField.text;
    
    
    NSUInteger sgmt = [self.drinkisDrinkDietSwitch selectedSegmentIndex];
    NSString* sgtl = [self.drinkisDrinkDietSwitch titleForSegmentAtIndex:sgmt];
    NSLog(@"drinkisDrinkDietSwitch:%@",sgtl);
    
    NSString* drinkisDrinkDiet   = sgtl;
    NSString* drinkSize          = self.drinkSizeTextField.text;
    
    self.drink = [[Drink alloc]
                    initWithID:(int)drinkID
                    productName:drinkName
                    productPrice:[drinkPrice floatValue]
                    productMadeInCountry:drinkMadeInCountry
                    productSize:(int)drinkSize
                    isDrinkDiet:drinkisDrinkDiet];
    
    
    
    [self.delegate addItemIntoCart:self.drink];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)closePage:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
-(void)watchSomething{
    NSLog(@"helloooooooo");
}


@end

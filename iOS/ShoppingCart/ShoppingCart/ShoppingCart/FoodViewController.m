//
//  foodViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "FoodViewController.h"
#import "Food.h"

@interface FoodViewController ()

@property (strong, nonatomic) Food* food;

@end

@implementation FoodViewController

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
    
    NSString* foodID            = self.foodIDTextField.text;
    NSString* foodName          = self.foodNameTextField.text;
    NSString* foodPrice         = self.foodPriceTextField.text;
    NSString* foodMadeInCountry = self.foodMadeInCountryTextField.text;
    NSString* foodCalorie   = self.foodCalorieTextField.text;
    NSString* foodSize          = self.foodSizeTextField.text;
    NSString* foodIng            = self.foodIngredientsTextField.text;
    NSMutableArray* ingredients = [[NSMutableArray alloc] init];
    [ingredients addObject:foodIng];
    
    self.food = [[Food alloc]
                 initWithID:(int)foodID
                 productName:foodName
                 productPrice:[foodPrice floatValue]
                 productMadeInCountry:foodMadeInCountry
                 productSize:(int)foodSize
                 foodCalorie:(int)foodCalorie
                 foodIngredients:ingredients
                 ];
    
    
    [self.delegate addItemIntoCart:self.food];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)btnClose:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end

//
//  ClothViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ClothViewController.h"
#import "Cloth.h"
#import "Material.h"

@interface ClothViewController ()

@property (strong, nonatomic) Cloth* cloth;

@end

@implementation ClothViewController

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
    
    NSString* clothID            = self.ClothIDTextField.text;
    NSString* clothName          = self.ClothNameTextField.text;
    NSString* clothPrice         = self.ClothPriceTextField.text;
    NSString* clothMadeInCountry = self.ClothMadeInCountryTextField.text;
    NSString* clothMaterialsName          = self.ClothMaterialsTextField.text;
    NSString* clothMaterialsCode          = self.ClothMaterialsCodeTextField.text;
    
    NSMutableArray<Material*>* mateirals = [[NSMutableArray<Material*> alloc] init];
    Material* mateiral1 = [[Material alloc] initWithCode:(int)clothMaterialsCode MaterialName:clothMaterialsName];
    [mateirals addObject:mateiral1];
    
    
    self.cloth = [[Cloth alloc]
                 initWithID:(int)clothID
                 productName:clothName
                 productPrice:[clothPrice floatValue]
                 productMadeInCountry:clothMadeInCountry
                 ClothMaterials:mateirals
                 ];
    
    
    [self.delegate addItemIntoCart:self.cloth];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)btnClose:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end

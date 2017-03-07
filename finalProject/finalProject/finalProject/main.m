//
//  main.m
//  finalProject
//
//  Created by sin on 2017/03/06.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ShoppingCart.h"
#import "Drink.h"
#import "Food.h"
#import "Cloth.h"
#import "Material.h"

int main(int argc, const char * argv[]) {
    
    ShoppingCart* myCart = [[ShoppingCart alloc] init];
    
    Drink* pepsi = [[Drink alloc] initWithID:412 productName:@"Pepsi" productPrice:2 productMadeInCountry:@"USA" productSize:150 amount:3 isDrinkDiet:NO];
    Drink* gingerZero = [[Drink alloc] initWithID:183 productName:@"Ginger Zero" productPrice:3 productMadeInCountry:@"Canada" productSize:200 amount:1 isDrinkDiet:YES];
    Food* chicken = [[Food alloc] initWithID:100 productName:@"Chicken" productPrice:8 productMadeInCountry:@"Canada" productSize:4 amount:2 foodCalorie:350 foodIngredients:@[@"chicken",@"oil",@"chees"]];
    Food* pasta = [[Food alloc] initWithID:101 productName:@"Pasta" productPrice:18 productMadeInCountry:@"Canada" productSize:3 amount:2 foodCalorie:250 foodIngredients:@[@"pasta",@"meet",@"spinach"]];
    
    Material* cotton = [[Material alloc] initWithCode:10 MaterialName:@"cotton"];
    Material* nylon = [[Material alloc] initWithCode:11 MaterialName:@"nylon"];
    NSMutableArray<Material*>* materialsTshirt = [NSMutableArray<Material*> arrayWithObjects : cotton, nylon, nil];
    
    Cloth* tShirt = [[Cloth alloc] initWithID:701 productName:@"T-shirt" productPrice:15 productMadeInCountry:@"China"  amount:1 ClothMaterials:materialsTshirt];

    
    [myCart addItem:pepsi];
    [myCart addItem:gingerZero];
    [myCart addItem:chicken];
    [myCart addItem:pasta];
    [myCart addItem:tShirt];
    
    
    [myCart calculateTotalCost];
    
    [myCart printAllItemName];
    
    
    return NSApplicationMain(argc, argv);
}

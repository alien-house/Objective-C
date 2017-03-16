//
//  ViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/07.
//  Copyright © 2017年 shinji. All rights reserved.
//
// sample
// http://dev.classmethod.jp/smartphone/iphone/ios-delegate/

#import "ViewController.h"
#import "DrinksViewController.h"
#import "ListViewController.h"
#import "Product.h"


@interface ViewController ()

@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForSection0;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.catBtnTableView.delegate = self;
    self.catBtnTableView.dataSource = self;
    
    self.cart = [[NSMutableArray alloc] init];
    self.itemsForSection0 = [@[@"cloth.png",@"drink.png",@"food.png"] mutableCopy];
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([segue.identifier isEqualToString:@"itemListView"]) {
        ListViewController *listController = segue.destinationViewController;
        listController.listItem = self.cart;
    }
}


-(void)addItemIntoCart:(Product*)item{
    [self.cart addObject:item];
    self.totalPrice += item.productPrice;
    self.priceBox.text = [NSString stringWithFormat:@"$%0.2f", self.totalPrice];
}

- (IBAction)gotoPage:(id)sender {
    
    UIButton *button = (UIButton *)sender;
    
    if(button.tag == 1){
        ClothViewController *clothView = [self.storyboard instantiateViewControllerWithIdentifier:@"ClothStoryID"];
        clothView.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        clothView.delegate = self;
        
        [self presentViewController:clothView animated:YES completion:nil];
        
    }else if(button.tag == 2){
        DrinksViewController *drinkView = [self.storyboard instantiateViewControllerWithIdentifier:@"DrinkStoryID"];
        drinkView.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        drinkView.delegate = self;

        [self presentViewController:drinkView animated:YES completion:nil];
        
    }else if(button.tag == 3){
        FoodViewController *foodView = [self.storyboard instantiateViewControllerWithIdentifier:@"FoodStoryID"];
        foodView.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        foodView.delegate = self;
        [self presentViewController:foodView animated:YES completion:nil];
        
    }
  
}

-(NSMutableArray<Product*>*)getItemsArray{
    return self.cart;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        //Step 1: Cell creation
        CategoryAddViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"categoryAddBtnID"];
        if(!cell){
            cell = [[CategoryAddViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"categoryAddBtnID"];
        }
        
//        NSLog(@"******:%ld",(long)indexPath.row);
        //Step2: Data Binding
        cell.catAddBtnImage.image = [UIImage imageNamed:[self.itemsForSection0 objectAtIndex:indexPath.row]];
        cell.catAddBtn.tag = indexPath.row + 1;
        
        return  cell;
        
    }else{
        return 0;
    }
    
}


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.itemsForSection0.count;

//    if(section == 0){
//    }else{
//    }
    
}

@end

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

@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForTextFName;
@property (strong, nonatomic) Food* food;

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.foodTableView.delegate = self;
    self.foodTableView.dataSource = self;
    self.itemsForTextFName = [@[@"foodID",@"foodName",@"foodPrice",@"foodMadeInCountry",@"foodCalorie",@"foodSize",@"foodIngredients"] mutableCopy];
    
    self.foodTextFieldArray = [[NSMutableArray alloc] init];
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
    
    FoodTableViewCell* cell = [self.foodTableView dequeueReusableCellWithIdentifier:@"clothTextFieldID"];
    if(!cell){
        cell = [[FoodTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"clothTextFieldID"];
    }
    
    NSMutableArray* txtfieldArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.foodTextFieldArray.count; i++) {
        UITextField* te = [self.foodTextFieldArray objectAtIndex:i];
        [txtfieldArray addObject:te.text];
    }
    NSString* foodIng            = txtfieldArray[6];
    NSMutableArray* ingredients = [[NSMutableArray alloc] init];
    [ingredients addObject:foodIng];
    
    self.food = [[Food alloc]
                 initWithID:(int)txtfieldArray[0]
                 productName:txtfieldArray[1]
                 productPrice:[txtfieldArray[2] floatValue]
                 productMadeInCountry:txtfieldArray[3]
                 productSize:(int)txtfieldArray[4]
                 foodCalorie:(int)txtfieldArray[5]
                 foodIngredients:ingredients
                 ];
    
    [self.delegate addItemIntoCart:self.food];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)btnClose:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        //Step 1: Cell creation
        FoodTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"foodTextFieldID"];
        if(!cell){
            cell = [[FoodTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"foodTextFieldID"];
        }
        
        //Step2: Data Binding
        cell.foodTextField.delegate = self;
        cell.foodTextField.placeholder = [self.itemsForTextFName objectAtIndex:indexPath.row];
        cell.foodTextField.tag = indexPath.row + 1;
        self.foodTextFieldArray[indexPath.row] = cell.foodTextField;
        
        return  cell;
        
    }else{
        return 0;
    }
    
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemsForTextFName.count;
}


@end

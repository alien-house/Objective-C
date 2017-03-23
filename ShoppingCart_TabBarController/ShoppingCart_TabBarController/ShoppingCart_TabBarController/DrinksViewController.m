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

@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForTextFName;
@property (strong, nonatomic) Drink* drink;

@end


@implementation DrinksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.drinkTableView.delegate = self;
    self.drinkTableView.dataSource = self;
    self.itemsForTextFName = [@[@"drinkID",@"drinkName",@"drinkPrice",@"drinkMadeInCountry",@"isDrinkDiet",@"drinkSize"] mutableCopy];
    
    self.drinkTextFieldArray = [[NSMutableArray alloc] init];
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

    DrinkTableViewCell* cell = [self.drinkTableView dequeueReusableCellWithIdentifier:@"drinkTextFieldID"];
    if(!cell){
        cell = [[DrinkTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"drinkTextFieldID"];
    }
    
    NSMutableArray* txtfieldArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.drinkTextFieldArray.count; i++) {
        UITextField* te = [self.drinkTextFieldArray objectAtIndex:i];
        [txtfieldArray addObject:te.text];
    }
    
    self.drink = [[Drink alloc]
                  initWithID:(int)txtfieldArray[0]
                  productName:txtfieldArray[1]
                  productPrice:[txtfieldArray[2] floatValue]
                  productMadeInCountry:txtfieldArray[3]
                  productSize:(int)txtfieldArray[4]
                  isDrinkDiet:txtfieldArray[5]];
    
//    [self.delegate addItemIntoCart:self.drink];
    //    [self.navigationController popViewControllerAnimated:YES];
    [((TabbarViewController*)(self.tabBarController)) addItemIntoCart:self.drink];
    
}

- (IBAction)closePage:(UIButton *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];

}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        //Step 1: Cell creation
        DrinkTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"drinkTextFieldID"];
        if(!cell){
            cell = [[DrinkTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"drinkTextFieldID"];
        }
        
        //Step2: Data Binding
        cell.drinkTextField.delegate = self;
        cell.drinkTextField.placeholder = [self.itemsForTextFName objectAtIndex:indexPath.row];
        cell.drinkTextField.tag = indexPath.row + 1;
        self.drinkTextFieldArray[indexPath.row] = cell.drinkTextField;
        
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

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

@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForTextFName;
@property (strong, nonatomic) Cloth* cloth;

@end

@implementation ClothViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    self.clothTableView.delegate   = self;
    self.clothTableView.dataSource = self;
    self.itemsForTextFName = [@[@"ClothID",@"ClothName",@"ClothPrice",@"ClothMadeInCountry",@"ClothMaterialsName",@"ClothMaterialsCode"] mutableCopy];
    
    self.clothTextFieldArray = [[NSMutableArray alloc] init];
    
//    [self.tabBarController setSelectedIndex:1];
    
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
    
    NSLog(@"ClothViewController Itemmm");

    
    ClothTableViewCell* cell = [self.clothTableView dequeueReusableCellWithIdentifier:@"clothTextFieldID"];
    if(!cell){
        cell = [[ClothTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"clothTextFieldID"];
    }
    
    NSMutableArray* txtfieldArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.clothTextFieldArray.count; i++) {
        UITextField* te = [self.clothTextFieldArray objectAtIndex:i];
        [txtfieldArray addObject:te.text];
    }
    NSMutableArray<Material*>* mateirals = [[NSMutableArray<Material*> alloc] init];
    Material* mateiral1 = [[Material alloc] initWithCode:(int)txtfieldArray[4] MaterialName:txtfieldArray[5]];
    [mateirals addObject:mateiral1];

    self.cloth = [[Cloth alloc]
                     initWithID:(int)txtfieldArray[0]
                     productName:txtfieldArray[1]
                     productPrice:[txtfieldArray[2] floatValue]
                     productMadeInCountry:txtfieldArray[3]
                     ClothMaterials:mateirals
                     ];
    
    
//    NSLog(@"%f",((TabbarViewController*)(self.tabBarController)).totalPrice);
    
    [((TabbarViewController*)(self.tabBarController)) addItemIntoCart:self.cloth];

//    self.tabBarController.viewControllers[0].totalPrice

//    self.tabBarController.totalPrice
//    [self.tabBarController addItemIntoCart:self.cloth];
    
//    [self.delegate addItemIntoCart:self.cloth];
    
//    [self.navigationController popViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
    
}


-(BOOL)textFieldShouldReturn:(UITextField*)textField {
    
//    namae_kakutei = [NSString stringWithFormat:@"%@",[namefield text]];
    
    //namefieldに入力された文字列がリターンキーを押すと表示
    
    [textField resignFirstResponder];
    
    return YES;
}


- (IBAction)btnClose:(UIButton *)sender {
        [self.navigationController popViewControllerAnimated:YES];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        //Step 1: Cell creation
        ClothTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"clothTextFieldID"];
        if(!cell){
            cell = [[ClothTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"clothTextFieldID"];
        }
        
        //Step2: Data Binding
        cell.clothTextField.delegate            = self;
        cell.clothTextField.placeholder         = [self.itemsForTextFName objectAtIndex:indexPath.row];
        cell.clothTextField.tag                 = indexPath.row + 1;
        self.clothTextFieldArray[indexPath.row] = cell.clothTextField;
        
//        self.ClothIDTextField = cell.clothTextField;
        
        
//        cell.catAddBtnImage.image = [UIImage imageNamed:[self.itemsForSection0 objectAtIndex:indexPath.row]];
//        cell.catAddBtn.tag = indexPath.row + 1;
        
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

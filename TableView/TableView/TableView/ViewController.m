//
//  ViewController.m
//  TableView
//
//  Created by sin on 2017/03/10.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//data sources
@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForSection0;
@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForSection1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    self.itemsForSection0 = [@[@"Bob",@"Sam",@"Peter",@"Jonasan",@"Mary"] mutableCopy];
    self.itemsForSection1 = [@[@"Canada",@"USA",@"PGerman",@"Japan",@"Cnina"] mutableCopy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        
        //Step 1: Cell creation
        ImageTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ImageTableViewCellID"];
        if(!cell){
            cell = [[ImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ImageTableViewCellID"];
        }
        
        //Step2: Data Binding
        cell.myImageView.image = [UIImage imageNamed:@"coffee"];
//        cell.myText.text = @"Hellow WOrld";
        cell.myText.text = [self.itemsForSection0 objectAtIndex:indexPath.row];
        
        
        return  cell;
        
        
    }else{ // section == 1
        //Step1 : Cell creation and Reuse
        textFieldTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"textFieldTableViewCellID"];
        if(!cell){
            cell = [[textFieldTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"textFieldTableViewCellID"];
        }
        
        //Step2 : Data Binding
//        cell.myTextfieldVIew.text = @"Good Bye World...";
        cell.myTextfieldVIew.text = [self.itemsForSection1 objectAtIndex:indexPath.row];
        return  cell;
    }
    
}


-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 120;
    }else{
        return 90;
    }
}


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}


- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    
    if(section == 0){
        return self.itemsForSection0.count;
    }else{
        return self.itemsForSection1.count;
    }
    
}

@end

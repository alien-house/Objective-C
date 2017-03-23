//
//  ListViewController.m
//  ShoppingCart
//
//  Created by sin on 2017/03/08.
//  Copyright © 2017年 shinji. All rights reserved.
//

#import "ListViewController.h"
#import "Product.h"

@interface ListViewController ()
@property (strong, nonatomic) NSMutableArray<NSString*>* itemsForSection0;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.listTableView.delegate = self;
    self.listTableView.dataSource = self;
    
//    self.listItem = [[NSMutableArray<Product*> alloc] init];
    
    // Do any additional setup after loading the view.
}

-(void) viewDidAppear:(BOOL)animated{
    
    [self listItemNamePrint:((TabbarViewController*)(self.tabBarController)).cart];
    
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

-(void)listItemNamePrint:(NSMutableArray<Product*>*)list{
    
    if(list.count != 0){
        NSString* sentence = [[NSString alloc] init];
        for (int i = 0; i < list.count; i++) {
            sentence = [[sentence stringByAppendingString:list[i].productName] stringByAppendingString:@"\n"];
        }
        self.listItemName.text = sentence;
        NSLog(@":::%@",sentence);
    }
}


- (IBAction)btnBack:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        
        //Step 1: Cell creation
        ListTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"listViewID"];
        if(!cell){
            cell = [[ListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"listViewID"];
        }
        
        //Step2: Data Binding
        NSString* sentence = [[NSString alloc] init];
        for (int i = 0; i < ((TabbarViewController*)(self.tabBarController)).cart.count; i++) {
            sentence = [[sentence stringByAppendingString:((TabbarViewController*)(self.tabBarController)).cart[i].productName] stringByAppendingString:@"\n"];
        }
        cell.listView.text = sentence;
        
        
        return cell;
        
    }else{
        return 0;
    }
    
}


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//    return ((TabbarViewController*)(self.tabBarController)).cart.count;
    return 1;
    
    
}













@end

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

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.listItem = [[NSMutableArray<Product*> alloc] init];
    
    // Do any additional setup after loading the view.
}

-(void) viewDidAppear:(BOOL)animated{
    [self listItemNamePrint:self.listItem];
    
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
    
//    NSLog(@"count : %lu\n",(unsigned long)list.count);
    if(list.count != 0){
        NSString* sentence = [[NSString alloc] init];
        for (int i = 0; i < list.count; i++) {
            sentence = [[sentence stringByAppendingString:list[i].productName] stringByAppendingString:@"\n"];
            
        }
        self.listItemName.text = sentence;
    }
}


- (IBAction)btnBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end

//
//  ViewController.m
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray<Product*>* products;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self fakeData];
    
    
    self.headerViewLabel.text = @"Shopping Card";
    self.headerImageView.image = [UIImage imageNamed:@"atomix_ecommerce"];
    
    
    
}

-(void) fakeData
{
    self.products = [[NSMutableArray<Product*> alloc] init];
    
    
    Product* p1 = [[Product alloc] initWithImageName:@"drink" desc:@"Pepsi"];
    Product* p2 = [[Product alloc] initWithImageName:@"carro" desc:@"Desk"];
    Product* p3 = [[Product alloc] initWithImageName:@"T-Shirt" desc:@"TV"];
    Product* p4 = [[Product alloc] initWithImageName:@"tea-icon" desc:@"Laptop"];
    Product* p5 = [[Product alloc] initWithImageName:@"catering-icon" desc:@"Cell Phone"];
    Product* p6 = [[Product alloc] initWithImageName:@"coffee-takeaway-flat" desc:@"Coffee"];
    
    
    [self.products addObject:p1];
    [self.products addObject:p2];
    [self.products addObject:p3];
    [self.products addObject:p4];
    [self.products addObject:p5];
    [self.products addObject:p6];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.products.count;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CustomUITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CustomUITableViewCellID"];
    
    if(!cell)
    {
        cell = [[CustomUITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CustomUITableViewCellID"];

    }
    
    Product* p = [self.products objectAtIndex:indexPath.row];
    
    cell.cellImgView.image = [UIImage imageNamed:p.imageName];
    
    cell.cellDesc.text = p.desc;
    
    return cell;
}

@end

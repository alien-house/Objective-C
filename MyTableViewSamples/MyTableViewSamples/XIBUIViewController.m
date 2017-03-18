//
//  XIBUIViewController.m
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "XIBUIViewController.h"

@interface XIBUIViewController ()

@property (strong, nonatomic) NSMutableArray<Product*>* products;

@end

@implementation XIBUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self fakeData];
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
    [self.products addObject:p1];
    [self.products addObject:p2];
    [self.products addObject:p3];
    [self.products addObject:p4];
    [self.products addObject:p5];
    [self.products addObject:p6];
    
}

#pragma mark delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section==0)
        
        return self.products.count;
    else
        return self.products.count;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
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


-(UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    HeaderView* header = [[HeaderView alloc] initWithFrame:frame];
    
    header.headerImageView.image = [UIImage imageNamed:@"atomix_ecommerce"];
    
    header.contentView.backgroundColor = [UIColor purpleColor];
    
    return header;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 150;
    
}

-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 150;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    
    FooterView* footerView = [[FooterView alloc] initWithFrame:frame];
    
    footerView.contentView.backgroundColor = [UIColor orangeColor];
    
    return footerView;
    
}


@end

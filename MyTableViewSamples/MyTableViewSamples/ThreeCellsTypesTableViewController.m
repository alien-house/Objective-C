//
//  ThreeCellsTypesTableViewController.m
//  MyTableViewSamples
//
//  Created by Alireza Davoodi on 2017-03-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ThreeCellsTypesTableViewController.h"

@interface ThreeCellsTypesTableViewController ()

@property (strong, nonatomic) NSMutableArray<Product*>* products;

@end

@implementation ThreeCellsTypesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self fakeData];
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.products.count+2; //+2 because one for header row and one for footer row
}


-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
        return 150;
    }
    else if (indexPath.row==indexPath.row== self.products.count+1)
    {
        return 150;
    }
    else
    {
        return 100;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row==0) //header
    {
        HeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HeaderTableViewCellID" forIndexPath:indexPath];
        
        
        if(!cell)
        {
            cell = [[HeaderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HeaderTableViewCellID"];
        }
        
        cell.backgroundColor = [UIColor greenColor];
        
        cell.descLabel.text = @"Shopping Card";
        cell.imgImgaeView.image = [UIImage imageNamed:@"atomix_ecommerce"];
        
        return cell;
    }
    else if(indexPath.row== self.products.count+1) //footer
    {
        
        
        FooterTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FooterTableViewCellID" forIndexPath:indexPath];
        
        
        if(!cell)
        {
            cell = [[FooterTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FooterTableViewCellID"];
        }
        
        
        cell.backgroundColor = [UIColor yellowColor];
        return cell;
    }
    else
    {
        CustomUITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CustomUITableViewCellID"];
        
        if(!cell)
        {
            cell = [[CustomUITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CustomUITableViewCellID"];
            
        }
        
        Product* p = [self.products objectAtIndex:indexPath.row-1]; //because the first row is header row
        
        cell.cellImgView.image = [UIImage imageNamed:p.imageName];
        
        cell.cellDesc.text = p.desc;
        
        return cell;
    }
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

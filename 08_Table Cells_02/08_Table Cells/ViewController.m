//
//  ViewController.m
//  08_Table Cells
//
//  Created by hello on 16/5/3.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "ViewController.h"
#import "NameAndCorolorCellTableViewCell.h"

static NSString *CellTableIdentifier = @"CellTableIdentifier";

@interface ViewController ()

@property (copy, nonatomic) NSArray *computers;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.computers = @[@{@"Name" : @"Mac BookAir", @"Color" : @"silver"},
                       @{@"Name" : @"Mac BookPro", @"Color" : @"Silver"},
                       @{@"Name" : @"iMac", @"color" : @"Silver"},
                       @{@"Name" : @"Mac Mini", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Pro", @"Color" : @"Black"}];
    
//    [self.tableView registerClass:[NameAndCorolorCellTableViewCell class] forCellReuseIdentifier:CellTableIdentifier];
    
    UINib *nib = [UINib nibWithNibName:@"NameAndColorCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView  
     cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NameAndCorolorCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier forIndexPath:indexPath];
    NSDictionary *rowData = self.computers[indexPath.row];
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    return cell;
}
@end

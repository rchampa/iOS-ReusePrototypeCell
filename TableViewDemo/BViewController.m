//
//  BViewController.m
//  TableViewDemo
//
//  Created by Ricardo on 22/12/16.
//  Copyright © 2016 Kushal Panchal. All rights reserved.
//

#import "BViewController.h"
#import "CustomTableViewCell.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_table setDelegate:self];
    [_table setDataSource:self];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50 ;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *aCell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"] ;
    
    if (aCell == nil) {
        aCell = [[CustomTableViewCell alloc] init];
    }
    
    aCell.lblTitle.text = [NSString stringWithFormat:@"Cell : %ld", (long)indexPath.row] ;
    
    return aCell ;
    
}

@end

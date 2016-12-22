//
//  ViewController.m
//  TableViewDemo
//
//  Created by Kushal Panchal on 22/12/16.
//  Copyright © 2016 Kushal Panchal. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_table setDelegate:self];
    [_table setDataSource:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50 ;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *aCell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath] ;
    if (aCell == nil) {
        aCell = [[CustomTableViewCell alloc] init];
    }
    
    aCell.lblTitle.text = [NSString stringWithFormat:@"Cell : %ld", (long)indexPath.row] ;
    
    return aCell ;
    
}


@end

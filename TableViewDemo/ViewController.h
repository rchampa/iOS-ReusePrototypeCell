//
//  ViewController.h
//  TableViewDemo
//
//  Created by Kushal Panchal on 22/12/16.
//  Copyright © 2016 Kushal Panchal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;


@end


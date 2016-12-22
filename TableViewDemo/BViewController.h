//
//  BViewController.h
//  TableViewDemo
//
//  Created by Ricardo on 22/12/16.
//  Copyright © 2016 Kushal Panchal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

//
//  MasterViewController.h
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/23.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AtmUrlDataController;

@interface MasterViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *atmName;
@property (weak, nonatomic) IBOutlet UILabel *bankName;
@property (weak, nonatomic) IBOutlet UITableViewCell *imageCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *segmentCell;
@property (strong, nonatomic) AtmUrlDataController *atmUrlDataController;

@end

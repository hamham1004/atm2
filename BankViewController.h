//
//  BankViewController.h
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/23.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BankViewController : UITableViewController

@property (strong, nonatomic) NSString *selectedBankName;
@property (strong, nonatomic) NSArray *bankNameList;

@end

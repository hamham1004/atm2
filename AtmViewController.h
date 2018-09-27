//
//  AtmViewController.h
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/23.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AtmViewController : UITableViewController

@property (strong, nonatomic) NSString *selectedAtmName;
@property (strong, nonatomic) NSArray *atmNameList;

@end

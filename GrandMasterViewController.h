//
//  GrandMasterViewController.h
//  atm2
//
//  Created by yoshinobu & hamham on 2013/04/13.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface GrandMasterViewController : UIViewController <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet ADBannerView *bannerView;
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

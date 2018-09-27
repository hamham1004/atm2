//
//  GrandMasterViewController.m
//  atm2
//
//  Created by yoshinobu & hamham on 2013/04/13.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import "GrandMasterViewController.h"
#import "AtmViewController.h"
#import "BankViewController.h"
#import "MasterViewController.h"

@interface GrandMasterViewController () {
    BOOL didLoadAd;
}

@end

@implementation GrandMasterViewController

// ATM選択画面からの戻り
- (IBAction)atmUnwindSegue2:(UIStoryboardSegue *)segue
{
//    NSLog(@"GM - atmUnsindSegue2");
    AtmViewController *atmViewController = [segue sourceViewController];
    MasterViewController *mvc = self.childViewControllers[0];
    mvc.atmName.text = atmViewController.selectedAtmName;
}

// 銀行選択画面からの戻り
- (IBAction)bankUnwindSegue2:(UIStoryboardSegue *)segue
{
//    NSLog(@"GM - bankUnsindSegue2");
    BankViewController *bankViewController = [segue sourceViewController];
    MasterViewController *mvc = self.childViewControllers[0];
    mvc.bankName.text = bankViewController.selectedBankName;
}

// ウェブ画面からの戻り
- (IBAction)webViewUnwindSegue2:(UIStoryboardSegue *)segue {
//    NSLog(@"GM - webViewUnwindSegue2");
}

// 広告を取得した時
- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
//    NSLog(@"GM - bannerViewDidLoadAd");
    didLoadAd = YES;
    [self bannerPopup];
}

// 広告が取得できなかった時
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
//    NSLog(@"GM - bannerView:didFailToReceiveAdWithError");
    didLoadAd = NO;
    [self bannerPopup];
}

// ローテートした時
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
//    NSLog(@"GM - didRotate");
    [self bannerPopup];
}

// 子画面から戻ってきた時
- (void)viewDidAppear:(BOOL)animated {
//    NSLog(@"GM - viewDidAppear");
    [super viewDidAppear:animated];
    [self bannerPopup];
}

// 広告があればバナーを画面内に移動、なければ画面外に移動
- (void)bannerPopup {
    if (didLoadAd) {
        CGRect tmpFrame = self.bannerView.frame;
        tmpFrame.origin.y = self.view.frame.size.height - self.bannerView.frame.size.height;
        float duration;
        if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
            duration = 1.0;
        } else {
            duration = 0.5;
        }
        [UIView animateWithDuration:duration animations:^{
            self.bannerView.frame = tmpFrame;
        }];
//        NSLog(@"広告あり,%f,%f", self.bannerView.frame.origin.y, self.view.frame.size.height);
    } else {
        CGRect tmpFrame = self.bannerView.frame;
        tmpFrame.origin.y = self.view.frame.size.height;
        self.bannerView.frame = tmpFrame;
//        NSLog(@"広告なし,%f,%f", self.bannerView.frame.origin.y, self.view.frame.size.height);
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

//
//  MasterViewController.m
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/23.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import "MasterViewController.h"
#import "AtmViewController.h"
#import "BankViewController.h"
#import "AtmUrlDataController.h"
#import "WebViewController.h"

@interface MasterViewController () {
    NSArray *atmNameList;
    NSArray *bankNameList;
    UIImageView *myImageView;
    UISegmentedControl *segment;
    UIImage *feeImage;
}
@end

@implementation MasterViewController

// プログラムロード時に１回だけ呼ばれる
- (void)awakeFromNib
{
//    NSLog(@"M - awakeFromNib");
    [super awakeFromNib];
    self.atmUrlDataController = [[AtmUrlDataController alloc] init];
    atmNameList = [self.atmUrlDataController getAtmNameList];
    bankNameList = [self.atmUrlDataController getBankNameList];
}

// 画面ロード時に呼ばれる
- (void)viewDidLoad
{
//    NSLog(@"M - viewDidLoad");
    [super viewDidLoad];
    self.atmName.text = atmNameList[0];
    self.bankName.text = bankNameList[0];
    
    // 引き出し、預け入れのスイッチを画面に貼付ける
    NSArray *segmentContents = [NSArray arrayWithObjects:@"引き出し", @"預け入れ", nil];
    segment = [[UISegmentedControl alloc] initWithItems:segmentContents];
    segment.frame = CGRectMake(0, 0, 160, 35);
    segment.segmentedControlStyle = UISegmentedControlStylePlain;
    segment.selectedSegmentIndex = 0;
    [segment setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIFont boldSystemFontOfSize:14] forKey:UITextAttributeFont] forState:UIControlStateNormal];
    [segment addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
    self.segmentCell.accessoryView = segment;
}

// 子画面へ遷移する前
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    NSLog(@"M - prepareForSegue");
    if ([[segue identifier] isEqualToString:@"selectAtm"]) {
        AtmViewController *atmViewController = [segue destinationViewController];
        [atmViewController setSelectedAtmName:self.atmName.text];
        [atmViewController setAtmNameList:atmNameList];
    } else if ([[segue identifier] isEqualToString:@"selectBank"]) {
        BankViewController *bankViewDataController = [segue destinationViewController];
        [bankViewDataController setSelectedBankName:self.bankName.text];
        [bankViewDataController setBankNameList:bankNameList];
    } else if ([[segue identifier] isEqualToString:@"showUrl"]) {
        NSURL *url = [self.atmUrlDataController getUrlWithAtmName:self.atmName.text bankName:self.bankName.text];
        if (url != nil) {
            [[segue destinationViewController] setUrlToShow:url];
        }
    }
}

// 子画面から戻ってきた時
- (void)viewDidAppear:(BOOL)animated {
//    NSLog(@"M - viewDidAppear");
    [self showFeeImageWithDuration:0.5];
    [self.tableView reloadData];
}

// 引き出し／預け入れのスイッチを押した時の処理
- (void)segmentChanged:(id)sender {
    [self showFeeImageWithDuration:0.5];
    [self.tableView reloadData];
}

// ローテートした時
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
//    NSLog(@"M - didRotate");
    [self showFeeImageWithDuration:0.5];
}

// 手数料イメージを表示する
- (void)showFeeImageWithDuration:(float)duration {
    
    // 既にイメージが表示されていれば一旦削除
    if (myImageView != nil) {
        [myImageView removeFromSuperview];
    }
    
    // ATM名、銀行名、取引内容をキーにイメージファイル名を取得する
    int selectedIndex = segment.selectedSegmentIndex;
    NSString *feeImageName = [self.atmUrlDataController getImageNameWithAtmName:self.atmName.text bankName:self.bankName.text ioType:selectedIndex];
    feeImage = [UIImage imageNamed:feeImageName];

    // iPhoneの向きが縦か横かで縮小率を変える
    float scale = 1.0;
    float originX, originY;
    NSLog(@"%f", self.view.frame.size.width);
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        // iPhoneの時
        originX = 13.0;
        originY = 10.0;
        if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
            float viewWidth = self.view.frame.size.width;
            if ( viewWidth == 568.0) {          // iPhone5　横
                scale = 0.75;
            } else if (viewWidth == 480.0) {    // iPhone4　横
                scale = 0.62;
            }
        } else {
            scale = 0.4;                        // iPhone　縦
        }
    } else {
        if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
            scale = 1.0;                        // iPad　横
            originX = 150.0;
            originY = 15.0;
        } else {
            scale = 0.91;                       // iPad 縦
            originX = 50.0;
            originY = 15.0;
        }
    }
    
    // イメージを載せるビューを、大きさを指定して作成し、セルに貼付ける
    myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(originX, originY, feeImage.size.width*scale, feeImage.size.height*scale)];
    myImageView.image = feeImage;
    myImageView.alpha = 0.0;
    [self.imageCell addSubview:myImageView];
    [UIView animateWithDuration:duration
                     animations:^{
                         myImageView.alpha = 1.0;
                     }];
}

// 行の高さを返す、イメージ表示セルはイメージに合わせた大きさを返すようにする
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
//        NSLog(@"M - tableView:heightForRowAtIndexPath");
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
            if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
                float viewWidth = self.view.frame.size.width;
                if ( viewWidth == 568.0) {
                    return feeImage.size.height * 0.75 + 20;   // iPhone5　横
                } else if (viewWidth == 480.0) {
                    return feeImage.size.height * 0.62 + 20;   // iPhone4　横
                }
            } else {
                return feeImage.size.height * 0.4 + 20;        // iPhone　縦
            }
        } else {
            if (UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
                return feeImage.size.height * 1.0 + 30;        // iPad　横
            } else {
                return feeImage.size.height * 0.91 + 30;       // iPad　縦
            }
        }
    }
    return 45;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

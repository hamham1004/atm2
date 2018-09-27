//
//  AtmUrlDataController.m
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/24.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import "AtmUrlDataController.h"
#import "AtmUrl.h"

@implementation AtmUrlDataController

// 配列を初期化して1件データを入れる
- (void)initializeDefaultDataList {
    NSMutableArray *atmUrlList = [[NSMutableArray alloc] init];
    self.atmUrlList = atmUrlList;
    AtmUrl *atmUrl;
    NSURL *url;
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0008_005_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"1-1ab.PNG";
    atmUrl.imageNameO = @"1-1ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0009_002_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"1-2ab.PNG";
    atmUrl.imageNameO = @"1-2ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0001_001_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"1-3ab.PNG";
    atmUrl.imageNameO = @"1-3ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/others/PLOGO9900_001_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"1-4ab.PNG";
    atmUrl.imageNameO = @"1-4ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0010_002_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"1-7b.PNG";
    atmUrl.imageNameO = @"1-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/chigin/PLOGO0138_002_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"1-8ab.PNG";
    atmUrl.imageNameO = @"1-8ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0397_003_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"1-9ab.PNG";
    atmUrl.imageNameO = @"1-9ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0033_001_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"1-11ab.PNG";
    atmUrl.imageNameO = @"1-11ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0036_001_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"1-12ab.PNG";
    atmUrl.imageNameO = @"1-12ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0034_002_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"1-13b.PNG";
    atmUrl.imageNameO = @"1-13a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/atm/togin/PLOGO0038_001_01.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"セブン銀行ATM" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"1-14ab.PNG";
    atmUrl.imageNameO = @"1-14ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
// --------------------------------------------------------------------------------------------
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/sbi.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"2-14b.PNG";
    atmUrl.imageNameO = @"2-14a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/rakutenbank.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"2-12ab.PNG";
    atmUrl.imageNameO = @"2-12ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/yucho.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"1-4ab.PNG";
    atmUrl.imageNameO = @"1-4ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/mizuho.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"1-3ab.PNG";
    atmUrl.imageNameO = @"1-3ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/smbc.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"1-2ab.PNG";
    atmUrl.imageNameO = @"1-2ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/mufj.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"1-1ab.PNG";
    atmUrl.imageNameO = @"1-1ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/resona.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"1-7b.PNG";
    atmUrl.imageNameO = @"1-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.lawson-atm.com/bank_list/boy.shtml"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ローソンATM" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"1-8ab.PNG";
    atmUrl.imageNameO = @"1-8ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    // --------------------------------------------------------------------------------------------
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/sumishin_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"2-14b.PNG";
    atmUrl.imageNameO = @"2-14a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/rakuten_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"2-12ab.PNG";
    atmUrl.imageNameO = @"2-12ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/japannet_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"1-11ab.PNG";
    atmUrl.imageNameO = @"1-11ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/yucho.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"1-4ab.PNG";
    atmUrl.imageNameO = @"1-4ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/mizuho_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"1-3ab.PNG";
    atmUrl.imageNameO = @"1-3ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/mitsui_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"1-2ab.PNG";
    atmUrl.imageNameO = @"1-2ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/mufg.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"1-1ab.PNG";
    atmUrl.imageNameO = @"1-1ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/risona_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"1-7b.PNG";
    atmUrl.imageNameO = @"1-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.enetcom.co.jp/s_contents/service/list/images/yokohama_time.gif"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"コンビニATM E-net" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"1-8ab.PNG";
    atmUrl.imageNameO = @"1-8ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    // --------------------------------------------------------------------------------------------
    url = [NSURL URLWithString:@"http://www.sevenbank.co.jp/personal/account/tsukaeruatm.html#jpbankatm"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"4-13b.PNG";
    atmUrl.imageNameO = @"4-13a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"https://www.netbk.co.jp/wpl/NBGate/i900500CT/PD/atm_card"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"4-14b.PNG";
    atmUrl.imageNameO = @"4-14a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.rakuten-bank.co.jp/charge/atm.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"4-12b.PNG";
    atmUrl.imageNameO = @"4-12a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.japannetbank.co.jp/information/fee/atm.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"4-11b.PNG";
    atmUrl.imageNameO = @"4-11a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.shinseibank.com/atm/atm.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"4-9b.PNG";
    atmUrl.imageNameO = @"4-9a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jp-bank.japanpost.jp/kojin/tukau/atm/kj_tk_atm_index.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"4-4b.PNG";
    atmUrl.imageNameO = @"4-4a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.mizuhobank.co.jp/fee/atm_cd.html#yuchoatm"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"4-3b.PNG";
    atmUrl.imageNameO = @"4-3a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/japanpost.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"4-2b.PNG";
    atmUrl.imageNameO = @"4-2a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.bk.mufg.jp/tsukau/atm_con/yuucho/btm.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"4-1b.PNG";
    atmUrl.imageNameO = @"4-1a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.resona-gr.co.jp/resonabank/kojin/tenpo_atm/atm/index.html#04"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"4-7b.PNG";
    atmUrl.imageNameO = @"4-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.boy.co.jp/tenpo/service07.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"ゆうちょATM" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"4-8b.PNG";
    atmUrl.imageNameO = @"4-8a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
// --------------------------------------------------------------------------------------------
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ma/#anc-07"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"5-1a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ma/#anc-05"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"5-2a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ma/#anc-02"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"5-3a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ya/#anc-05"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"5-4a.PNG";
    atmUrl.imageNameO = @"5-4a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ra/#anc-02"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"5-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ya/#anc-06"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"5-8a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.aeonbank.co.jp/atm/card/bank/ra/#anc-01"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"5-12b.PNG";
    atmUrl.imageNameO = @"5-12a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"イオン銀行ATM" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    // --------------------------------------------------------------------------------------------
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank05"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-1a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank04"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-2a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank03"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-3a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank01"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-4a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank06"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank08"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-8a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.jreast.co.jp/card/guide/atm/bank_list.html#bank19"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"JR東日本VIEW ALTTE" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"6-14a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    // --------------------------------------------------------------------------------------------
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/honshiten/other.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"三菱東京UFJ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"7-1a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/abank.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"三井住友銀行" url:url];
    atmUrl.imageNameI = @"7-2a.PNG";
    atmUrl.imageNameO = @"7-2a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/honshiten/other.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"みずほ銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"7-3a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/honshiten/japanpost.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"ゆうちょ銀行" url:url];
    atmUrl.imageNameI = @"7-4ab.PNG";
    atmUrl.imageNameO = @"7-4ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/honshiten/other.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"りそな銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"7-7a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.boy.co.jp/tenpo/service06.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"横浜銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"7-8a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.shinseibank.com/atm/atm.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"新生銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"7-9a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/honshiten/jnb.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"ジャパンネット銀行" url:url];
    atmUrl.imageNameI = @"7-11ab.PNG";
    atmUrl.imageNameO = @"7-11ab.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"楽天銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@"http://www.smbc.co.jp/kojin/tenpo/atm/honshiten/other.html"];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"セブン銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"7-13a.PNG";
    [self addAtmUrlWithAtmUrl:atmUrl];
    url = [NSURL URLWithString:@""];
    atmUrl = [[AtmUrl alloc] initWithAtmName:@"三井住友銀行@BANK" bankName:@"住信SBIネット銀行" url:url];
    atmUrl.imageNameI = @"unavailable.png";
    atmUrl.imageNameO = @"unavailable.png";
    [self addAtmUrlWithAtmUrl:atmUrl];
}

// 配列のセッターを上書き、新しい配列がmutableであることを保証するため？
- (void)setAtmUrlList:(NSMutableArray *)atmUrlList {
    if (_atmUrlList != atmUrlList) {
        _atmUrlList = [atmUrlList mutableCopy];
    }
}

// 初期化メソッド、super initを呼んだ後、上で定義した初期化メソッドを呼ぶ
- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

-(NSURL *)getUrlWithAtmName:(NSString *)atmName bankName:(NSString *)bankName {
    for (int i=0; i<self.atmUrlList.count; i++) {
        AtmUrl *atmUrl = self.atmUrlList[i];
        if ([atmUrl.atmName isEqualToString:atmName] && [atmUrl.bankName isEqualToString:bankName]) {
            return atmUrl.url;
        }
    }
    return nil;
}

-(NSString *)getImageNameWithAtmName:(NSString *)atmName bankName:(NSString *)bankName ioType:(int)ioType {
    for (int i=0; i<self.atmUrlList.count; i++) {
        AtmUrl *atmUrl = self.atmUrlList[i];
        if ([atmUrl.atmName isEqualToString:atmName] && [atmUrl.bankName isEqualToString:bankName]) {
            if (ioType == 0) {
                return atmUrl.imageNameO;
            } else {
                return atmUrl.imageNameI;
            }
        }
    }
    return nil;
}

-(NSURL *)getImageNameWithAtmName:(NSString *)atmName bankName:(NSString *)bankName {
    for (int i=0; i<self.atmUrlList.count; i++) {
        AtmUrl *atmUrl = self.atmUrlList[i];
        if ([atmUrl.atmName isEqualToString:atmName] && [atmUrl.bankName isEqualToString:bankName]) {
            return atmUrl.url;
        }
    }
    return nil;
}

-(void)addAtmUrlWithAtmUrl:(AtmUrl *)atmUrl {
    [self.atmUrlList addObject:atmUrl];
}

-(NSArray *)getAtmNameList {
    NSMutableArray *tmpAtmNameList = [[NSMutableArray alloc] initWithCapacity:20];
    for (int i=0; i<self.atmUrlList.count; i++) {
        AtmUrl *tmpAtmUrl = self.atmUrlList[i];
        [tmpAtmNameList addObject:tmpAtmUrl.atmName];
    }
    return [[NSOrderedSet orderedSetWithArray:tmpAtmNameList] allObjects];
}

-(NSArray *)getBankNameList {
    NSMutableArray *tmpBankNameList = [[NSMutableArray alloc] initWithCapacity:20];
    for (int i=0; i<self.atmUrlList.count; i++) {
        AtmUrl *tmpAtmUrl = self.atmUrlList[i];
        [tmpBankNameList addObject:tmpAtmUrl.bankName];
    }
    return [[NSOrderedSet orderedSetWithArray:tmpBankNameList] allObjects];
}

@end

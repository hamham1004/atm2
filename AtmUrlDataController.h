//
//  AtmUrlDataController.h
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/24.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AtmUrl;

@interface AtmUrlDataController : NSObject

@property (copy, nonatomic) NSMutableArray *atmUrlList;

-(NSURL *)getUrlWithAtmName:(NSString *)atmName bankName:(NSString *)bankName;
-(NSString *)getImageNameWithAtmName:(NSString *)atmName bankName:(NSString *)bankName ioType:(int)ioType;
-(void)addAtmUrlWithAtmUrl:(AtmUrl *)atmUrl;
-(NSArray *)getAtmNameList;
-(NSArray *)getBankNameList;

@end

//
//  AtmUrl.h
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/24.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AtmUrl : NSObject

@property (copy, nonatomic) NSString *atmName;
@property (copy, nonatomic) NSString *bankName;
@property (strong, nonatomic) NSURL *url;
@property (copy, nonatomic) NSString *imageNameI;
@property (copy, nonatomic) NSString *imageNameO;

-(id)initWithAtmName:(NSString *)atmName bankName:(NSString *)bankName url:(NSURL *)url;

@end

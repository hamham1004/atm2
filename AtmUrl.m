//
//  AtmUrl.m
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/24.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import "AtmUrl.h"

@implementation AtmUrl

- (id)initWithAtmName:(NSString *)atmName bankName:(NSString *)bankName url:(NSURL *)url
{
    self = [super init];
    if (self) {
        _atmName = atmName;
        _bankName = bankName;
        _url = url;
        return self;
    }
    return nil;
}

@end

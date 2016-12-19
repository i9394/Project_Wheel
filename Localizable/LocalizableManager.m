//
//  LocalizableManager.m
//  Otoappsv
//
//  Created by sen on 2016/12/19.
//  Copyright © 2016年 IT. All rights reserved.
//

#import "LocalizableManager.h"

@implementation LocalizableManager

+(void)initLanguage{
    if (![[NSUserDefaults standardUserDefaults]objectForKey:AppLanguage]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:AppLanguage];
    }
}

+(void)changeLanguage{
    NSString *currentLanguage = [[NSUserDefaults standardUserDefaults]objectForKey:AppLanguage];
    if ([currentLanguage isEqualToString: @"en"]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:AppLanguage];
    }else
    {
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:AppLanguage];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(void)changeToChinese{
    NSString *currentLanguage = [[NSUserDefaults standardUserDefaults]objectForKey:AppLanguage];
    if ([currentLanguage isEqualToString: @"en"]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:AppLanguage];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

+(void)changeToEnglish{
    NSString *currentLanguage = [[NSUserDefaults standardUserDefaults]objectForKey:AppLanguage];
    if ([currentLanguage isEqualToString: @"zh-Hans"]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:AppLanguage];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}


@end

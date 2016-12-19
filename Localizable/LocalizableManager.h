//
//  LocalizableManager.h
//  Otoappsv
//
//  Created by sen on 2016/12/19.
//  Copyright © 2016年 IT. All rights reserved.
//

#import <Foundation/Foundation.h>

#define AppLanguage @"appLanguage"
#define CustomLocalizedString(key, comment) \
[[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:@"" table:nil]


@interface LocalizableManager : NSObject

+(void)initLanguage;

+(void)changeLanguage;

+(void)changeToChinese;

+(void)changeToEnglish;

@end

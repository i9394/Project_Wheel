//
//  UIViewController+PrintCurrentViewController.m
//  GameH
//
//  Created by sen on 16/10/25.
//  Copyright © 2016年 Ios. All rights reserved.
//

#import "UIViewController+PrintCurrentViewController.h"

@implementation UIViewController (PrintCurrentViewController)

+ (void)load {
    
//#ifdef DEBUG
    
    //原本的viewWillApper方法
    
    Method viewWillAppear = class_getInstanceMethod(self, @selector(viewWillAppear:));
    
    //需要替换成能够输入日志的viewWillAppear
    
    Method logViewWillAppear = class_getInstanceMethod(self, @selector(logViewWillAppear:));
    
    //两方法进行交换
    
    method_exchangeImplementations(viewWillAppear, logViewWillAppear);
    
//#endif
    
}

- (void)logViewWillAppear:(BOOL)animated {
    
    NSString *className = NSStringFromClass([self class]);
    
    //    //在这里，你可以进行过滤操作，指定哪些viewController需要打印，哪些不需要打印
    
        if ([className hasPrefix:@"UINavigation"] == NO && [className hasPrefix:@"TabBar"] == NO) {
    
            NSLog(@"%@ will appear",className);
    
        }
    
//    NSLog(@"%@ will appear",className);
    
    //下面方法的调用，其实是调用viewWillAppear
    
    [self logViewWillAppear:animated];
    
}

//文／乡水情缘（简书作者）
//原文链接：http://www.jianshu.com/p/34c9a1f458be
//著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。

@end

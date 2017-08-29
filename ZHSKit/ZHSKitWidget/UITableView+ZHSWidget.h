//
//  UITableView+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZHSTableViewBuffer;
@interface UITableView (ZHSWidget)
- (void)makeConfigure:(void (^)(ZHSTableViewBuffer *helper))tb;
@end

//
//  UITableView+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UITableView+ZHSWidget.h"
#import "ZHSTableViewBuffer.h"
@implementation UITableView (ZHSWidget)
- (void)makeConfigure:(void (^)(ZHSTableViewBuffer *))tb {
    ZHSTableViewBuffer *helper = [ZHSTableViewBuffer new];
    !tb ? : tb(helper);
}
@end

//
//  ZHSTableViewBuffer.h
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ZHSTableViewBuffer : NSObject<UITableViewDelegate,UITableViewDataSource>
- (ZHSTableViewBuffer *(^)(UITableView *, Class))zhs_registerClass;
- (ZHSTableViewBuffer *(^)(NSInteger))section;
- (ZHSTableViewBuffer *(^)(NSInteger))row;
@end

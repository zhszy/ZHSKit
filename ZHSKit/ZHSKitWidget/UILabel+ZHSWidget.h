//
//  UILabel+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ZHSWidget)
/** 设置Label的文字 */
- (UILabel *(^)(NSString *)) zhs_text;
/** 设置Label的文字颜色 */
- (UILabel *(^)(UIColor *)) zhs_textColor;
/** 设置Label文字 size */
- (UILabel *(^)(CGFloat)) zhs_fontSize;
/** 设置Label的居左、中、右 */
- (UILabel *(^)(NSTextAlignment)) zhs_textAlignment;
/** 设置Label的换行模式 */
- (UILabel *(^)(NSLineBreakMode)) zhs_lineBreakMode;
/** 设置Label的换行行数 */
- (UILabel *(^)(NSInteger)) zhs_numberOfSection;
/** 设置Label是否可用 */
- (UILabel *(^)(BOOL)) zhs_enabled;

@end

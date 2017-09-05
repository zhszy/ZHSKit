//
//  UIView+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZHSWidget)

/** 初始化UIView */
+ (UIView *)zhs_init;
/** 设置UIView Frame x, y, w, h */
- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat)) zhs_frame;
/** 设置UIView背景颜色 */
- (UIView *(^)(UIColor *)) zhs_backgroundColor;

/** 设置UIView透明度 */
- (UIView *(^)(CGFloat)) zhs_alpha;
/** 设置UIView是否隐藏 */
- (UIView *(^)(BOOL)) zhs_hidden;
/** 设置UIView圆角 */
- (UIView *(^)(CGFloat)) zhs_cornerRadius;
/** 设置UIView边框 borderWidth, 颜色 */
- (UIView *(^)(CGFloat, UIColor *)) zhs_border;
/** 设置UIView Tag值 */
- (UIView *(^)(NSInteger)) zhs_tag;
/** 设置UIView显示的模式 */
- (UIView *(^)(UIViewContentMode)) zhs_contentMode;
/** 设置UIView UserInterface是否可用 */
- (UIView *(^)(BOOL)) zhs_userInterface;
/** 添加UIView到某个View */
- (UIView *(^)(UIView *)) zhs_setup;
/** 切割UIView */
- (UIView *(^)(BOOL)) zhs_clipsToBounds;
@end

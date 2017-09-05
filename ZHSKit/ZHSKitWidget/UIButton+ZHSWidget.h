//
//  UIButton+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ZHSPressedBlock)(UIButton *button);

@interface UIButton (ZHSWidget)

@property (nonatomic, copy) ZHSPressedBlock zhs_pressedBlock;

/** 设置Button标题文字 文字 状态:mk_Normal */
- (UIButton *(^)(NSString *, UIControlState)) zhs_title;
/** 设置Button标题文字颜色 颜色 状态：mk_Normal */
- (UIButton *(^)(UIColor *, UIControlState)) zhs_titleColor;
/** 设置Button图片 图片 状态:mk_Normal 是否是背景图片 */
- (UIButton *(^)(UIImage *, UIControlState)) zhs_image;
/** 设置Button标题文字style size */
- (UIButton *(^)(CGFloat)) zhs_fontSize;
/** 设置Button选中状态 YES/NO */
- (UIButton *(^)(BOOL)) zhs_selected;
/** 设置Button是否可用 */
- (UIButton *(^)(BOOL)) zhs_enabled;

/** 点击Button事件 mk_TouchUpInside..., block */
- (UIButton *(^)(UIControlEvents, ZHSPressedBlock))zhs_actionBlock;

@end

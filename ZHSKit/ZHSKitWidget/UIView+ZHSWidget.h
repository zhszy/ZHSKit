//
//  UIView+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZHSWidget)
-(UIView * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height)) zhs_frame;
-(UIView * (^)(UIColor *backgroundColor)) zhs_backgroundColor;
@end

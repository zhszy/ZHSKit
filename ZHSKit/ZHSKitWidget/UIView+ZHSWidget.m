//
//  UIView+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UIView+ZHSWidget.h"

@implementation UIView (ZHSWidget)
-(UIView * (^)(CGFloat x,CGFloat y,CGFloat width,CGFloat height)) zhs_frame{

    return ^(CGFloat x,CGFloat y,CGFloat width,CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}
-(UIView * (^)(UIColor *backgroundColor)) zhs_backgroundColor{
    return  ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
}
@end

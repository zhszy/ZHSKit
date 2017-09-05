//
//  UIView+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UIView+ZHSWidget.h"

@implementation UIView (ZHSWidget)
+ (UIView *)zhs_init{
    return [self new];
}
- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat)) zhs_frame {
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h) {
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}
- (UIView *(^)(UIColor *)) zhs_backgroundColor {
    return ^(UIColor * color) {
        if ([color isKindOfClass:[UIColor class]]) {
            self.backgroundColor = (UIColor *)color;
        }
        return self;
    };
}
- (UIView *(^)(CGFloat)) zhs_alpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}
- (UIView *(^)(BOOL)) zhs_hidden {
    return ^(BOOL hidden) {
        self.hidden = hidden;
        return self;
    };
}
- (UIView *(^)(CGFloat)) zhs_cornerRadius {
    return ^(CGFloat radius) {
        self.layer.cornerRadius = radius;
        self.layer.masksToBounds = YES;
        return self;
    };
}
- (UIView *(^)(CGFloat, UIColor *)) zhs_border {
    return ^(CGFloat width, UIColor * color) {
        self.layer.borderWidth = width;
        if ([color isKindOfClass:[UIColor class]]) {
            self.layer.borderColor = ((UIColor *)color).CGColor;
        }
        return self;
    };
}
- (UIView *(^)(NSInteger)) zhs_tag {
    return ^(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}
- (UIView *(^)(UIViewContentMode)) zhs_contentMode {
    return ^(UIViewContentMode mode) {
        self.contentMode = mode;
        return self;
    };
}
- (UIView *(^)(BOOL)) zhs_userInterface {
    return ^(BOOL flag) {
        self.userInteractionEnabled = flag;
        return self;
    };
}
- (UIView *(^)(UIView *)) zhs_setup {
    return ^(UIView * view) {
        [view addSubview:self];
        return self;
    };
}
- (UIView *(^)(BOOL)) zhs_clipsToBounds {
    return ^(BOOL flag) {
        self.clipsToBounds = flag;
        return self;
    };
}
@end

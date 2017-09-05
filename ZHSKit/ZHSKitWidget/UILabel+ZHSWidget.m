//
//  UILabel+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UILabel+ZHSWidget.h"

@implementation UILabel (ZHSWidget)

- (UILabel *(^)(NSString *)) zhs_text{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *)) zhs_textColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(CGFloat)) zhs_fontSize{
    return ^(CGFloat size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment)) zhs_textAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakMode)) zhs_lineBreakMode{
    return ^(NSLineBreakMode mode){
        self.lineBreakMode = mode;
        return self;
    };
}

- (UILabel *(^)(NSInteger)) zhs_numberOfSection{
    return ^(NSInteger lines){
        self.numberOfLines = lines;
        return self;
    };
}

- (UILabel *(^)(BOOL)) zhs_enabled{
    return ^(BOOL enable){
        self.enabled = enable;
        return self;
    };
}
@end

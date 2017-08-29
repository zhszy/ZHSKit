//
//  UILabel+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UILabel+ZHSWidget.h"

@implementation UILabel (ZHSWidget)
-(UILabel * (^)(NSString *)) zhs_title{
    return ^(NSString *title){
        self.text = title;
        return self;
    };
}
-(UILabel * (^)(UIColor *)) zhs_textColor{
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}
-(UILabel * (^)(UIFont *)) zhs_font{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
-(UILabel * (^)(NSTextAlignment )) zhs_textAlignment{
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}
@end

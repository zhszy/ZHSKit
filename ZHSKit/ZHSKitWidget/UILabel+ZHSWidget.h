//
//  UILabel+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ZHSWidget)
-(UILabel * (^)(NSString *)) zhs_title;
-(UILabel * (^)(UIColor *)) zhs_textColor;
-(UILabel * (^)(UIFont *)) zhs_font;
-(UILabel * (^)(NSTextAlignment )) zhs_textAlignment;
@end

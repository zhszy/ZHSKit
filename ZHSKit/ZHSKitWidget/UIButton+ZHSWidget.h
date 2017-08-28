//
//  UIButton+ZHSWidget.h
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZHSWidget)

-(UIButton * (^)(NSString *title)) zhs_buttonTitle;
-(UIButton * (^)(UIColor *titleColor)) zhs_titleColor;
-(UIButton * (^)(UIImage *image,UIControlState status)) zhs_buttonImage;

@end

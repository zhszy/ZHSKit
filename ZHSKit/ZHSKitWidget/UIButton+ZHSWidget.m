//
//  UIButton+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UIButton+ZHSWidget.h"

@implementation UIButton (ZHSWidget)

-(UIButton * (^)(NSString *title)) zhs_buttonTitle{
    
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIColor *titleColor)) zhs_titleColor{
    return ^(UIColor *titleColor){
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton * (^)(UIImage *image,UIControlState status)) zhs_buttonImage{
    
    return ^(UIImage *image,UIControlState status){
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };

}
@end

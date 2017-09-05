//
//  UIButton+ZHSWidget.m
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "UIButton+ZHSWidget.h"
#import <objc/runtime.h>
// Button点击事件
static char *zhs_buttonPressedKey = "zhs_buttonPressedKey";

@implementation UIButton (ZHSWidget)

- (void)setZhs_pressedBlock:(ZHSPressedBlock)zhs_pressedBlock{
    objc_setAssociatedObject(self,
                             zhs_buttonPressedKey,
                             zhs_pressedBlock,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);

}
-(ZHSPressedBlock)zhs_pressedBlock{
    return objc_getAssociatedObject(self, zhs_buttonPressedKey);
}

- (UIButton *(^)(NSString *, UIControlState)) zhs_title {
    return ^(NSString * title, UIControlState state) {
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton * (^)(UIColor *, UIControlState)) zhs_titleColor {
    return ^(UIColor * color, UIControlState state) {
        [self setTitleColor:(UIColor *)color forState:state];
        return self;
    };
}
- (UIButton *(^)(UIImage *, UIControlState)) zhs_image {
    return ^(UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}
- (UIButton *(^)(CGFloat )) zhs_fontSize {
    return ^(CGFloat size) {
        self.titleLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}
- (UIButton *(^)(BOOL)) zhs_selected {
    return ^(BOOL selected) {
        self.selected = selected;
        return self;
    };
}
- (UIButton *(^)(BOOL))zhs_enabled {
    return ^(BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}
- (UIButton *(^)(UIControlEvents, ZHSPressedBlock))zhs_actionBlock{
    return ^(UIControlEvents events, ZHSPressedBlock buttonPressedBlock) {
        if (!buttonPressedBlock) {
            return self;
        }
        self.zhs_pressedBlock = buttonPressedBlock;
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:events];
        return self;
    };
}
- (void) buttonPressed:(id)sender {
    if (self.zhs_pressedBlock) {
        self.zhs_pressedBlock(sender);
    }
}

@end

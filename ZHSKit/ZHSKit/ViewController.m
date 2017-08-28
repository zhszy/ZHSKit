//
//  ViewController.m
//  ZHSKit
//
//  Created by zhs on 2017/8/28.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "ViewController.h"
#import "ZHSWidget.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.zhs_frame(0,100,300,300).zhs_backgroundColor([UIColor blackColor]);
    btn.zhs_titleColor([UIColor redColor]).zhs_buttonTitle(@"hello");
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ZHSTableViewBuffer.m
//  ZHSKit
//
//  Created by zhs on 2017/8/29.
//  Copyright © 2017年 zhs. All rights reserved.
//

#import "ZHSTableViewBuffer.h"

@interface ZHSTableViewBuffer()
@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) Class cell_class;
@property (nonatomic, assign) NSInteger sections;
@property (nonatomic, assign) NSInteger rows;
@end

@implementation ZHSTableViewBuffer
- (ZHSTableViewBuffer *(^)(UITableView *, Class))zhs_registerClass {
    return ^(UITableView *tableView, Class cls){
        tableView.dataSource = self;
        self.tableView = tableView;
        self.cell_class = cls;
        NSCAssert([cls isSubclassOfClass:[UITableViewCell class]], @"%@必须是UITableViewCell或者它的子类", _cell_class);
        [tableView registerClass:_cell_class forCellReuseIdentifier:NSStringFromClass(_cell_class)] ;
        return self;
    };
}
- (ZHSTableViewBuffer *(^)(NSInteger))section {
    return ^(NSInteger section){
        NSCAssert(section <= self.sections-1, @"section越界");
        self.sections = section;
        return self;
    };
}

- (ZHSTableViewBuffer *(^)(NSInteger))row {
    return ^(NSInteger rows){
        self.rows = rows;
        return self;
    };
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self.cell_class) forIndexPath:indexPath];
    return cell;
}

- (void)dealloc {
    NSLog(@"==%@", NSStringFromSelector(_cmd));
}
@end

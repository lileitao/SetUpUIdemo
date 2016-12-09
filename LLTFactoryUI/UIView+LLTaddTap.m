//
//  UIView+LLTaddTap.m
//  GreaseRecycleForTransport
//
//  Created by 李磊涛 on 2016/10/26.
//  Copyright © 2016年 ruiyou-macmini. All rights reserved.
//

#import "UIView+LLTaddTap.h"

@implementation UIView (LLTaddTap)

#pragma mark - 增加点击事件
- (void)addClickSelectorOrignWithTarget:(id)target selectorName:(SEL)selector{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:selector];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tap];
}

#pragma mark - 添加一个点击放大的空view
- (void)addtempViewWithtarget:(id)target andSelector:(SEL)selectorName superView:(UIView *)superView {
    UIView *view = [[UIView alloc] init];
    [superView addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(-20);
        make.right.equalTo(self).offset(20);
        make.bottom.equalTo(self).offset(20);
        make.top.equalTo(self).offset(-20);
    }];
    [view addClickSelectorOrignWithTarget:target selectorName:selectorName];
}


@end

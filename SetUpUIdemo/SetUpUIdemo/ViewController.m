//
//  ViewController.m
//  SetUpUIdemo
//
//  Created by 李磊涛 on 2016/12/9.
//  Copyright © 2016年 ruiyou. All rights reserved.
//

#import "ViewController.h"
#import "LLTFactoryUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 就这样就愉快的添加了一个view 岂不是很简单么？
    UIView *view = [LLTFactoryUI createViewWithColor:[UIColor lightGrayColor] cornerRadius:0 superView:self.view andBlock:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(100);
        make.right.equalTo(self.view).offset(-100);
        make.top.equalTo(self.view).offset(100);
        make.bottom.equalTo(self.view).offset(-100);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

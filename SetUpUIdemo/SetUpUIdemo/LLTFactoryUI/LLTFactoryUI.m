//
//  LLTFactoryUI.m
//  GreaseRecycleForTransport
//
//  Created by 李磊涛 on 2016/10/25.
//  Copyright © 2016年 ruiyou-macmini. All rights reserved.
//

#import "LLTFactoryUI.h"


#define FONT_SCALE(font) font

@implementation LLTFactoryUI

/**
 *  带有masonry 的imageview
 */
+ (UIImageView *)createImageViewWithView:(UIView *)backGroundView cornerRadius:(NSInteger)cornerNum imageName:(NSString *)imageName andMasoryBlock:(callBack)callback{
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:imageName];
    [backGroundView addSubview:imageView];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = cornerNum;
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    return imageView;
}


/**
 
 带有masonry的label封装

 */
+ (UILabel *)createLabelWithtextFont:(NSInteger)font textColor:(UIColor *)textColor backGroundView:(UIView *)backGroundView text:(NSString *)text withBlock:(callBack)callback{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = [UIFont systemFontOfSize:FONT_SCALE(font)];
    label.textColor = textColor;
    [backGroundView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}


/**
   uiview的封装
 */
+ (UIView *)createViewWithColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius superView:(UIView *)superView andBlock:(callBack)callback {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = backGroundColor;
    view.clipsToBounds = YES;
    view.layer.cornerRadius = cornerRadius;
    [superView addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callback) {
            callback(make);
        }
    }];
    return view;
}

/**
 *  textField 带有masory的封装
 */
+(UITextField *)createTextFieldWithtextFont:(NSInteger)textFont  withSuperView:(UIView *)backGroundView text:(NSString *)text placeHolder:(NSString *)placeHolder withBlock:(callBack)callBack{
    UITextField *textField = [[UITextField alloc] init];
    textField.text = text;
    textField.font = [UIFont systemFontOfSize:FONT_SCALE(textFont)];
    textField.placeholder = placeHolder;
    [backGroundView addSubview:textField];
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    
    return textField;
}



/**
 UIbutton masonry

 */
+ (UIButton *)createButtonWithtitleFont:(NSInteger)titleFont titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UIView *)backGroundView title:(NSString *)title target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [backGroundView addSubview:button];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:FONT_SCALE(titleFont)];
    button.backgroundColor = backGroundColor;
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.clipsToBounds = YES;
    button.layer.cornerRadius = cornerRadius;
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        if (callBack) {
            callBack(make);
        }
    }];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}




@end

//
//  LLTFactoryUI.h
//  GreaseRecycleForTransport
//
//  Created by 李磊涛 on 2016/10/25.
//  Copyright © 2016年 ruiyou-macmini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Masonry.h>
typedef void(^callBack)(MASConstraintMaker *make);

@interface LLTFactoryUI : NSObject

+ (UIImageView *)createImageViewWithView:(UIView *)backGroundView cornerRadius:(NSInteger)cornerNum imageName:(NSString *)imageName andMasoryBlock:(callBack)callback;

+ (UILabel *)createLabelWithtextFont:(NSInteger)font textColor:(UIColor *)textColor backGroundView:(UIView *)backGroundView text:(NSString *)text withBlock:(callBack)callback;

+ (UIView *)createViewWithColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius superView:(UIView *)superView andBlock:(callBack)callback;

+(UITextField *)createTextFieldWithtextFont:(NSInteger)textFont  withSuperView:(UIView *)backGroundView text:(NSString *)text placeHolder:(NSString *)placeHolder withBlock:(callBack)callBack;

+ (UIButton *)createButtonWithtitleFont:(NSInteger)titleFont titleColor:(UIColor *)titleColor backGroundColor:(UIColor *)backGroundColor cornerRadius:(NSInteger)cornerRadius backGroundView:(UIView *)backGroundView title:(NSString *)title target:(id)target Selector:(SEL)selector withBlock:(callBack)callBack;


@end

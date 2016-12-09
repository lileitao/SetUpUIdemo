//
//  UIView+LLTaddTap.h
//  GreaseRecycleForTransport
//
//  Created by 李磊涛 on 2016/10/26.
//  Copyright © 2016年 ruiyou-macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>

@interface UIView (LLTaddTap)
- (void)addtempViewWithtarget:(id)target andSelector:(SEL)selectorName superView:(UIView *)superView;
- (void)addClickSelectorOrignWithTarget:(id)target selectorName:(SEL)selector;
@end

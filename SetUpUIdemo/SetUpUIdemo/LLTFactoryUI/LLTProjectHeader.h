//
//  LLTProjectHeader.h
//  SetUpUIdemo
//
//  Created by 李磊涛 on 2016/12/9.
//  Copyright © 2016年 ruiyou. All rights reserved.
//

#ifndef LLTProjectHeader_h
#define LLTProjectHeader_h

#import <Masonry.h>
#import "UIView+LLTaddTap.h"
#import "LLTFactoryUI.h"


//---------------- 适配屏幕所有的标准 --------------------
/*
 适配规则总结起来就一句话：文字流式，控件弹性，图片等比缩放
 */

// 文字流式  一般的来说在 iphone 4 5 6的手机上的字体是一样大小，在6P上的字体是4 5 6上的1.5倍
#define LLT_FONT_SCALE(font) font

// 控件弹性 控件高度不变 宽度方向上等比缩放
#define LLT_SCALE_H(h) h/2.0
#define LLT_SCALE_W(w) ((w/750.0) * SCREEN_WIDTH)

// 图片的宽高比不变，根据图片的宽度（占屏幕宽度的百分比）进行等比缩放
#define LLT_SIZE_FIXRA_WITH(width,height) CGSizeMake(LLT_SCALE_W(width),LLT_SCALE_W(width)*(height/width))
#define LLT_SIZE_IMAGE_HEIGHT ((CGSize)LLT_SIZE_FIXRA_WITH(100,200)).height  // 高度

#endif /* LLTProjectHeader_h */

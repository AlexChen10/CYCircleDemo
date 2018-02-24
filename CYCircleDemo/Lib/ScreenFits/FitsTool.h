//
//  FitsTool.h
//  SubjectDB
//
//  Created by tusm on 16/1/31.
//  Copyright © 2016年 王志滨. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface FitsTool : NSObject

//+ (CGFloat)x:(CGFloat)ip6x;
//
//+ (CGFloat)y:(CGFloat)ip6y;
//
//+ (CGFloat)width:(CGFloat)ip6W;
//
///** 锁定宽高比,防止圆形图片被拉伸  宽高一样,没必要有 circleHeight了, 用height的地方也能用这*/
//+ (CGFloat)circleWidth:(CGFloat)ip6W;

//+ (CGFloat)height:(CGFloat)ip6H;


CGFloat dwidth(CGFloat ip6W);

//CGFloat dheight(CGFloat ip6H);
//
//CGFloat dheightFor4S(CGFloat ip6H);          //03.16  扩充方法,适配ly方案 以后高度方向就用这个了
//
//CGFloat circleWidthHeight(CGFloat circleWidthHeight);


//NSString * kGetHomePageUrlFunc(); //获得首页的URL 给Swift用的(Swift 不支持宏定义)


//Swift不支持宏定义,写成函数转接一下
BOOL isIphone4();
BOOL isIphone5();
BOOL isIphone6();
BOOL isIphone6P();
BOOL isIphone7();
BOOL isIphone7P();
BOOL isIphone8();
BOOL isIphone8P();

@end

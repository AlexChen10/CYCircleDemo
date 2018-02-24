//
//  UIImage+MJ.h
//
//
//  Created by apple on 14-5-5.
//  Copyright (c) 2014年 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MJ)
/**
 *  加载图片
 *
 *  @param name 图片名
 */
+ (UIImage *)imageWithName:(NSString *)name;

/**
 *  返回一张自由拉伸的图片
 *
 *  @param name 图片名
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)resizedImageWithName:(NSString *)name;
/**
 *  返回一张自由拉伸的图片
 *
 *  @param name 图片名
 *  @param left 距离左边哪个位置进行拉伸
 *  @param top  距离顶部哪个位置进行拉伸
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;
/**
 *  通过视频的URL，获得视频缩略图
 *
 *  @param url 视频URL
 *
 *  @return首帧缩略图
 */
+ (UIImage *)imageWithMediaURL:(NSURL *)url;
/**
 *  画一个圆图
 *
 *  @param name        图片名
 *  @param borderWidth 周围圆框的宽
 *  @param borderColor 圆框的颜色
 *
 *  @return 返回一张新的图片
 */
+ (instancetype)circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
/**
 *  画一个圆图
 *
 *  @param image       当前图片
 *  @param borderWidth 周围圆框的宽
 *  @param borderColor 圆框的颜色
 *
 *  @return 返回一张新的图片
 */
+ (instancetype)circleImageWithImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
/**
 *为图片添加模糊效果
 *
 *  @param image       当前图片
 *  @param blur        模糊效果
 *  @return 返回一张新的图片
 */
+ (UIImage *)blurryImage:(UIImage *)image withBlurLevel:(CGFloat)blur;
/**
 *为图片添加蒙版效果
 *
 */
/*1.白色,参数:
 透明度 0~1,  0为白,   1为深灰色
 半径:默认30,推荐值 3   半径值越大越模糊 ,值越小越清楚
 色彩饱和度(浓度)因子:  0是黑白灰, 9是浓彩色, 1是原色  默认1.8
 “彩度”，英文是称Saturation，即饱和度。将无彩色的黑白灰定为0，最鲜艳定为9s，这样大致分成十阶段，让数值和人的感官直觉一致。
 */
- (UIImage *)imgWithLightAlpha:(CGFloat)alpha radius:(CGFloat)radius colorSaturationFactor:(CGFloat)colorSaturationFactor;
- (UIImage *)imgWithBlur;
+ (UIImage *)imageWithColor:(UIColor *)color;
@end

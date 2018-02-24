//
//  UIBarButtonItem+MJ.m
//
//
//  Created by apple on 14-5-6.
//  Copyright (c) 2014年 . All rights reserved.
//

#import "UIBarButtonItem+WX.h"
#import "UIImage+WX.h"

@implementation UIBarButtonItem (WX)
/**
 *  快速创建一个带有图片和功能的导航栏按钮
 *
 *  @param icon     按钮的图片
 *  @param highIcon 按钮的高亮图片
 *
 *  @return 创建好的按钮
 */
+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon title:(NSString*)title
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithName:icon] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithName:highIcon] forState:UIControlStateHighlighted];
    if (icon||highIcon) {
        button.frame = (CGRect){CGPointZero, button.currentBackgroundImage.size};
    } else {
        button.frame = (CGRect){CGPointZero, [button sizeThatFits:CGSizeZero]};
    }
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

/**
 *  快速创建一个带有图片,标题和功能的导航栏按钮
 *
 *  @param icon     按钮的图片
 *  @param highIcon 按钮的高亮图片
 *  @param target   按钮单击时的响应者
 *  @param action   按钮单击时的响应动作
 *
 *  @return 创建好的按钮
 */
+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon title:(NSString*)title target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithName:icon] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithName:highIcon] forState:UIControlStateHighlighted];
    if (icon||highIcon) {
        button.frame = (CGRect){CGPointZero, button.currentBackgroundImage.size};
    } else {
        button.frame = (CGRect){CGPointZero, [button sizeThatFits:CGSizeZero]};
    }
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}


@end

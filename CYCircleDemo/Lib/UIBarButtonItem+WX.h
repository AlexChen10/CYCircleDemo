//
//  UIBarButtonItem+MJ.h
//
//
//  Created by apple on 14-5-6.
//  Copyright (c) 2014年 . All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "WXBadgeButton.h"

@interface UIBarButtonItem (WX)

/**
 *  提醒数字
 */
//@property (nonatomic, weak) WXBadgeButton *badgeButton;
/**
 *  快速创建一个带有图片和功能的导航栏按钮
 *
 *  @param icon     按钮的图片
 *  @param highIcon 按钮的高亮图片
 *
 *  @return 创建好的按钮
 */

+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon title:(NSString*)title;
/**
 *  快速创建一个带有图片和功能的导航栏按钮
 *
 *  @param icon     按钮的图片
 *  @param highIcon 按钮的高亮图片
 *  @param target   按钮单击时的响应者
 *  @param action   按钮单击时的响应动作
 *
 *  @return 创建好的按钮
 */
+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon title:(NSString*)title target:(id)target action:(SEL)action;
@end

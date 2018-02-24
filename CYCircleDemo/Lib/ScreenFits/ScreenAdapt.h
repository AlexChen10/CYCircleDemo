//
//  ScreenAdapt.h
//  XiaomuCoach
//
//  Created by 陈玉 on 15/12/21.
//  Copyright © 2015年 liuyao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ScreenAdapt : NSObject
+(UIFont *)getUIFont:(float)size;

+(UIFont *)getUIBoldFont:(float)size;

+(CGRect)getRectWithX:(CGFloat)x Y:(CGFloat)y width:(CGFloat)width andHeight:(CGFloat)height;

UIFont * getUIFont(float);

CGRect getRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height);

@end

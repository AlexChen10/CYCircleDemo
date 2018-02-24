//
//  ScreenAdapt.m
//  XiaomuCoach
//
//  Created by 陈玉 on 15/12/21.
//  Copyright © 2015年 liuyao. All rights reserved.
//

#import "ScreenAdapt.h"
@implementation ScreenAdapt
+(UIFont *)getUIFont:(float)size{
    if (IPHONE4) {
        return [UIFont systemFontOfSize:size*0.85];
    }
    
    if (IPHONE5) {
        
        return [UIFont systemFontOfSize:size * 0.85];
    }
    if (IPHONE6) {
        
        return [UIFont systemFontOfSize:size];
    }
    
    if (IPHONE6P) {
        
        return [UIFont systemFontOfSize:size * 1.1];
    }
    if (IPHONE7) {
        
        return [UIFont systemFontOfSize:size];
    }
    
    if (IPHONE7P) {
        
        return [UIFont systemFontOfSize:size * 1.1];
    }
    if (IPHONE8) {
        
        return [UIFont systemFontOfSize:size];
    }
    
    if (IPHONE8P) {
        
        return [UIFont systemFontOfSize:size * 1.1];
    }

    return nil;
}

+(UIFont *)getUIBoldFont:(float)size{
    if (IPHONE4) {
        return [UIFont boldSystemFontOfSize:size*0.85];
    }
    
    if (IPHONE5) {
        
        return [UIFont boldSystemFontOfSize:size * 0.85];
    }
    if (IPHONE6) {
        
        return [UIFont boldSystemFontOfSize:size];
    }
    
    if (IPHONE6P) {
        
        return [UIFont boldSystemFontOfSize:size * 1.1];
    }
    if (IPHONE7) {
        
        return [UIFont boldSystemFontOfSize:size];
    }
    
    if (IPHONE7P) {
        
        return [UIFont boldSystemFontOfSize:size * 1.1];
    }
    if (IPHONE8) {
        
        return [UIFont boldSystemFontOfSize:size];
    }
    
    if (IPHONE8P) {
        
        return [UIFont boldSystemFontOfSize:size * 1.1];
    }
    
    return nil;
}

+(CGRect)getRectWithX:(CGFloat)x Y:(CGFloat)y width:(CGFloat)width andHeight:(CGFloat)height{
    
    CGRect rect = CGRectZero;
    if (IPHONE4) {
        CGFloat X = (x+width/2.0)*(320.0/375.0) - width*(320.0/375.0)/2.0;
        CGFloat Y = (y)*(568.0/667.0);;
        rect = CGRectMake(X, Y, width*(320.0/375.0), height*(568.0/667.0));
    }
    if (IPHONE5) {
        CGFloat X = (x+width/2.0)*(320.0/375.0)-width*(320.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(568.0/667.0)-height*(568.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(320.0/375.0), height*(568.0/667.0));
       
    }
    if (IPHONE6){//6
        //中心点－宽度／2
        //        CGFloat X = (x+width/2.0)*(375/320.0)-width*(375/320.0)/2.0;
        //        CGFloat Y = (y+height/2.0)*(667/568.0)-height*(667/568.0)/2.0;
        //        rect = CGRectMake(X, Y, width*(375/320.0), height*(667/568.0));
        
        rect = CGRectMake(x, y, width, height);
        
    }
    if (IPHONE6P){//6P
        CGFloat X = (x+width/2.0)*(414.0/375.0)-width*(414.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(736.0/667.0)-height*(736.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(414.0/375.0), height*(736.0/667.0));
    }
    if (IPHONE7){//6
        rect = CGRectMake(x, y, width, height);
        
    }
    if (IPHONE7P){//6P
        CGFloat X = (x+width/2.0)*(414.0/375.0)-width*(414.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(736.0/667.0)-height*(736.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(414.0/375.0), height*(736.0/667.0));
    }
    if (IPHONE8){//6
        rect = CGRectMake(x, y, width, height);
        
    }if (IPHONE8P){//6P
        CGFloat X = (x+width/2.0)*(414.0/375.0)-width*(414.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(736.0/667.0)-height*(736.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(414.0/375.0), height*(736.0/667.0));
    }

    
    return rect;
}

UIFont * getUIFont(float size){
    if (IPHONE4) {
        return [UIFont systemFontOfSize:size*0.85];
    }
    
    if (IPHONE5) {
        
        return [UIFont systemFontOfSize:size * 0.85];
    }
    if (IPHONE6) {
        
        return [UIFont systemFontOfSize:size];
    }
    
    if (IPHONE6P) {
        
        return [UIFont systemFontOfSize:size * 1.1];
    }
    if (IPHONE7) {
        
        return [UIFont systemFontOfSize:size];
    }
    
    if (IPHONE7P) {
        
        return [UIFont systemFontOfSize:size * 1.1];
    }
    if (IPHONE8) {
        
        return [UIFont systemFontOfSize:size];
    }
    
    if (IPHONE8P) {
        
        return [UIFont systemFontOfSize:size * 1.1];
    }

    return nil;
}

CGRect getRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
    
    CGRect rect = CGRectZero;
    if (IPHONE4) {
        CGFloat X = (x+width/2.0)*(320.0/375.0) - width*(320.0/375.0)/2.0;
        CGFloat Y = (y)*(568.0/667.0);;
        rect = CGRectMake(X, Y, width*(320.0/375.0), height*(568.0/667.0));
    }
    if (IPHONE5) {
        CGFloat X = (x+width/2.0)*(320.0/375.0)-width*(320.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(568.0/667.0)-height*(568.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(320.0/375.0), height*(568.0/667.0));
        
    }if (IPHONE6){//6
        //中心点－宽度／2
        //        CGFloat X = (x+width/2.0)*(375/320.0)-width*(375/320.0)/2.0;
        //        CGFloat Y = (y+height/2.0)*(667/568.0)-height*(667/568.0)/2.0;
        //        rect = CGRectMake(X, Y, width*(375/320.0), height*(667/568.0));
        
        rect = CGRectMake(x, y, width, height);
        
    }if (IPHONE6P){//6P
        CGFloat X = (x+width/2.0)*(414.0/375.0)-width*(414.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(736.0/667.0)-height*(736.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(414.0/375.0), height*(736.0/667.0));
    }
    if (IPHONE7){//6
        //中心点－宽度／2
        
        rect = CGRectMake(x, y, width, height);
        
    }
    if (IPHONE7P){//6P
        CGFloat X = (x+width/2.0)*(414.0/375.0)-width*(414.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(736.0/667.0)-height*(736.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(414.0/375.0), height*(736.0/667.0));
    }
    if (IPHONE8){//6
        
        rect = CGRectMake(x, y, width, height);
        
    }
    if (IPHONE8P){//6P
        CGFloat X = (x+width/2.0)*(414.0/375.0)-width*(414.0/375.0)/2.0;
        CGFloat Y = (y+height/2.0)*(736.0/667.0)-height*(736.0/667.0)/2.0;
        rect = CGRectMake(X, Y, width*(414.0/375.0), height*(736.0/667.0));
    }

    return rect;
}


@end

//
//  D.m
//  SubjectDB
//
//  Created by tusm on 16/1/31.
//  Copyright © 2016年 王志滨. All rights reserved.
//

#import "FitsTool.h"

@implementation FitsTool

//NSString * kGetHomePageUrlFunc() {
//    return [NSString stringWithFormat:@"%@%@%@",BasicUrl,Version,GetAppMainPageInfo];
//}

//+ (CGFloat)x:(CGFloat)ip6x{
//    if (IPHONE4) {
//        return ip6x *IP4WRate;
//    }else if(IPHONE5){
//        return ip6x *IP5WRate;
//    }else if(IPHONE6P){
//        return ip6x *IP6PWRate;
//    }else{
//        return ip6x;
//    }
//}
//
//+ (CGFloat)y:(CGFloat)ip6y
//{
//    if (IPHONE4) {
//        return ip6y *IP4HRate;
//    }else if(IPHONE5){
//        return ip6y *IP5HRate;
//    }else if(IPHONE6P){
//        return ip6y *IP6PHRate;
//    }else{
//        return ip6y;
//    }
//}
//
//+ (CGFloat)width:(CGFloat)ip6W
//{
//    if (IPHONE4) {
//        return ip6W *IP4WRate;
//    }else if(IPHONE5){
//        return ip6W *IP5WRate;
//    }else if(IPHONE6P){
//        return ip6W *IP6PWRate;
//    }else{
//        return ip6W;
//    }
//}
CGFloat dwidth(CGFloat ip6W)
{
    if (IPHONE4) {
        return ip6W *IP4WRate;
    }else if(IPHONE5){
        return ip6W *IP5WRate;
    }else if(IPHONE6P){
        return ip6W *IP6PWRate;
    }else if(IPHONE7P){
        return ip6W *IP6PWRate;
    }else if(IPHONE8P){
        return ip6W *IP6PWRate;
    }else{
        return ip6W;
    }
}
//+ (CGFloat)circleWidth:(CGFloat)ip6W
//{
//    if (IPHONE4) {
//        return ip6W *IP4HRate;
//    }else if(IPHONE5){
//        return ip6W *IP5WRate;
//    }else if(IPHONE6P){
//        return ip6W *IP6PWRate;
//    }else{
//        return ip6W;
//    }
//}
//
//CGFloat circleWidthHeight(CGFloat ip6W)
//{
//    if (IPHONE4) {
//        return ip6W *IP4HRate;
//    }else if(IPHONE5){
//        return ip6W *IP5WRate;
//    }else if(IPHONE6P){
//        return ip6W *IP6PWRate;
//    }else{
//        return ip6W;
//    }
//}
//
//
//
//
//+ (CGFloat)height:(CGFloat)ip6H
//{
//    if (IPHONE4) {
//        return ip6H *IP4HRate;
//    }else if(IPHONE5){
//        return ip6H *IP5HRate;
//    }else if(IPHONE6P){
//        return ip6H *IP6PHRate;
//    }else{
//        return ip6H;
//    }
//}
//
//CGFloat dheightFor4S(CGFloat ip6H)
//{
//    if (IPHONE4) {
//        return ip6H *IP5HRate;
//    }else if(IPHONE5){
//        return ip6H *IP5HRate;
//    }else if(IPHONE6P){
//        return ip6H *IP6PHRate;
//    }else{
//        return ip6H;
//    }
//}
//
//CGFloat dheight(CGFloat ip6H)
//{
//    if (IPHONE4) {
//        return ip6H *IP4HRate;
//    }else if(IPHONE5){
//        return ip6H *IP5HRate;
//    }else if(IPHONE6P){
//        return ip6H *IP6PHRate;
//    }else{
//        return ip6H;
//    }
//}

#pragma mark - _____________判断屏幕大小_____________

BOOL isIphone4() {
    return IPHONE4; //这里又调用了 那个判断的宏 (在 FDDMacros.h 里的)
}

BOOL isIphone5() {
    return IPHONE5;
}

BOOL isIphone6() {
    return IPHONE6;
}

BOOL isIphone6P() {
    return IPHONE6P;
}

BOOL isIphone7() {
    return IPHONE7;
}

BOOL isIphone7P() {
    return IPHONE7P;
}

BOOL isIphone8() {
    return IPHONE8;
}

BOOL isIphone8P() {
    return IPHONE8P;
}



@end

//
//  CYAnswerView.h
//  YYEKT
//
//  Created by 陈玉 on 17/10/27.
//  Copyright © 2017年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CYAnswerModel.h"

@interface CYAnswerView : UIView

@property (nonatomic, retain) UIImageView *newsImageView;

@property (nonatomic, retain) UIImageView *headImageView;

@property (nonatomic, retain) UILabel *nameLabel;

@property (nonatomic, retain) UIButton *identityBtn;

@property (nonatomic, retain) UILabel *timeLabel;

@property (nonatomic, retain) UILabel *contentLabel;

@property (nonatomic, retain) UILabel *answerLabel;

@property (nonatomic, retain) UILabel *answerContentLabel;

@property (nonatomic, retain) UIButton *soundBtn;

@property (nonatomic, retain) UIImageView *soundImageView;

@property (nonatomic, retain) CYAnswerModel *answerModel;

@property (nonatomic, retain) UILabel *lineLabel;

- (CGFloat)getAnswerViewHeight;

@end

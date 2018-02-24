//
//  CYAnswerView.m
//  YYEKT
//
//  Created by 陈玉 on 17/10/27.
//  Copyright © 2017年 lin. All rights reserved.
//

#import "CYAnswerView.h"

@implementation CYAnswerView

- (instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = FDDKConvertColorBy0xHexRGB(0xfafafa);
        
        self.headImageView = ({
            
            UIImageView *imageView = [UIImageView new];
            imageView;
        });
        [self addSubview:self.headImageView];
        self.headImageView.sd_layout
        .leftSpaceToView(self,dwidth(15))
        .topSpaceToView(self,dwidth(5))
        .widthIs(dwidth(22))
        .heightIs(dwidth(22));
        
        self.nameLabel = ({
            
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:10];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x191919);
            label;
        });
        [self addSubview:self.nameLabel];
        
        
        self.identityBtn = ({
            
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.titleLabel.font = [ScreenAdapt getUIFont:10];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [btn setBackgroundImage:[UIImage imageNamed:@"circle_identity_background"] forState:UIControlStateNormal];
            btn;
        });
        [self addSubview:self.identityBtn];
        
        self.timeLabel = ({
            
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:10];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x515151);
            label.textAlignment = NSTextAlignmentRight;
            label;
        });
        [self addSubview:self.timeLabel];
        
        self.timeLabel.sd_layout
        .rightSpaceToView(self,dwidth(17))
        .topSpaceToView(self,dwidth(5))
        .widthIs(dwidth(100))
        .heightIs(dwidth(12));
        
        self.contentLabel = ({
            
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:10];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x515151);
            label.numberOfLines = 0;
            label.lineBreakMode = UILineBreakModeWordWrap;
            
            label;
        });
        [self addSubview:self.contentLabel];
        
        self.lineLabel = ({
            
            UILabel *label = [UILabel new];
            label.backgroundColor = FDDKConvertColorBy0xHexRGB(0xeaeaea);
            label;
        });
        [self addSubview:self.lineLabel];
    
    }
    return self;
}

- (void)setAnswerModel:(CYAnswerModel *)answerModel {
    
    _answerModel = answerModel;
    self.headImageView.backgroundColor = [UIColor lightGrayColor];
    self.nameLabel.text = @"HappyHappy";
    
    CGSize size = [self.nameLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[ScreenAdapt getUIFont:10],NSFontAttributeName, nil]];
    
    self.nameLabel.sd_layout
    .leftSpaceToView(self.headImageView,dwidth(8))
    .topEqualToView(self.headImageView)
    .widthIs(size.width)
    .heightIs(dwidth(12));
    
    self.contentLabel.text = answerModel.contentStr;
    
    CGSize contentSize = [self.contentLabel sizeThatFits:CGSizeMake(MLScreenWidth - dwidth(149+23), MAXFLOAT)];
    
    self.contentLabel.sd_layout
    .leftSpaceToView(self,dwidth(43))
    .topSpaceToView(self.nameLabel,dwidth(11))
    .rightSpaceToView(self,dwidth(13))
    .heightIs(contentSize.height);
    
    self.lineLabel.sd_layout
    .leftSpaceToView(self,dwidth(10))
    .topSpaceToView(self.contentLabel,dwidth(3))
    .rightSpaceToView(self,dwidth(11))
    .heightIs(dwidth(1));
    
}

- (CGFloat)getAnswerViewHeight {
    
    return dwidth(31)+self.contentLabel.height+dwidth(4);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

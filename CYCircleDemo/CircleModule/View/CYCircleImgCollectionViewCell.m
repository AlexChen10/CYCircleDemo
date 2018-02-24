//
//  CYCircleImgCollectionViewCell.m
//  YYEKT
//
//  Created by 陈玉 on 17/10/24.
//  Copyright © 2017年 lin. All rights reserved.
//

#import "CYCircleImgCollectionViewCell.h"
#import "UIView+SDAutoLayout.h"

@implementation CYCircleImgCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        _picImageView = [UIImageView new];
        _picImageView.backgroundColor = [ UIColor whiteColor];
        _picImageView.contentMode = UIViewContentModeScaleAspectFill;
        _picImageView.clipsToBounds = YES;
        [self.contentView addSubview:_picImageView];
        
        _picImageView.sd_layout
        .leftSpaceToView(self.contentView, 0)
        .widthIs(self.contentView.frame.size.width )
        .topSpaceToView(self.contentView, 0)
        .heightIs(self.contentView.frame.size.height);
        
    }
    return self;
}


@end

//
//  CYCircleCell.h
//  YYEKT
//
//  Created by 陈玉 on 17/10/24.
//  Copyright © 2017年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CYCircleModel.h"

@interface CYCircleCell : UITableViewCell

@property (nonatomic,retain) UIImageView *headImageView;

@property (nonatomic,retain) UILabel *nameLabel;

@property (nonatomic,retain) UIButton *identityBtn;

@property (nonatomic,retain) UILabel *timeLabel;

@property (nonatomic,retain) UILabel *contentLabel;

@property (nonatomic,retain) UIButton *hideOrShowBtn;

@property (nonatomic,retain) UIView *collectBgView;

@property (nonatomic,retain) UICollectionView *collectionView;

@property (nonatomic,retain) UICollectionViewFlowLayout *collectionViewFlowLayout;

@property (nonatomic,retain) UIButton *commentBtn;

@property (nonatomic,retain) UILabel *commentLabel;

@property (nonatomic,retain) UIButton *prizeBtn;

@property (nonatomic,retain) UILabel *prizeLabel;

@property (nonatomic,retain) UIImageView *answerImageView;

@property (nonatomic,retain) UIView *answerLikeBgView;

@property (nonatomic, retain) UIImageView *likeImageView;

@property (nonatomic, retain) UILabel *likeViewBottomLineLabel;

@property (nonatomic,retain) UICollectionView *answerLikeCollectionView;

@property (nonatomic,retain) UICollectionViewFlowLayout *answerLikeCollectionViewFlowLayout;

@property (nonatomic,strong) CYCircleModel *circleModel;

@property (nonatomic, strong) NSArray *array;

//@property (nonatomic,strong) NSArray *contentLikeArray;

+ (instancetype)cellWithTableView:(UITableView *)tableView andIndexPath:(NSIndexPath *)indexPath;

@end

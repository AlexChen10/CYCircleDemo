//
//  CYCircleCell.m
//  YYEKT
//
//  Created by 陈玉 on 17/10/24.
//  Copyright © 2017年 lin. All rights reserved.
//

#import "CYCircleCell.h"
#import "CYCircleImgCollectionViewCell.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import "CYAnswerView.h"

@interface CYCircleCell ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, assign) CGFloat itemWidth;

@property (nonatomic, strong) NSArray *imageArray;

@property (nonatomic, strong) NSMutableArray *likeImageArray;

@property (nonatomic, strong) NSMutableArray *answerContentArray;


@end

@implementation CYCircleCell

- (NSArray *)imageArray {
    
    if (_imageArray == nil) {
        _imageArray = [NSArray new];
    }
    return _imageArray;
}

- (NSMutableArray *)likeImageArray {

    if (_likeImageArray == nil) {
        
        _likeImageArray = [NSMutableArray new];
    }
    return _likeImageArray;
}



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        self.headImageView = ({
        
            UIImageView *imageView = [UIImageView new];
            imageView;
        });
        [self.contentView addSubview:self.headImageView];
        self.headImageView.sd_layout
        .leftSpaceToView(self.contentView,dwidth(15))
        .topSpaceToView(self.contentView,dwidth(19))
        .widthIs(dwidth(55))
        .heightIs(dwidth(55));
        
        self.nameLabel = ({
        
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:14];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x191919);
            label;
        });
        [self.contentView addSubview:self.nameLabel];
        
        
        self.contentLabel = ({
        
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:14];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x696969);
            label.numberOfLines = 0;
            label.lineBreakMode = UILineBreakModeWordWrap;
            
            label;
        });
        [self.contentView addSubview:self.contentLabel];
        
        
        self.hideOrShowBtn = ({
        
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn;
        });
        [self.contentView addSubview:self.hideOrShowBtn];
        
        
        self.collectBgView = ({
        
            UIView *view = [UIView new];
            view.backgroundColor = [UIColor whiteColor];
            view.contentMode =UIViewContentModeScaleAspectFit;
            view;
        });
        [self.contentView addSubview:self.collectBgView];
        
        NSArray *imageNameArray = @[@"背景1",@"背景1",@"背景1",@"背景1",@"背景1",@"背景1",@"背景1"];
        NSArray *likeImageNameArray = @[@"prize",@"prize",@"prize"];
        self.imageArray = [NSMutableArray arrayWithArray:imageNameArray];
        self.likeImageArray = [NSMutableArray arrayWithArray:likeImageNameArray];
        self.commentBtn = ({
        
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn;
        });
        [self.contentView addSubview:self.commentBtn];
        
        self.commentLabel = ({
        
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:11];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x696969);
            label;
        });
        [self.contentView addSubview:self.commentLabel];
        
        self.prizeBtn = ({
            
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            [btn addTarget:self action:@selector(onPrizeBtnClick) forControlEvents:UIControlEventTouchUpInside];
            btn;
        });
        [self.contentView addSubview:self.prizeBtn];
        
        self.prizeLabel = ({
            
            UILabel *label = [UILabel new];
            label.font = [ScreenAdapt getUIFont:11];
            label.textColor = FDDKConvertColorBy0xHexRGB(0x696969);
            label;
        });
        [self.contentView addSubview:self.prizeLabel];
        
        self.answerImageView = ({
        
            UIImageView *imageView = [UIImageView new];
            imageView.image = [UIImage imageNamed:@"circle_answer_background"];
            imageView;
        });
        [self.contentView addSubview:self.answerImageView];
        
        self.answerLikeBgView = ({
            
            UIView *view = [UIView new];
            view.backgroundColor = FDDKConvertColorBy0xHexRGB(0xfafafa);
            view.contentMode =UIViewContentModeScaleAspectFit;
            view;
        });
        [self.answerImageView addSubview:self.answerLikeBgView];
        
        self.likeImageView = ({
        
            UIImageView *imageView = [UIImageView new];
            imageView.image = [UIImage imageNamed:@"circle_prize_select"];
            imageView;
        });
        [self.answerImageView addSubview:self.likeImageView];
        self.likeImageView.sd_layout
        .leftSpaceToView(self.answerImageView,dwidth(10))
        .topSpaceToView(self.answerImageView,dwidth(19))
        .widthIs(15)
        .heightIs(12);
        
        self.likeViewBottomLineLabel = ({
        
            UILabel *label = [UILabel new];
            label.backgroundColor = FDDKConvertColorBy0xHexRGB(0xeaeaea);
            label;
        });
        [self.answerLikeBgView addSubview:self.likeViewBottomLineLabel];
        
    }
    return self;
}

- (void)onPrizeBtnClick {

    //点赞
    [self.likeImageArray addObject:@"prize"];
    
    CGFloat numberOfItemsInARow = 8;
    CGFloat minmumInteritemSpacing = 9;
    CGFloat leftPadding = 0;
    CGFloat rightPadding = 11+27;
    self.itemWidth = (277 - leftPadding -rightPadding - (numberOfItemsInARow -1) * minmumInteritemSpacing) /numberOfItemsInARow ;
    
    CGFloat collectBgViewHeight;
    
    
    if (self.likeImageArray.count%8==0) {
        
        collectBgViewHeight = self.itemWidth * (self.likeImageArray.count/8) + minmumInteritemSpacing*(self.likeImageArray.count/8-1) + 10 ;
    }else {
        
        collectBgViewHeight = self.itemWidth * (self.likeImageArray.count/8+1) + minmumInteritemSpacing*(self.likeImageArray.count/8) + 10 ;
        
    }
    
    self.answerLikeBgView.sd_layout
    .leftSpaceToView(self.answerImageView,dwidth(33))
    .topSpaceToView(self.answerImageView,0)
    .heightIs(dwidth(collectBgViewHeight+dwidth(11)))
    .rightSpaceToView(self.answerImageView,dwidth(11));
    
    self.likeViewBottomLineLabel.sd_layout
    .leftSpaceToView(self.answerLikeBgView,dwidth(-22))
    .bottomSpaceToView(self.answerLikeBgView,dwidth(1))
    .widthIs(dwidth(277-22))
    .heightIs(dwidth(1));
    
    CGFloat collectionViewHeight = collectBgViewHeight - minmumInteritemSpacing;
    self.answerLikeCollectionView.frame = CGRectMake(dwidth(leftPadding),dwidth(11), dwidth(277) - dwidth(leftPadding+rightPadding) ,collectionViewHeight);

    [self.answerLikeCollectionView reloadData];
    
    for (NSInteger i = 0; i < self.answerImageView.subviews.count; i++) {
        
        if ([self.answerImageView.subviews[i] isKindOfClass:[CYAnswerView class]]) {
            
            [self.answerImageView.subviews[i] removeFromSuperview];
        }
    }

    [self setUpAnswerViewList];
    
}

- (void)setArray:(NSArray *)array {

    _array = array;
    
    [self setUpAnswerLikeCollectionView];
    
    [self setUpAnswerViewList];
    
}

- (void)setUpAnswerLikeCollectionView {
    
    CGFloat numberOfItemsInARow = 8;
    CGFloat minmumInteritemSpacing = 9;
    CGFloat leftPadding = 0;
    CGFloat rightPadding = 11+27;
    self.itemWidth = (277 - leftPadding -rightPadding - (numberOfItemsInARow -1) * minmumInteritemSpacing) /numberOfItemsInARow ;
    
    CGFloat collectBgViewHeight;
    
    if (self.likeImageArray.count%8==0) {
        
        collectBgViewHeight = self.itemWidth * (self.likeImageArray.count/8) + minmumInteritemSpacing*(self.likeImageArray.count/8-1) + 10 ;
    }else {
    
        collectBgViewHeight = self.itemWidth * (self.likeImageArray.count/8+1) + minmumInteritemSpacing*(self.likeImageArray.count/8) + 10 ;
    
    }
    
    self.answerLikeBgView.sd_layout
    .leftSpaceToView(self.answerImageView,dwidth(33))
    .topSpaceToView(self.answerImageView,0)
    .heightIs(dwidth(collectBgViewHeight+dwidth(11)))
    .rightSpaceToView(self.answerImageView,dwidth(11));
    
    self.likeViewBottomLineLabel.sd_layout
    .leftSpaceToView(self.answerLikeBgView,dwidth(-22))
    .bottomSpaceToView(self.answerLikeBgView,dwidth(1))
    .widthIs(dwidth(277-22))
    .heightIs(dwidth(1));
    
    CGFloat collectionViewHeight = collectBgViewHeight - minmumInteritemSpacing;
    
    if (_answerLikeCollectionView == nil) {
        self.answerLikeCollectionViewFlowLayout = [[UICollectionViewFlowLayout alloc]init];
        self.answerLikeCollectionViewFlowLayout.itemSize =CGSizeMake(self.itemWidth, self.itemWidth);
        self.answerLikeCollectionViewFlowLayout.minimumInteritemSpacing = minmumInteritemSpacing;
        self.answerLikeCollectionViewFlowLayout.minimumLineSpacing = minmumInteritemSpacing;
        self.answerLikeCollectionViewFlowLayout.sectionInset =UIEdgeInsetsMake(0, 0, 0, 0);
        self.answerLikeCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(dwidth(leftPadding), dwidth(11), dwidth(277) - dwidth(leftPadding+rightPadding) ,collectionViewHeight - dwidth(5)) collectionViewLayout:self.answerLikeCollectionViewFlowLayout];
        self.answerLikeCollectionView.backgroundColor = FDDKConvertColorBy0xHexRGB(0xfafafa);
        self.answerLikeCollectionView.delegate = self;
        self.answerLikeCollectionView.dataSource = self;
        self.answerLikeCollectionView.scrollEnabled = NO;
        self.answerLikeCollectionView.showsHorizontalScrollIndicator = NO;
        [self.answerLikeCollectionView registerClass:[CYCircleImgCollectionViewCell class] forCellWithReuseIdentifier:@"CYCircleImgCollectionViewCellId1"];
        [self.answerLikeBgView addSubview:self.answerLikeCollectionView];
    }
    
    self.answerLikeCollectionView.frame = CGRectMake(dwidth(leftPadding),dwidth(11), dwidth(277) - dwidth(leftPadding+rightPadding) ,collectionViewHeight);
}


- (void)setUpAnswerViewList {

    CGFloat sumHeight = 0.00;
    
    for (NSInteger i = 0; i < self.array.count; i ++) {
        
        CYAnswerView *cyAnswerView = ({
            
            CYAnswerView *view = [CYAnswerView new];
            view.answerModel = self.array[i];
            view;
        });
        
        
        if (i == 0) {
            cyAnswerView.newsImageView.hidden = NO;
        }else {
            
            cyAnswerView.newsImageView.hidden = YES;
        }
        
        
        CGFloat height = [cyAnswerView getAnswerViewHeight];
        
        [self.answerImageView addSubview:cyAnswerView];
        cyAnswerView.sd_layout
        .leftSpaceToView(self.answerImageView,0)
        .topSpaceToView(self.answerLikeCollectionView,sumHeight+dwidth(20))
        .rightSpaceToView(self.answerImageView,0)
        .heightIs(height);
        
        sumHeight+=height;
        
    }
    
    NSLog(@"sumHeight====%f",sumHeight+dwidth(20));
    
    self.answerImageView.sd_layout
    .leftSpaceToView(self.contentView,dwidth(86))
    .topSpaceToView(self.commentBtn,dwidth(5))
    .widthIs(dwidth(375-86-12))
    .heightIs(sumHeight+self.answerLikeCollectionView.frame.size.height+dwidth(20));

}

- (void)setCircleModel:(CYCircleModel *)circleModel {

    _circleModel = circleModel;
    
    self.headImageView.image = [UIImage imageNamed:@"头像"];
    self.nameLabel.text = @"HappyHappyHappy";
    
    CGSize size = [self.nameLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[ScreenAdapt getUIFont:14],NSFontAttributeName, nil]];
    
    self.nameLabel.sd_layout
    .leftSpaceToView(self.headImageView,dwidth(15))
    .topEqualToView(self.headImageView)
    .widthIs(size.width)
    .heightIs(dwidth(17));
    
    self.contentLabel.text = @"就禁止住市十四师少四十市十四十四市十四十四市十四事实上市十四十四市十四十四是少四十事实上是少四十是生死是少四十是少四十事实上是死是活";
    CGSize contentSize = [self.contentLabel sizeThatFits:CGSizeMake(MLScreenWidth - dwidth(85+13), MAXFLOAT)];
    self.contentLabel.sd_layout
    .leftSpaceToView(self.contentView,dwidth(85))
    .topSpaceToView(self.nameLabel,dwidth(15))
    .rightSpaceToView(self.contentView,dwidth(13))
    .heightIs(contentSize.height);
    
    [self layoutCollectionView];
    
    [self.commentBtn setBackgroundImage:[UIImage imageNamed:@"circle_comment"] forState:UIControlStateNormal];
    
    self.commentBtn.sd_layout
    .leftSpaceToView(self.contentView,dwidth(189))
    .topSpaceToView(self.collectBgView,dwidth(16))
    .widthIs(dwidth(18))
    .heightIs(dwidth(15));
    
    self.commentLabel.text = @"评论888";
    self.commentLabel.sd_layout
    .leftSpaceToView(self.commentBtn,dwidth(3))
    .topEqualToView(self.commentBtn)
    .widthIs(dwidth(85))
    .heightIs(dwidth(16));
    
    [self.prizeBtn setBackgroundImage:[UIImage imageNamed:@"circle_prize"] forState:UIControlStateNormal];

    self.prizeBtn.sd_layout
    .rightSpaceToView(self.contentView,dwidth(70))
    .topSpaceToView(self.collectBgView,dwidth(16))
    .widthIs(dwidth(18))
    .heightIs(dwidth(15));

    self.prizeLabel.text = @"点赞999";
    self.prizeLabel.sd_layout
    .leftSpaceToView(self.prizeBtn,dwidth(3))
    .topEqualToView(self.prizeBtn)
    .widthIs(dwidth(70))
    .heightIs(dwidth(16));
    
    [self setupAutoHeightWithBottomView:self.answerImageView bottomMargin:dwidth(11)];
    
}

- (void)layoutCollectionView {

    CGFloat numberOfItemsInARow = 3;
    CGFloat minmumInteritemSpacing = 8;
    CGFloat leftPadding = 86;
    CGFloat rightPadding = 39;
    self.itemWidth = (375 - leftPadding -rightPadding - (numberOfItemsInARow -1) * minmumInteritemSpacing) /numberOfItemsInARow ;
    
    CGFloat collectBgViewHeight;
    if (self.imageArray.count == 0) {
        collectBgViewHeight = 10;
    }else if (self.imageArray.count <= 3 && self.imageArray.count > 0) {
        collectBgViewHeight = self.itemWidth + 10;
    }else if (self.imageArray.count > 3 && self.imageArray.count <= 6) {
        collectBgViewHeight = self.itemWidth * 2 + minmumInteritemSpacing + 10 ;
    }else {
        collectBgViewHeight = self.itemWidth * 3 + 2*minmumInteritemSpacing + 10;
    }
    
    self.collectBgView.sd_layout
    .leftSpaceToView(self.contentView,0)
    .topSpaceToView(self.contentLabel,0)
    .heightIs(dwidth(collectBgViewHeight))
    .rightSpaceToView(self.contentView,0);
    
    CGFloat collectionViewHeight = collectBgViewHeight - minmumInteritemSpacing;
    
    if (_collectionView == nil) {
        self.collectionViewFlowLayout = [[UICollectionViewFlowLayout alloc]init];
        self.collectionViewFlowLayout.itemSize =CGSizeMake(self.itemWidth, self.itemWidth);
        self.collectionViewFlowLayout.minimumInteritemSpacing = minmumInteritemSpacing;
        self.collectionViewFlowLayout.minimumLineSpacing = minmumInteritemSpacing;
        self.collectionViewFlowLayout.sectionInset =UIEdgeInsetsMake(0, 0, 0, 0);
        self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(dwidth(leftPadding), dwidth(11), MLScreenWidth - dwidth(leftPadding+rightPadding) ,collectionViewHeight - dwidth(5)) collectionViewLayout:self.collectionViewFlowLayout];
        self.collectionView.backgroundColor = [UIColor whiteColor];
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        self.collectionView.scrollEnabled = NO;
        self.collectionView.showsHorizontalScrollIndicator = NO;
        [self.collectionView registerClass:[CYCircleImgCollectionViewCell class] forCellWithReuseIdentifier:@"CYCircleImgCollectionViewCellId"];
        [self.collectBgView addSubview:self.collectionView];
    }
    
    self.collectionView.frame = CGRectMake(dwidth(leftPadding), dwidth(11), MLScreenWidth - dwidth(leftPadding+rightPadding) ,collectionViewHeight - dwidth(5));
}

#pragma mark - 集合视图collectionView代理方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if (collectionView == self.collectionView) {
     
        return self.imageArray.count;
    }else if (collectionView == self.answerLikeCollectionView){
    
        return self.likeImageArray.count;
    }else {
    
        return 0;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (collectionView == self.collectionView) {
        
        CYCircleImgCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CYCircleImgCollectionViewCellId" forIndexPath:indexPath];
        cell.rowNumber = indexPath.row;
        cell.backgroundColor = [UIColor whiteColor];
        
        //    [cell.picImageView sd_setImageWithURL:[NSURL URLWithString:self.imageArray[indexPath.row]]];
        [cell.picImageView setImage:[UIImage imageNamed:self.imageArray[indexPath.row]]];
        return cell;
    }else if (collectionView == self.answerLikeCollectionView){
    
        CYCircleImgCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CYCircleImgCollectionViewCellId1" forIndexPath:indexPath];
        cell.rowNumber = indexPath.row;
        cell.backgroundColor = FDDKConvertColorBy0xHexRGB(0xfafafa);
        
        [cell.picImageView setImage:[UIImage imageNamed:self.likeImageArray[indexPath.row]]];
        return cell;
    }else {
    
        return nil;
    }

}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

//    [self lookPhoto:self.imageArray andIndexPath:indexPath];
}

- (void)lookPhoto:(NSArray *)imageArray andIndexPath:(NSIndexPath *)indexPath {
//    AJPhotoBrowserViewController *photoBrowserVC = [[AJPhotoBrowserViewController alloc] initWithPhotos:imageArray index:indexPath.row];
//    [[NSUserDefaults standardUserDefaults]setObject:@"0" forKey:@"popRefresh"];
//    [[NSUserDefaults standardUserDefaults]synchronize];
//    [self.viewController.navigationController pushViewController:photoBrowserVC animated:YES];
}

+ (instancetype)cellWithTableView:(UITableView *)tableView andIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = [NSString stringWithFormat:@"CYCircleCellId%ld%ld",indexPath.section,indexPath.row];
    CYCircleCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[CYCircleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

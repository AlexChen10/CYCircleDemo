//
//  CYCircleHomeCenterViewController.m
//  YYEKT
//
//  Created by 陈玉 on 17/9/19.
//  Copyright © 2017年 lin. All rights reserved.
//

#import "CYCircleHomeCenterViewController.h"
#import "UIBarButtonItem+WX.h"
#import "CYCircleCell.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import "CYAnswerModel.h"


@interface CYCircleHomeCenterViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, retain) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *answerContentArray;

@end

@implementation CYCircleHomeCenterViewController

- (NSMutableArray *)answerContentArray {
    
    if (_answerContentArray == nil) {
        
        _answerContentArray = [NSMutableArray new];
    }
    return _answerContentArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!self.title) {
        self.title = @"音乐圈";
    }
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithIcon:@"add_icon" highIcon:@"add_icon" title:@"" target:self action:@selector(rightBarButtonItemClick)];
    
    [self setupTableView];
    
    
    NSMutableArray *array11 = [NSMutableArray new];
    NSMutableArray *array22 = [NSMutableArray new];
    NSMutableArray *array33 = [NSMutableArray new];
    NSMutableArray *array44 = [NSMutableArray new];
    NSMutableArray *array55 = [NSMutableArray new];
    
    NSArray *array1 =@[@"123sjahfjsahfjakhf",@"sgsgkasjhfjkafhjakfhjhfjfhfhhhfhhfhfhhfhfhhfhfhfhhfhfhfhfhhfhfhfhfhfhfhfhhfhfhfhfhfhfhhfhfhfhfhhfhf",@"sagsgds",@"dsfdggsjhfjshfjshfhfhfhfhhfhfhhfhhfhhfhfhfhhfhfhf",@"dfdfmmmmmmmmmmmmmmm"];
    
    NSArray *array2 =@[@"123234545454545454斯卡哈否还是看就按阖家安康很费劲啊话费哈",@"sgsg",@"sagsgds",@"dsfdgg是卡几号放假阿卡会发接口和发卡行返回卡号发哈付货款哈开户费哈发货",@"dfdf"];
    
    NSArray *array3 =@[@"123shjfhahsjafh爱上能否把积分哈发海景房噶海景房噶好发给哈法国红酒法国红酒风高放火风格和风高放火发给过复古风格发",@"sgsg",@"sagsgds",@"dsfdgg",@"dfdf"];
    
    NSArray *array4 =@[@"123mmmm啥的送到所多多",@"sgsg萨芬撒环境开放哈夫节啊话费接口返回继父回家返回键返空汇返空汇方法和返回和返回返回",@"sagsgds",@"dsfdgg",@"dfdf"];
    
    NSArray *array5 =@[@"123nnnnn啊就是付哈付付付发付军奥付或军奥或付军奥发军付或或付或或付或付或付或或付或付或付或付或或付或付或付或军或付军或付或或付或",@"sgsg",@"sagsgds数据恢复几号放假倒海翻江发货发货后发货发货发货后发货发货发货后发货发货发货后返回返回",@"dsfdgg数据恢复交话费好烦好烦好烦好烦好烦好烦回合肥画法几何发货发货后发货发货发货后发货发货后发货返回返回好烦好烦",@"dfdf啊手机号附近阿富汗电话费觉得很烦减肥开发环境发货发货后发货后鸡肤鹤发哈哈饭卡好烦好烦后付款后发货发货后返回返回"];
    
    
    for (NSInteger i = 0; i <5 ; i ++) {
        
        CYAnswerModel *model = [[CYAnswerModel alloc] init];
        model.contentStr = array1[i];
        [array11 addObject:model];
        
    }
    for (NSInteger i = 0; i <5 ; i ++) {
        
        CYAnswerModel *model = [[CYAnswerModel alloc] init];
        model.contentStr = array2[i];
        [array22 addObject:model];
        
    }
    for (NSInteger i = 0; i <5 ; i ++) {
        
        CYAnswerModel *model = [[CYAnswerModel alloc] init];
        model.contentStr = array3[i];
        [array33 addObject:model];
        
    }
    for (NSInteger i = 0; i <5 ; i ++) {
        
        CYAnswerModel *model = [[CYAnswerModel alloc] init];
        model.contentStr = array4[i];
        [array44 addObject:model];
        
    }
    for (NSInteger i = 0; i <5 ; i ++) {
        
        CYAnswerModel *model = [[CYAnswerModel alloc] init];
        model.contentStr = array5[i];
        [array55 addObject:model];
        
    }
    
    [self.answerContentArray addObject:array11];
    [self.answerContentArray addObject:array22];
    [self.answerContentArray addObject:array33];
    [self.answerContentArray addObject:array44];
    [self.answerContentArray addObject:array55];

}

- (void)rightBarButtonItemClick {

    //右上角添加按钮
}

- (void)setupTableView {
    
    self.tableView = ({
        
        UITableView *tableView = [[UITableView alloc] init];
        
        tableView.backgroundColor = [UIColor clearColor];
        
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.scrollEnabled = YES;
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        tableView.estimatedRowHeight = 50.0f;
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView;
        
    });
    [self.view addSubview:self.tableView];
    self.tableView.sd_layout
    .leftSpaceToView(self.view,0)
    .topSpaceToView(self.view,0)
    .widthIs(MLScreenWidth)
    .heightIs(MLScreenHeight);
    
}

#pragma tableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.answerContentArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CYCircleCell *circleCell = [CYCircleCell cellWithTableView:tableView andIndexPath:indexPath];
    circleCell.circleModel = nil;
    circleCell.array = self.answerContentArray[indexPath.row];

//    [circleCell.prizeBtn addTarget:self action:@selector(onPrizeBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    return circleCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat rowHeight = [self.tableView cellHeightForIndexPath:indexPath cellContentViewWidth:MLScreenWidth tableView:self.tableView];
    
    return rowHeight;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


#import <Foundation/Foundation.h>

@interface EconomicData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EconomicData

+ (instancetype)sharedInstance {
    static EconomicData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EconomicDataToCache:(Byte *)data {
    int maxCancel = data[0];
    Byte itemAlien = data[1];
    int butt = data[2];
    for (int i = butt; i < butt + maxCancel; i++) {
        int value = data[i] + itemAlien;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[butt + maxCancel] = 0;
    return data + butt;
}

- (NSString *)StringFromEconomicData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EconomicDataToCache:data]];
}

//: my_log
- (NSString *)user_pathKey {
    /* static */ NSString *user_pathKey = nil;
    if (!user_pathKey) {
        Byte value[] = {6, 63, 9, 52, 185, 77, 211, 128, 191, 46, 58, 32, 45, 48, 40, 206};
        user_pathKey = [self StringFromEconomicData:value];
    }
    return user_pathKey;
}

//: 日志项目 %ld
- (NSString *)main_roughValue {
    /* static */ NSString *main_roughValue = nil;
    if (!main_roughValue) {
        Byte value[] = {16, 51, 12, 84, 18, 127, 159, 86, 172, 38, 116, 94, 179, 100, 114, 178, 140, 100, 182, 110, 134, 180, 104, 123, 237, 242, 57, 49, 72};
        main_roughValue = [self StringFromEconomicData:value];
    }
    return main_roughValue;
}

//: group_info_activity_without
- (NSString *)dreamSlatId {
    /* static */ NSString *dreamSlatId = nil;
    if (!dreamSlatId) {
        Byte value[] = {27, 50, 6, 82, 253, 120, 53, 64, 61, 67, 62, 45, 55, 60, 52, 61, 45, 47, 49, 66, 55, 68, 55, 66, 71, 45, 69, 55, 66, 54, 61, 67, 66, 62};
        dreamSlatId = [self StringFromEconomicData:value];
    }
    return dreamSlatId;
}

//: #999999
- (NSString *)main_viewValue {
    /* static */ NSString *main_viewValue = nil;
    if (!main_viewValue) {
        Byte value[] = {7, 98, 8, 33, 218, 62, 36, 25, 193, 215, 215, 215, 215, 215, 215, 102};
        main_viewValue = [self StringFromEconomicData:value];
    }
    return main_viewValue;
}

//: ic_none_LogList
- (NSString *)dreamAspectIdent {
    /* static */ NSString *dreamAspectIdent = nil;
    if (!dreamAspectIdent) {
        Byte value[] = {15, 82, 13, 82, 85, 110, 134, 252, 213, 37, 82, 10, 128, 23, 17, 13, 28, 29, 28, 19, 13, 250, 29, 21, 250, 23, 33, 34, 105};
        dreamAspectIdent = [self StringFromEconomicData:value];
    }
    return dreamAspectIdent;
}

//: #000000
- (NSString *)k_viewImageStr {
    /* static */ NSString *k_viewImageStr = nil;
    if (!k_viewImageStr) {
        Byte value[] = {7, 3, 10, 145, 249, 241, 63, 113, 24, 147, 32, 45, 45, 45, 45, 45, 45, 122};
        k_viewImageStr = [self StringFromEconomicData:value];
    }
    return k_viewImageStr;
}

//: back_arrow_bl
- (NSString *)mColdNameDisplayTitle {
    /* static */ NSString *mColdNameDisplayTitle = nil;
    if (!mColdNameDisplayTitle) {
        Byte value[] = {13, 46, 12, 142, 103, 87, 62, 105, 109, 169, 39, 76, 52, 51, 53, 61, 49, 51, 68, 68, 65, 73, 49, 52, 62, 81};
        mColdNameDisplayTitle = [self StringFromEconomicData:value];
    }
    return mColdNameDisplayTitle;
}

//: #F6F7FA
- (NSString *)m_infoTermsPath {
    /* static */ NSString *m_infoTermsPath = nil;
    if (!m_infoTermsPath) {
        Byte value[] = {7, 58, 7, 172, 160, 6, 180, 233, 12, 252, 12, 253, 12, 7, 129};
        m_infoTermsPath = [self StringFromEconomicData:value];
    }
    return m_infoTermsPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageDataViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "MessageDataViewController.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource>
@interface MessageDataViewController ()<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation MyLogViewController
@implementation MessageDataViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}
//: - (void)backAction{
- (void)atSelected{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor user:[[EconomicData sharedInstance] m_infoTermsPath]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice title]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[EconomicData sharedInstance] mColdNameDisplayTitle]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(atSelected) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice title]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor user:[[EconomicData sharedInstance] k_viewImageStr]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [BackgroundRandomAttribute content:[[EconomicData sharedInstance] user_pathKey]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice title])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: self.data = [NSMutableArray array];
    self.data = [NSMutableArray array];
    //: [self loadData];
    [self textInformation];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (void)loadData {
- (void)textInformation {
    // 这里可以加载其他类型的数据，或者显示空状态
    //: if (self.data.count == 0) {
    if (self.data.count == 0) {
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: } else {
    } else {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    }
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return 60;
    return 60;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: static NSString *cellIdentifier = @"LogCell";
    static NSString *cellIdentifier = @"LogCell";
    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        //: cell.backgroundColor = [UIColor whiteColor];
        cell.backgroundColor = [UIColor whiteColor];
        //: cell.layer.cornerRadius = 8;
        cell.layer.cornerRadius = 8;
        //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    // 配置cell内容
    //: cell.textLabel.text = [NSString stringWithFormat:@"日志项目 %ld", (long)indexPath.section + 1];
    cell.textLabel.text = [NSString stringWithFormat:[[EconomicData sharedInstance] main_roughValue], (long)indexPath.section + 1];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 处理点击事件
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice title])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[[EconomicData sharedInstance] dreamAspectIdent]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor user:[[EconomicData sharedInstance] main_viewValue]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [PushLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [BackgroundRandomAttribute content:[[EconomicData sharedInstance] dreamSlatId]];
    }
    //: return _defView;
    return _defView;
}

//: @end
@end


#import <Foundation/Foundation.h>

@interface ViewData : NSObject

+ (instancetype)sharedInstance;

//: 智能机器人
@property (nonatomic, copy) NSString *mainShowToMessage;

@end

@implementation ViewData

+ (instancetype)sharedInstance {
    static ViewData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ViewDataToCache:(Byte *)data {
    int clinic = data[0];
    int digitiser = data[1];
    for (int i = 0; i < clinic / 2; i++) {
        int begin = digitiser + i;
        int end = digitiser + clinic - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[digitiser + clinic] = 0;
    return data + digitiser;
}

- (NSString *)StringFromViewData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ViewDataToCache:data]];
}  

//: 智能机器人
- (NSString *)mainShowToMessage {
    if (!_mainShowToMessage) {
        Byte value[] = {15, 11, 239, 93, 31, 84, 57, 13, 36, 165, 200, 186, 186, 228, 168, 153, 229, 186, 156, 230, 189, 131, 232, 186, 153, 230, 237};
        _mainShowToMessage = [self StringFromViewData:value];
    }
    return _mainShowToMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CodexViewController.m
//  NIM
//
//  Created by chris on 2017/6/23.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESRobotListViewController.h"
#import "CodexViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESUserListCell.h"
#import "ShouldViewCell.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactDataMember.h"
#import "InformationMember.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRobotCardViewController.h"
#import "CountViewController.h"
//: #import "NTESSessionViewController.h"
#import "BlockViewController.h"

// __M_A_C_R_O__

//: @interface NTESRobotListViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,NTESUserListCellDelegate>
@interface CodexViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,VideoTemp>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) UIRefreshControl *refreshControl;
@property (nonatomic,strong) UIRefreshControl *refreshControl;

//: @end
@end

//: @implementation NTESRobotListViewController
@implementation CodexViewController


//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListenr];
    [self passePartout];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpNavItem];
    [self iconItem];
    //: [self addListener];
    [self add];
    //: self.data = self.robots;
    self.data = self.colorInput;
    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.tableView addSubview:self.refreshControl];
    [self.tableView addSubview:self.refreshControl];
}


//: - (void)setUpNavItem{
- (void)iconItem{
    //: self.navigationItem.title = @"智能机器人";
    self.navigationItem.title = [ViewData sharedInstance].mainShowToMessage;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)isContentPath:(UITableView *)tableView magnitude:(NSIndexPath *)indexPath{
    //: return 60.f;
    return 60.f;
}


//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)show:(UITableView *)tableView ascertain:(NSInteger)section{
    //: return self.data.count;
    return self.data.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)find:(UITableView *)tableView date:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESUserListCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ShouldViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESUserListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[ShouldViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.row];
    InformationMember *member = self.data[indexPath.row];
    //: [cell refreshWithMember:member];
    [cell refreshWithMember:member];
    //: return cell;
    return cell;
}


//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)input:(UITableView *)tableView labelOffPath:(NSIndexPath *)indexPath
{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: NTESContactDataMember *member = self.data[indexPath.row];
    InformationMember *member = self.data[indexPath.row];

    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:member.info.infoId];
    CountViewController *vc = [[CountViewController alloc] initWithUserId:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: #pragma mark - NTESUserListCellDelegate
#pragma mark - VideoTemp
//: - (void)didTouchUserListAvatar:(NSString *)userId{
- (void)flips:(NSString *)userId{
    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:userId];
    CountViewController *vc = [[CountViewController alloc] initWithUserId:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoChanged:(NSNotification *)notification
- (void)streetwise:(NSNotification *)notification
{
    //: self.data = self.robots;
    self.data = self.colorInput;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onPull2Refresh:(id)sender
- (void)location:(id)sender
{
    //: [self.refreshControl beginRefreshing];
    [self.refreshControl beginRefreshing];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].robotManager fetchAllRobotsFromServer:^(NSError * _Nullable error, NSArray<NIMRobot *> * _Nullable robots) {
    [[NIMSDK sharedSDK].robotManager fetchAllRobotsFromServer:^(NSError * _Nullable error, NSArray<NIMRobot *> * _Nullable robots) {
        //: [weakSelf.refreshControl endRefreshing];
        [weakSelf.refreshControl endRefreshing];
        //: if (!error)
        if (!error)
        {
            //: NSMutableArray *list = [[NSMutableArray alloc] init];
            NSMutableArray *list = [[NSMutableArray alloc] init];
            //: for (NIMRobot *robot in robots) {
            for (NIMRobot *robot in robots) {
                //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
                InformationMember *member = [[InformationMember alloc] init];
                //: NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
                NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
                //: member.info = info;
                member.info = info;
                //: [list addObject:member];
                [list addObject:member];
            }
            //: weakSelf.data = list;
            weakSelf.data = list;
            //: [weakSelf.tableView reloadData];
            [weakSelf.tableView reloadData];
        }
    //: }];
    }];

}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)add
{
    //: extern NSString *NIMKitUserInfoHasUpdatedNotification;
    extern NSString *NIMKitUserInfoHasUpdatedNotification;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoChanged:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoChanged:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
}

//: - (void)removeListenr
- (void)passePartout
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)robots{
- (NSMutableArray *)colorInput{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
    for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        InformationMember *member = [[InformationMember alloc] init];
        //: NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
        NIMKitInfo *info = [[NIMKit sharedKit] infoByUser:robot.userId option:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}

//: - (UIRefreshControl *)refreshControl
- (UIRefreshControl *)refreshControl
{
    //: if (!_refreshControl) {
    if (!_refreshControl) {
        //: _refreshControl = [[UIRefreshControl alloc] initWithFrame:CGRectZero];
        _refreshControl = [[UIRefreshControl alloc] initWithFrame:CGRectZero];
        //: [_refreshControl addTarget:self action:@selector(onPull2Refresh:) forControlEvents:UIControlEventValueChanged];
        [_refreshControl addTarget:self action:@selector(onPull2Refresh:) forControlEvents:UIControlEventValueChanged];
    }
    //: return _refreshControl;
    return _refreshControl;
}


//: @end
@end
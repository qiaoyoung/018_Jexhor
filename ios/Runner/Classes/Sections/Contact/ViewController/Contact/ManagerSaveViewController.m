
#import <Foundation/Foundation.h>

@interface CountData : NSObject

@end

@implementation CountData

+ (Byte *)CountDataToCache:(Byte *)data {
    int coatButton = data[0];
    Byte valueInfo = data[1];
    int holdfast = data[2];
    for (int i = holdfast; i < holdfast + coatButton; i++) {
        int value = data[i] - valueInfo;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[holdfast + coatButton] = 0;
    return data + holdfast;
}

+ (NSString *)StringFromCountData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CountDataToCache:data]];
}

//: 智能机器人
+ (NSString *)main_commentName {
    /* static */ NSString *main_commentName = nil;
    if (!main_commentName) {
        Byte value[] = {15, 60, 7, 242, 100, 211, 177, 34, 213, 246, 36, 191, 249, 34, 216, 246, 33, 213, 228, 32, 246, 246, 200};
        main_commentName = [self StringFromCountData:value];
    }
    return main_commentName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerSaveViewController.m
//  NIM
//
//  Created by chris on 2017/6/23.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESRobotListViewController.h"
#import "ManagerSaveViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESUserListCell.h"
#import "WithCompartmentViewCell.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactDataMember.h"
#import "PresentItem.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRobotCardViewController.h"
#import "ModeActivityViewController.h"
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"

// __M_A_C_R_O__

//: @interface NTESRobotListViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,NTESUserListCellDelegate>
@interface ManagerSaveViewController ()<UITableViewDelegate,UITableViewDataSource,NIMUserManagerDelegate,TextFactor>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) UIRefreshControl *refreshControl;
@property (nonatomic,strong) UIRefreshControl *refreshControl;

//: @end
@end

//: @implementation NTESRobotListViewController
@implementation ManagerSaveViewController


//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListenr];
    [self theory];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpNavItem];
    [self concatenate];
    //: [self addListener];
    [self add];
    //: self.data = self.robots;
    self.data = self.back;
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
- (void)concatenate{
    //: self.navigationItem.title = @"智能机器人";
    self.navigationItem.title = [CountData main_commentName];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)stylePath:(UITableView *)tableView on:(NSIndexPath *)indexPath{
    //: return 60.f;
    return 60.f;
}


//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)viewId:(UITableView *)tableView shared:(NSInteger)section{
    //: return self.data.count;
    return self.data.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)behindPhone:(UITableView *)tableView along:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESUserListCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    WithCompartmentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESUserListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[WithCompartmentViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.row];
    PresentItem *member = self.data[indexPath.row];
    //: [cell refreshWithMember:member];
    [cell refreshWithMember:member];
    //: return cell;
    return cell;
}


//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)stochasticProcess:(UITableView *)tableView modifyVideo:(NSIndexPath *)indexPath
{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: NTESContactDataMember *member = self.data[indexPath.row];
    PresentItem *member = self.data[indexPath.row];

    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:member.info.infoId];
    ModeActivityViewController *vc = [[ModeActivityViewController alloc] initWithUserId:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: #pragma mark - NTESUserListCellDelegate
#pragma mark - TextFactor
//: - (void)didTouchUserListAvatar:(NSString *)userId{
- (void)musted:(NSString *)userId{
    //: NTESRobotCardViewController *vc = [[NTESRobotCardViewController alloc] initWithUserId:userId];
    ModeActivityViewController *vc = [[ModeActivityViewController alloc] initWithUserId:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoChanged:(NSNotification *)notification
- (void)handle:(NSNotification *)notification
{
    //: self.data = self.robots;
    self.data = self.back;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onPull2Refresh:(id)sender
- (void)yankMoreRecord:(id)sender
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
                PresentItem *member = [[PresentItem alloc] init];
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
- (void)theory
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)robots{
- (NSMutableArray *)back{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
    for (NIMRobot *robot in [NIMSDK sharedSDK].robotManager.allRobots) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        PresentItem *member = [[PresentItem alloc] init];
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
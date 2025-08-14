
#import <Foundation/Foundation.h>

@interface HideData : NSObject

+ (instancetype)sharedInstance;

//: 搜索联系人
@property (nonatomic, copy) NSString *notiCompleteName;

//: defaultCell
@property (nonatomic, copy) NSString *m_accountValue;

//: teamList
@property (nonatomic, copy) NSString *appMaxData;

//: 联系人
@property (nonatomic, copy) NSString *mainWithTitle;

//: cell
@property (nonatomic, copy) NSString *k_scaleData;

//: 搜索关键字:\"%@\"
@property (nonatomic, copy) NSString *mainSendButtonTitle;

//: entrance
@property (nonatomic, copy) NSString *k_removeName;

//: head_default
@property (nonatomic, copy) NSString *main_labelData;

//: userList
@property (nonatomic, copy) NSString *dreamLengthItemFileData;

@end

@implementation HideData

+ (instancetype)sharedInstance {
    static HideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HideDataToCache:(Byte *)data {
    int lastex = data[0];
    Byte video = data[1];
    int bubbleRead = data[2];
    for (int i = bubbleRead; i < bubbleRead + lastex; i++) {
        int value = data[i] + video;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bubbleRead + lastex] = 0;
    return data + bubbleRead;
}

- (NSString *)StringFromHideData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HideDataToCache:data]];
}

//: teamList
- (NSString *)appMaxData {
    if (!_appMaxData) {
        Byte value[] = {8, 93, 6, 62, 168, 92, 23, 8, 4, 16, 239, 12, 22, 23, 8};
        _appMaxData = [self StringFromHideData:value];
    }
    return _appMaxData;
}

//: 联系人
- (NSString *)mainWithTitle {
    if (!_mainWithTitle) {
        Byte value[] = {9, 42, 12, 64, 122, 132, 33, 190, 179, 10, 206, 175, 190, 87, 106, 189, 137, 145, 186, 144, 144, 179};
        _mainWithTitle = [self StringFromHideData:value];
    }
    return _mainWithTitle;
}

//: userList
- (NSString *)dreamLengthItemFileData {
    if (!_dreamLengthItemFileData) {
        Byte value[] = {8, 82, 9, 185, 66, 35, 4, 197, 106, 35, 33, 19, 32, 250, 23, 33, 34, 215};
        _dreamLengthItemFileData = [self StringFromHideData:value];
    }
    return _dreamLengthItemFileData;
}

//: defaultCell
- (NSString *)m_accountValue {
    if (!_m_accountValue) {
        Byte value[] = {11, 1, 8, 185, 63, 138, 148, 75, 99, 100, 101, 96, 116, 107, 115, 66, 100, 107, 107, 97};
        _m_accountValue = [self StringFromHideData:value];
    }
    return _m_accountValue;
}

//: 搜索关键字:\"%@\"
- (NSString *)mainSendButtonTitle {
    if (!_mainSendButtonTitle) {
        Byte value[] = {20, 62, 4, 82, 168, 82, 94, 169, 118, 100, 167, 71, 117, 171, 86, 112, 167, 111, 89, 252, 228, 231, 2, 228, 171};
        _mainSendButtonTitle = [self StringFromHideData:value];
    }
    return _mainSendButtonTitle;
}

//: cell
- (NSString *)k_scaleData {
    if (!_k_scaleData) {
        Byte value[] = {4, 48, 5, 201, 64, 51, 53, 60, 60, 140};
        _k_scaleData = [self StringFromHideData:value];
    }
    return _k_scaleData;
}

//: entrance
- (NSString *)k_removeName {
    if (!_k_removeName) {
        Byte value[] = {8, 32, 10, 195, 244, 204, 67, 169, 202, 22, 69, 78, 84, 82, 65, 78, 67, 69, 223};
        _k_removeName = [self StringFromHideData:value];
    }
    return _k_removeName;
}

//: head_default
- (NSString *)main_labelData {
    if (!_main_labelData) {
        Byte value[] = {12, 80, 4, 27, 24, 21, 17, 20, 15, 20, 21, 22, 17, 37, 28, 36, 192};
        _main_labelData = [self StringFromHideData:value];
    }
    return _main_labelData;
}

//: 搜索联系人
- (NSString *)notiCompleteName {
    if (!_notiCompleteName) {
        Byte value[] = {15, 59, 10, 235, 113, 209, 232, 159, 56, 76, 171, 85, 97, 172, 121, 103, 173, 70, 89, 172, 120, 128, 169, 127, 127, 109};
        _notiCompleteName = [self StringFromHideData:value];
    }
    return _notiCompleteName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageTableViewController.m
//  NIM
//
//  Created by Genning-Work on 2020/1/2.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactSearchViewController.h"
#import "ImageTableViewController.h"
//: #import "NTESGroupedContacts.h"
#import "NameGroupedDataCollection.h"
//: #import "NTESContactUtilItem.h"
#import "TingChange.h"
//: #import "NTESPersonalCardViewController.h"
#import "SystemViewController.h"
//: #import "NTESContactDataCell.h"
#import "BeView.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "NTESSessionViewController.h"
#import "DisplayAccountViewController.h"
//: #import <SVProgressHUD.h>
#import <SVProgressHUD.h>

//: @interface NTESContactSearchViewController ()<UISearchResultsUpdating, UISearchControllerDelegate>
@interface ImageTableViewController ()<UISearchResultsUpdating, UISearchControllerDelegate>

/*
 0 : 联系人
 1 : 群组
*/

//: @property (nonatomic, copy) NSString *searchText;
@property (nonatomic, copy) NSString *searchText;

//: @property (nonatomic, strong) NSMutableArray <NSArray *>*sections;
@property (nonatomic, strong) NSMutableArray <NSArray *>*sections;

//: @property (nonatomic, strong) UISearchController *searchVC;
@property (nonatomic, strong) UISearchController *searchVC;

//: @property (nonatomic, strong) UITableViewController *searchResultVC;
@property (nonatomic, strong) UITableViewController *searchResultVC;

//: @property (nonatomic, assign) BOOL endSearch;
@property (nonatomic, assign) BOOL endSearch;

//: @end
@end

//: @implementation NTESContactSearchViewController
@implementation ImageTableViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIEdgeInsets separatorInset = self.tableView.separatorInset;
    UIEdgeInsets separatorInset = self.tableView.separatorInset;
    //: separatorInset.right = 0;
    separatorInset.right = 0;
    //: self.tableView.separatorInset = separatorInset;
    self.tableView.separatorInset = separatorInset;
    //: self.tableView.sectionHeaderHeight = 0.0;
    self.tableView.sectionHeaderHeight = 0.0;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.tableFooterView = [UIView new];
    self.tableView.tableFooterView = [UIView new];
    //: if (([[[UIDevice currentDevice] systemVersion] doubleValue] < 10.0)) {
    if (([[[UIDevice currentDevice] systemVersion] doubleValue] < 10.0)) {
        //: CGFloat insetTop = self.searchVC.searchBar.height + [UIDevice vg_statusBarHeight];
        CGFloat insetTop = self.searchVC.searchBar.height + [UIDevice heightShowStop];
        //: UIEdgeInsets insets = {insetTop, 0, 0, 0};
        UIEdgeInsets insets = {insetTop, 0, 0, 0};
        //: self.tableView.contentInset = insets;
        self.tableView.contentInset = insets;
    }
    //: self.tableView.tableHeaderView = self.searchVC.searchBar;
    self.tableView.tableHeaderView = self.searchVC.searchBar;
    //: self.definesPresentationContext = YES;
    self.definesPresentationContext = YES;
    //: self.title = @"搜索联系人".ntes_localized;
    self.title = [HideData sharedInstance].notiCompleteName.shouldLocalized;
}

//: #pragma mark - Table view data source
#pragma mark - Table view data source
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: return _sections.count;
        return _sections.count;
    //: } else {
    } else {
        //: return 1;
        return 1;
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: return [_sections objectAtIndex:section].count;
        return [_sections objectAtIndex:section].count;
    //: } else {
    } else {
        //: return 1;
        return 1;
    }
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: NSArray *datas = _sections[indexPath.section];
        NSArray *datas = _sections[indexPath.section];
        //: if (indexPath.section == 0) {
        if (indexPath.section == 0) {
            //: NIMUser *user = datas[indexPath.row];
            NIMUser *user = datas[indexPath.row];
            //: NTESContactDataCell * cell = [tableView dequeueReusableCellWithIdentifier:@"userList"];
            BeView * cell = [tableView dequeueReusableCellWithIdentifier:[HideData sharedInstance].dreamLengthItemFileData];
            //: if (!cell) {
            if (!cell) {
                //: cell = [[NTESContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"userList"];
                cell = [[BeView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[HideData sharedInstance].dreamLengthItemFileData];
            }
            //: UIImage *placeholderImage = [UIImage imageNamed:@"head_default"];
            UIImage *placeholderImage = [UIImage imageNamed:[HideData sharedInstance].main_labelData];
            //: NSURL *avatarUrl = [NSURL URLWithString:user.userInfo.avatarUrl];
            NSURL *avatarUrl = [NSURL URLWithString:user.userInfo.avatarUrl];
            //: [cell.avatarImageView nim_setImageWithURL:avatarUrl placeholderImage:placeholderImage];
            [cell.avatarImageView media:avatarUrl docketWithinImage:placeholderImage];
            //: cell.textLabel.attributedText = [self showNameWithUser:user];
            cell.textLabel.attributedText = [self outTitle:user];
            //: return cell;
            return cell;
        //: } else if (indexPath.section == 1) {
        } else if (indexPath.section == 1) {
            //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"teamList"];
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[HideData sharedInstance].appMaxData];
            //: if (!cell) {
            if (!cell) {
                //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"teamList"];
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[HideData sharedInstance].appMaxData];
            }
            //: NIMTeam *team = datas[indexPath.row];
            NIMTeam *team = datas[indexPath.row];
            //: cell.textLabel.attributedText = [self showNameWithTeam:team];
            cell.textLabel.attributedText = [self totalBy:team];
            //: return cell;
            return cell;
        //: } else {
        } else {
            //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"defaultCell"];
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[HideData sharedInstance].m_accountValue];
            //: if (!cell) {
            if (!cell) {
                //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCell"];
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[HideData sharedInstance].m_accountValue];
            }
            //: return cell;
            return cell;
        }
    //: } else {
    } else {
        //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[HideData sharedInstance].k_scaleData];
        //: if (!cell) {
        if (!cell) {
            //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[HideData sharedInstance].k_scaleData];
            //: cell.textLabel.textColor = [UIColor blueColor];
            cell.textLabel.textColor = [UIColor blueColor];
        }
        //: cell.textLabel.text = [NSString stringWithFormat:@"搜索关键字:\"%@\"".ntes_localized, _searchText];
        cell.textLabel.text = [NSString stringWithFormat:[HideData sharedInstance].mainSendButtonTitle.shouldLocalized, _searchText];
        //: return cell;
        return cell;
    }
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: if (indexPath.section == 0) {
        if (indexPath.section == 0) {
            //: NIMUser *user = [_sections[indexPath.section] objectAtIndex:indexPath.row];
            NIMUser *user = [_sections[indexPath.section] objectAtIndex:indexPath.row];

            //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:user.userId];
            SystemViewController *vc = [[SystemViewController alloc] initWithAdd:user.userId];
            //: [self showVC:vc];
            [self team:vc];

        //: } else if (indexPath.section == 1) {
        } else if (indexPath.section == 1) {
            //: NIMTeam *team = [_sections[indexPath.section] objectAtIndex:indexPath.row];
            NIMTeam *team = [_sections[indexPath.section] objectAtIndex:indexPath.row];
            //: NIMSession *session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            DisplayAccountViewController *vc = [[DisplayAccountViewController alloc] initWithLastTitleCell:session];
            //: [self showVC:vc];
            [self team:vc];
        }
    //: } else {
    } else {
        //: [self doSearch];
        [self count];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 50;
    return 50;
}

//: - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: if (section == 0) {
        if (section == 0) {
            //: return _sections[section].count != 0 ? @"联系人" : @"";
            return _sections[section].count != 0 ? [HideData sharedInstance].mainWithTitle : @"";
        //: } else if (section == 1) {
        } else if (section == 1) {
            //: return _sections[section].count != 0 ? @"群组" : @"";
            return _sections[section].count != 0 ? @"群组" : @"";
        //: } else {
        } else {
            //: return @"";
            return @"";
        }
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    //: return 24.0;
    return 24.0;
}

//: - (void)showVC:(UIViewController *)vc {
- (void)team:(UIViewController *)vc {
    //: self.sections = _sections;
    self.sections = _sections;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: });
    });
}

//: #pragma mark - UISearchResultsUpdating
#pragma mark - UISearchResultsUpdating
//: - (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    //: if (!_endSearch) {
    if (!_endSearch) {
        //: _searchText = searchController.searchBar.text;
        _searchText = searchController.searchBar.text;
        //: [self.searchResultVC.tableView reloadData];
        [self.searchResultVC.tableView reloadData];
    }
}

//: - (void)willPresentSearchController:(UISearchController *)searchController {
- (void)willPresentSearchController:(UISearchController *)searchController {
    //: _endSearch = NO;
    _endSearch = NO;
}

//: #pragma mark - Search
#pragma mark - Search
//: - (void)doSearch {
- (void)count {
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: NIMUserSearchOption *option = [[NIMUserSearchOption alloc] init];
    NIMUserSearchOption *option = [[NIMUserSearchOption alloc] init];
    //: option.searchContent = _searchText;
    option.searchContent = _searchText;
    //: option.ignoreingCase = [self ignoreCase];
    option.ignoreingCase = [self contentTing];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].userManager searchUserWithOption:option completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
    [[NIMSDK sharedSDK].userManager searchUserWithOption:option completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
        //: if (!error) {
        if (!error) {
            //: NSMutableArray *sections = [NSMutableArray array];
            NSMutableArray *sections = [NSMutableArray array];
            //: NSMutableArray *ret = [NSMutableArray arrayWithArray:users];
            NSMutableArray *ret = [NSMutableArray arrayWithArray:users];
            //: [sections addObject:ret];
            [sections addObject:ret];
            //: if (![weakSelf disableSearchTeam]) {
            if (![weakSelf titleTable]) {//查找team
                //: NIMTeamSearchOption *teamSeacheOption = [[NIMTeamSearchOption alloc] init];
                NIMTeamSearchOption *teamSeacheOption = [[NIMTeamSearchOption alloc] init];
                //: teamSeacheOption.searchContent = weakSelf.searchText;
                teamSeacheOption.searchContent = weakSelf.searchText;
                //: teamSeacheOption.ignoreingCase = [weakSelf ignoreCase];
                teamSeacheOption.ignoreingCase = [weakSelf contentTing];
                //: [[NIMSDK sharedSDK].teamManager searchTeamWithOption:teamSeacheOption completion:^(NSError * _Nullable error, NSArray<NIMTeam *> * _Nullable teams) {
                [[NIMSDK sharedSDK].teamManager searchTeamWithOption:teamSeacheOption completion:^(NSError * _Nullable error, NSArray<NIMTeam *> * _Nullable teams) {
                    //: if (!error) {
                    if (!error) {
                        //: [sections addObject:teams];
                        [sections addObject:teams];
                    }
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: weakSelf.sections = sections;
                    weakSelf.sections = sections;
                //: }];
                }];
            //: } else {
            } else {
                //: [SVProgressHUD dismiss];
                [SVProgressHUD dismiss];
                //: weakSelf.sections = sections;
                weakSelf.sections = sections;
            }
        //: } else {
        } else {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
        }
    //: }];
    }];
}

//: #pragma mark - Helper
#pragma mark - Helper
//: - (NSMutableAttributedString *)showNameWithTeam:(NIMTeam *)team {
- (NSMutableAttributedString *)totalBy:(NIMTeam *)team {
    //: NSString *src = team.teamName;
    NSString *src = team.teamName;
    //: NSString *searchText = _searchText;
    NSString *searchText = _searchText;
    //: if ([self ignoreCase]) {
    if ([self contentTing]) {
        //: src = [src lowercaseString];
        src = [src lowercaseString];
        //: searchText = [searchText lowercaseString];
        searchText = [searchText lowercaseString];
    }
    //: NSRange local = [src rangeOfString:searchText];
    NSRange local = [src rangeOfString:searchText];
    //: NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:team.teamName];
    NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:team.teamName];
    //: [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    //: return show;
    return show;
}

//: - (NSMutableAttributedString *)showNameWithUser:(NIMUser *)user {
- (NSMutableAttributedString *)outTitle:(NIMUser *)user {
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:user.userId blue:nil];
    //: NSMutableAttributedString *ret = [[NSMutableAttributedString alloc] init];
    NSMutableAttributedString *ret = [[NSMutableAttributedString alloc] init];

    //: NSString *src = info.showName;
    NSString *src = info.showName;
    //: NSString *searchText = _searchText;
    NSString *searchText = _searchText;
    //: if ([self ignoreCase]) {
    if ([self contentTing]) {
        //: src = [src lowercaseString];
        src = [src lowercaseString];
        //: searchText = [searchText lowercaseString];
        searchText = [searchText lowercaseString];
    }
    //: NSRange local = [src rangeOfString:searchText];
    NSRange local = [src rangeOfString:searchText];
    //: if (local.location != NSNotFound) {
    if (local.location != NSNotFound) {
        //: NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:info.showName];
        NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:info.showName];
        //: [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
        [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
        //: [ret appendAttributedString:show];
        [ret appendAttributedString:show];
    //: } else {
    } else {
        //: src = user.userId;
        src = user.userId;
        //: if ([self ignoreCase]) {
        if ([self contentTing]) {
            //: src = [src lowercaseString];
            src = [src lowercaseString];
        }
        //: local = [src rangeOfString:searchText]; 
        local = [src rangeOfString:searchText]; //userId
        //: if (local.location != NSNotFound) {
        if (local.location != NSNotFound) {
            //: NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
            NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
            //: [ret appendAttributedString:mainShow];
            [ret appendAttributedString:mainShow];
            //: NSMutableAttributedString *show = [self otherShowName:user.userId];
            NSMutableAttributedString *show = [self diversFromMetronymic:user.userId];
            //: [ret appendAttributedString:show];
            [ret appendAttributedString:show];
        //: } else {
        } else {
            //: src = user.alias;
            src = user.alias;
            //: if ([self ignoreCase]) {
            if ([self contentTing]) {
                //: src = [src lowercaseString];
                src = [src lowercaseString];
            }
            //: local = [src rangeOfString:searchText]; 
            local = [src rangeOfString:searchText]; //nickName
            //: if (local.location != NSNotFound) {
            if (local.location != NSNotFound) {
                //: NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                //: [ret appendAttributedString:mainShow];
                [ret appendAttributedString:mainShow];
                //: NSMutableAttributedString *show = [self otherShowName:user.alias];
                NSMutableAttributedString *show = [self diversFromMetronymic:user.alias];
                //: [ret appendAttributedString:show];
                [ret appendAttributedString:show];
            //: } else {
            } else {
                //: src = user.userInfo.nickName;
                src = user.userInfo.nickName;
                //: if ([self ignoreCase]) {
                if ([self contentTing]) {
                    //: src = [src lowercaseString];
                    src = [src lowercaseString];
                }
                //: local = [src rangeOfString:searchText]; 
                local = [src rangeOfString:searchText]; //nickName
                //: if (local.location != NSNotFound) {
                if (local.location != NSNotFound) {
                    //: NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                    NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                    //: [ret appendAttributedString:mainShow];
                    [ret appendAttributedString:mainShow];
                    //: NSMutableAttributedString *show = [self otherShowName:user.userInfo.nickName];
                    NSMutableAttributedString *show = [self diversFromMetronymic:user.userInfo.nickName];
                    //: [ret appendAttributedString:show];
                    [ret appendAttributedString:show];
                }
            }
        }
    }
    //: return ret;
    return ret;
}

//: - (NSMutableAttributedString *)otherShowName:(NSString *)string {
- (NSMutableAttributedString *)diversFromMetronymic:(NSString *)string {
    //: NSString *otherShow = [NSString stringWithFormat:@" [%@]", string];
    NSString *otherShow = [NSString stringWithFormat:@" [%@]", string];
    //: NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:otherShow];
    NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:otherShow];
    //: NSString *searchText = _searchText;
    NSString *searchText = _searchText;
    //: if ([self ignoreCase]) {
    if ([self contentTing]) {
        //: searchText = [searchText lowercaseString];
        searchText = [searchText lowercaseString];
    }
    //: NSRange local = [[otherShow lowercaseString] rangeOfString:searchText];
    NSRange local = [[otherShow lowercaseString] rangeOfString:searchText];
    //: [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    //: return show;
    return show;
}

//: - (BOOL)disableSearchTeam {
- (BOOL)titleTable {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: if (_delegate && [_delegate respondsToSelector:@selector(disableSearchTeam)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(titleTable)]) {
        //: ret = [_delegate disableSearchTeam];
        ret = [_delegate titleTable];
    }
    //: return ret;
    return ret;
}

//: - (BOOL)ignoreCase {
- (BOOL)contentTing {
    //: BOOL ret = YES;
    BOOL ret = YES;
    //: if (_delegate && [_delegate respondsToSelector:@selector(ignoreCase)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(contentTing)]) {
        //: ret = [_delegate ignoreCase];
        ret = [_delegate contentTing];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (void)setSections:(NSMutableArray<NSArray *> *)sections {
- (void)setSections:(NSMutableArray<NSArray *> *)sections {
    //: _sections = sections;
    _sections = sections;
    //: _endSearch = YES;
    _endSearch = YES;
    //: [self.searchVC setActive:NO];
    [self.searchVC setActive:NO];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (UITableViewController *)searchResultVC {
- (UITableViewController *)searchResultVC {
    //: if (!_searchResultVC) {
    if (!_searchResultVC) {
        //: _searchResultVC = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
        _searchResultVC = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
        //: CGFloat resultInsetTop = self.searchVC.searchBar.height + [UIDevice vg_statusBarHeight];
        CGFloat resultInsetTop = self.searchVC.searchBar.height + [UIDevice heightShowStop];
        //: UIEdgeInsets resultInsets = {resultInsetTop, 0, 0, 0};
        UIEdgeInsets resultInsets = {resultInsetTop, 0, 0, 0};
        //: _searchResultVC.tableView.contentInset = resultInsets;
        _searchResultVC.tableView.contentInset = resultInsets;
        //: [_searchResultVC.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier: @"entrance"];
        [_searchResultVC.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier: [HideData sharedInstance].k_removeName];
        //: _searchResultVC.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _searchResultVC.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: _searchResultVC.tableView.delegate = self;
        _searchResultVC.tableView.delegate = self;
        //: _searchResultVC.tableView.dataSource = self;
        _searchResultVC.tableView.dataSource = self;
        //: _searchResultVC.tableView.separatorInset = UIEdgeInsetsZero;
        _searchResultVC.tableView.separatorInset = UIEdgeInsetsZero;
        //: _searchResultVC.tableView.tableFooterView = [UIView new];
        _searchResultVC.tableView.tableFooterView = [UIView new];
    }
    //: return _searchResultVC;
    return _searchResultVC;
}

//: - (UISearchController *)searchVC {
- (UISearchController *)searchVC {
    //: if (!_searchVC) {
    if (!_searchVC) {
        //: _searchVC = [[UISearchController alloc] initWithSearchResultsController:self.searchResultVC];
        _searchVC = [[UISearchController alloc] initWithSearchResultsController:self.searchResultVC];
        //: _searchVC.searchResultsUpdater = self;
        _searchVC.searchResultsUpdater = self;
        //: _searchVC.delegate = self;
        _searchVC.delegate = self;
        //: _searchVC.obscuresBackgroundDuringPresentation = YES;
        _searchVC.obscuresBackgroundDuringPresentation = YES;
        //: _searchVC.hidesNavigationBarDuringPresentation = YES;
        _searchVC.hidesNavigationBarDuringPresentation = YES;
        //: _searchVC.searchBar.height = 44.f;
        _searchVC.searchBar.height = 44.f;
    }
    //: return _searchVC;
    return _searchVC;
}

//: @end
@end

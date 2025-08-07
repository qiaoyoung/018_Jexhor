// __DEBUG__
// __CLOSE_PRINT__
//
//  HarmViewController.h
// Secret
//
//  Created by Netease on 2019/6/11.
//  Copyright © 2019 NetEase. All rights reserved.
//  基础UI

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushTeamCardRowItem.h"
#import "Item.h"
//: #import "PushTeamMemberListCell.h"
#import "AreopagiteViewCell.h"
//: #import "PushTeamSwitchTableViewCell.h"
#import "SaveView.h"
//: #import "PushTeamListDataManager.h"
#import "MainRead.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
    //: NIMTeamCardSwithCellTypeTop = 1,
    NIMTeamCardSwithCellTypeTop = 1,
    //: NIMTeamCardSwithCellTypeNotify,
    NIMTeamCardSwithCellTypeNotify,
    //: NIMTeamCardSwithCellTypeMute,
    NIMTeamCardSwithCellTypeMute,
//: };
};

//: typedef void(^NIMTeamCardPickerHandle)(UIImage *image);
typedef void(^NIMTeamCardPickerHandle)(UIImage *image);

//: @protocol PushTeamCardViewControllerDelegate <NSObject>
@protocol TempSecret <NSObject>

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)on;
- (void)optionTop:(BOOL)on;

//: - (void)NIMTeamCardVCDidSetMute:(BOOL)on;
- (void)top:(BOOL)on;

//: @end
@end

//: #pragma mark - UI基类
#pragma mark - UI基类
//: @interface PushTeamCardViewController : UIViewController
@interface HarmViewController : UIViewController

//: @property (nonatomic,weak) id <PushTeamCardViewControllerDelegate> delegate;
@property (nonatomic,weak) id <TempSecret> delegate;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//数据源
//: @property (nonatomic,strong) NSArray <NSArray <PushTeamCardRowItem *> *> *datas;
@property (nonatomic,strong) NSArray <NSArray <Item *> *> *datas;

// "canMemberInfo": 1,//0 不允许查看资料 1 是允许
//: @property (nonatomic,assign) BOOL canMemberInfo;
@property (nonatomic,assign) BOOL canMemberInfo;

//显示相册
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type
- (void)messageCompletion:(UIImagePickerControllerSourceType)type
             //: completion:(NIMTeamCardPickerHandle)completion;
             will:(NIMTeamCardPickerHandle)completion;

//弹框 - 标题
//: - (UIAlertController *)makeAlertSheetWithTitle:(NSString *)title
- (UIAlertController *)barSize:(NSString *)title
                                       //: actions:(NSArray <UIAlertAction *>*)actions;
                                       past:(NSArray <UIAlertAction *>*)actions;

//弹框 - 取消action
//: - (UIAlertAction *)makeCancelAction;
- (UIAlertAction *)send;

//显示弹框
//: - (void)showAlert:(UIAlertController *)alert;
- (void)lengthWith:(UIAlertController *)alert;

//显示Toast
//: - (void)showToastMsg:(NSString *)msg;
- (void)to:(NSString *)msg;


/* --- need reload by child class ---- */
// 子类自定义头文件
//: - (UIView *)didGetHeaderView;
- (UIView *)someIndex;

// 子类自定义cell
//: - (void)didBuildTeamMemberCell:(PushTeamMemberListCell *)cell;
- (void)backgroundShow:(AreopagiteViewCell *)cell;

// 子类刷新tableview
//: - (void)reloadTableViewData;
- (void)questionImage;

// 子类刷新header
//: - (void)reloadTableHeaderData;
- (void)message;

// 子类刷新其他数据
//: - (void)reloadOtherData;
- (void)bruxism;

//: @end
@end




//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END

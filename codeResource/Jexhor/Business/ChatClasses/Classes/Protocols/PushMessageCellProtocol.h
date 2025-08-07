// __DEBUG__
// __CLOSE_PRINT__
//
//  PushMessageCellProtocol.h
// Secret
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "PushCellConfig.h"
#import "PushCellConfig.h"

// __M_A_C_R_O__

//: @class PushMessageModel;
@class PurseModel;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class PushKitEvent;
@class BeforeEvent;
//: @class PushTextView;
@class PositionScrollView;

//: @protocol PushMessageCellDelegate <NSObject>
@protocol SharedOnly <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)signal:(UITableView *)tableView textFrame:(UITableViewCell *)cell kibitz:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)totalBottom:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(PushKitEvent *)event;
- (BOOL)takeOut:(BeforeEvent *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)longFrom:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 activityView:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)keyed:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)sevenDayDownrightAlongCellDragDown:(NIMMessage *)message teamComplete:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)iconTap:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)devices:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)elects:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)duringRecent:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)title:(BOOL)selected nameProgress:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)edges:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)nameSearched:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                nimChecked:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               make:(BOOL)isSelected;

//: @end
@end

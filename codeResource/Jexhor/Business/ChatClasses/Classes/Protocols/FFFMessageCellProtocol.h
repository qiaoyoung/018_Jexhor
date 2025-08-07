// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellProtocol.h
// MessageContent
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"

// __M_A_C_R_O__

//: @class FFFMessageModel;
@class ShowModel;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class FFFKitEvent;
@class WrittenAccountLab;
//: @class FFFTextView;
@class ShowScrollView;

//: @protocol FFFMessageCellDelegate <NSObject>
@protocol SystemCircle <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)courseOfAction:(UITableView *)tableView child:(UITableViewCell *)cell checked:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)largenesses:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event;
- (BOOL)magnitudeerlayerred:(WrittenAccountLab *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)tingCompartment:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 dismiss:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)upCell:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)text:(NIMMessage *)message originComplete:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)generated:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)ting:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)alongBy:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)appearsing:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)pin:(BOOL)selected media_strong:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)dated:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)numberervalSession:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                gray:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               media:(BOOL)isSelected;

//: @end
@end
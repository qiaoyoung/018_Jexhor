// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushContactDefines.h"
#import "PushContactDefines.h"
//: #import "PushKitInfo.h"
#import "DataTeam.h"

//: @protocol PushContactDataCellDelegate <NSObject>
@protocol ImageShow <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)provisionerred:(NSString *)memberId;

//: @end
@end

//: @class PushAvatarImageView;
@class ImageView;

//: @interface PushContactDataCell : UITableViewCell
@interface BackgroundViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) PushAvatarImageView * avatarImageView;
@property (nonatomic,strong) ImageView * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<PushContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<ImageShow> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)message:(id<ToolTextEnablely>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)resolution:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)container:(id<ToolTextEnablely>)member;

//: @end
@end

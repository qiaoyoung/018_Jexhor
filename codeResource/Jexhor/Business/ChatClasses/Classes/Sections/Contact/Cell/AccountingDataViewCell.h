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
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "ConfirmationInfo.h"

//: @protocol FFFContactDataCellDelegate <NSObject>
@protocol CompartmentDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)alongsed:(NSString *)memberId;

//: @end
@end

//: @class FFFAvatarImageView;
@class ButtonControl;

//: @interface FFFContactDataCell : UITableViewCell
@interface AccountingDataViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) ButtonControl * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<FFFContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<CompartmentDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)celluloidUser:(id<MemberProtocol>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)cell:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)showWith:(id<MemberProtocol>)member;

//: @end
@end
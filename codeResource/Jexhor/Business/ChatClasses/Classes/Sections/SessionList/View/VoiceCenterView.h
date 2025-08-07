// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListCell.h
//  NIMDemo
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFAvatarImageView;
@class ImageView;
//: @class NIMRecentSession;
@class NIMRecentSession;
//: @class NTESBadgeView;
@class ModelMainView;

//: @interface FFFSessionListCell : UITableViewCell
@interface VoiceCenterView : UITableViewCell

//: @property (nonatomic,strong) FFFAvatarImageView *avatarImageView;
@property (nonatomic,strong) ImageView *avatarImageView;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *messageLabel;
@property (nonatomic,strong) UILabel *messageLabel;

//: @property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic,strong) UILabel *timeLabel;

//: @property (nonatomic,strong) NTESBadgeView *badgeView;
@property (nonatomic,strong) ModelMainView *badgeView;

//: @property (nonatomic,strong) UIImageView *disnodistrubImg;
@property (nonatomic,strong) UIImageView *disnodistrubImg;

//: - (void)refresh:(NIMRecentSession*)recent;
- (void)roundnessTeam:(NIMRecentSession*)recent;

//: @end
@end
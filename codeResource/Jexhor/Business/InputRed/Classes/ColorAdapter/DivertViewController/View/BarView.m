
#import <Foundation/Foundation.h>

@interface BrokerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation BrokerData

+ (instancetype)sharedInstance {
    static BrokerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BrokerDataToCache:(Byte *)data {
    int bottom = data[0];
    Byte territory = data[1];
    int atEvidence = data[2];
    for (int i = atEvidence; i < atEvidence + bottom; i++) {
        int value = data[i] - territory;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[atEvidence + bottom] = 0;
    return data + atEvidence;
}

- (NSString *)StringFromBrokerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BrokerDataToCache:data]];
}

//: #9B9EA8
- (NSString *)mainStatementData {
    /* static */ NSString *mainStatementData = nil;
    if (!mainStatementData) {
        Byte value[] = {7, 27, 9, 191, 24, 177, 114, 210, 123, 62, 84, 93, 84, 96, 92, 83, 222};
        mainStatementData = [self StringFromBrokerData:value];
    }
    return mainStatementData;
}

//: ic_nodistrub_g
- (NSString *)mLendData {
    /* static */ NSString *mLendData = nil;
    if (!mLendData) {
        Byte value[] = {14, 71, 4, 80, 176, 170, 166, 181, 182, 171, 176, 186, 187, 185, 188, 169, 166, 174, 154};
        mLendData = [self StringFromBrokerData:value];
    }
    return mLendData;
}

//: #333333
- (NSString *)showSchoolData {
    /* static */ NSString *showSchoolData = nil;
    if (!showSchoolData) {
        Byte value[] = {7, 1, 5, 60, 131, 36, 52, 52, 52, 52, 52, 52, 234};
        showSchoolData = [self StringFromBrokerData:value];
    }
    return showSchoolData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListCell.m
//  NIMDemo
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionListCell.h"
#import "BarView.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"
//: #import "NTESBadgeView.h"
#import "GroupDiscussionView.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"

//: @implementation WorkSessionListCell
@implementation BarView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.layer.borderWidth = 1;
        self.layer.borderWidth = 1;
        //: self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
        //: self.layer.masksToBounds = YES;
        self.layer.masksToBounds = YES;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,1);
        self.layer.shadowOffset = CGSizeMake(0,1);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 3;
        self.layer.shadowRadius = 3;

        //: _avatarImageView = [[WorkAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatarImageView = [[ButtonControl alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self.contentView addSubview:_avatarImageView];
        [self.contentView addSubview:_avatarImageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.backgroundColor = [UIColor clearColor];
        _nameLabel.backgroundColor = [UIColor clearColor];
        //: _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        //: _nameLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _nameLabel.textColor = [UIColor ground:[[BrokerData sharedInstance] showSchoolData]];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];

        //: _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.backgroundColor = [UIColor clearColor];
        //: _messageLabel.font = [UIFont systemFontOfSize:14.f];
        _messageLabel.font = [UIFont systemFontOfSize:14.f];
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _messageLabel.textColor = [UIColor ground:[[BrokerData sharedInstance] mainStatementData]];
        //: [self.contentView addSubview:_messageLabel];
        [self.contentView addSubview:_messageLabel];

        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.backgroundColor = [UIColor clearColor];
        _timeLabel.backgroundColor = [UIColor clearColor];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _timeLabel.textColor = [UIColor ground:[[BrokerData sharedInstance] mainStatementData]];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];

        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [GroupDiscussionView tingOf:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];

        //: _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: _disnodistrubImg.image = [UIImage imageNamed:@"ic_nodistrub_g"];
        _disnodistrubImg.image = [UIImage imageNamed:[[BrokerData sharedInstance] mLendData]];
        //: [self.contentView addSubview:_disnodistrubImg];
        [self.contentView addSubview:_disnodistrubImg];

    }
    //: return self;
    return self;
}




//: - (void)refresh:(NIMRecentSession*)recent{
- (void)outTing:(NIMRecentSession*)recent{
    //: self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    //: self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
    self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
//    if (recent.unreadCount) {
//        self.badgeView.hidden = NO;
//        self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
//        self.disnodistrubImg.hidden = YES;
//    }else{
//        self.badgeView.hidden = YES;

        //: WorkKitInfo *info = nil;
        ConfirmationInfo *info = nil;
        //: if (recent.session.sessionType == NIMSessionTypeTeam) {
        if (recent.session.sessionType == NIMSessionTypeTeam) {
            //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
            info = [[MessageContent secretResolution] info:recent.session.sessionId comment:nil];
            //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            //: BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
            BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;
            //: if (recent.unreadCount && ishidden) {
            if (recent.unreadCount && ishidden) {
                //: self.badgeView.hidden = NO;
                self.badgeView.hidden = NO;
                //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                //: self.disnodistrubImg.hidden = YES;
                self.disnodistrubImg.hidden = YES;
            //: }else{
            }else{
                //: self.badgeView.hidden = YES;
                self.badgeView.hidden = YES;
            }

        //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        } else if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
            RangeOption *option = [[RangeOption alloc] init];
            //: option.session = recent.session;
            option.session = recent.session;
            //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
            info = [[MessageContent secretResolution] recent:recent.session.sessionId blue:option];

            //: BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
            BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;

                //: if (recent.unreadCount && ishidden) {
                if (recent.unreadCount && ishidden) {
                    //: self.badgeView.hidden = NO;
                    self.badgeView.hidden = NO;
                    //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    //: self.disnodistrubImg.hidden = YES;
                    self.disnodistrubImg.hidden = YES;
                //: }else{
                }else{
                    //: self.badgeView.hidden = YES;
                    self.badgeView.hidden = YES;
                }


        }
//    }





}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //Session List
    //: NSInteger sessionListAvatarLeft = 15;
    NSInteger sessionListAvatarLeft = 15;
    //: NSInteger sessionListNameTop = 15;
    NSInteger sessionListNameTop = 15;
    //: NSInteger sessionListNameLeftToAvatar = 15;
    NSInteger sessionListNameLeftToAvatar = 15;
    //: NSInteger sessionListMessageLeftToAvatar = 15;
    NSInteger sessionListMessageLeftToAvatar = 15;
    //: NSInteger sessionListMessageBottom = 15;
    NSInteger sessionListMessageBottom = 15;
    //: NSInteger sessionListTimeRight = 15;
    NSInteger sessionListTimeRight = 15;
    //: NSInteger sessionListTimeTop = 15;
    NSInteger sessionListTimeTop = 15;
    //: NSInteger sessionBadgeTimeBottom = 15;
    NSInteger sessionBadgeTimeBottom = 15;
    //: NSInteger sessionBadgeTimeRight = 15;
    NSInteger sessionBadgeTimeRight = 15;

    //: _avatarImageView.nim_left = sessionListAvatarLeft;
    _avatarImageView.nim_left = sessionListAvatarLeft;
    //: _avatarImageView.nim_centerY = self.nim_height * .5f;
    _avatarImageView.nim_centerY = self.nim_height * .5f;
    //: _nameLabel.nim_top = sessionListNameTop;
    _nameLabel.nim_top = sessionListNameTop;
    //: _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    //: _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    //: _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    //: _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    //: _timeLabel.nim_top = sessionListTimeTop;
    _timeLabel.nim_top = sessionListTimeTop;
    //: _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

    //: _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

}

//: @end
@end

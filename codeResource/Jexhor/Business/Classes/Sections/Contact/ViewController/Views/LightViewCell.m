
#import <Foundation/Foundation.h>

@interface LengthData : NSObject

@end

@implementation LengthData

+ (Byte *)LengthDataToCache:(Byte *)data {
    int smallness = data[0];
    int full = data[1];
    for (int i = 0; i < smallness / 2; i++) {
        int begin = full + i;
        int end = full + smallness - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[full + smallness] = 0;
    return data + full;
}

+ (NSString *)StringFromLengthData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LengthDataToCache:data]];
}  

//: head_default
+ (NSString *)app_changeValue {
    /* static */ NSString *app_changeValue = nil;
    if (!app_changeValue) {
        Byte value[] = {12, 2, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 120};
        app_changeValue = [self StringFromLengthData:value];
    }
    return app_changeValue;
}

//: #2C3042
+ (NSString *)appPressValue {
    /* static */ NSString *appPressValue = nil;
    if (!appPressValue) {
        Byte value[] = {7, 3, 54, 50, 52, 48, 51, 67, 50, 35, 131};
        appPressValue = [self StringFromLengthData:value];
    }
    return appPressValue;
}

//: f6f6f6
+ (NSString *)noti_readData {
    /* static */ NSString *noti_readData = nil;
    if (!noti_readData) {
        Byte value[] = {6, 8, 13, 121, 253, 245, 130, 80, 54, 102, 54, 102, 54, 102, 67};
        noti_readData = [self StringFromLengthData:value];
    }
    return noti_readData;
}

//: btn_message
+ (NSString *)dreamInfoValue {
    /* static */ NSString *dreamInfoValue = nil;
    if (!dreamInfoValue) {
        Byte value[] = {11, 11, 162, 110, 187, 232, 22, 28, 35, 165, 189, 101, 103, 97, 115, 115, 101, 109, 95, 110, 116, 98, 62};
        dreamInfoValue = [self StringFromLengthData:value];
    }
    return dreamInfoValue;
}

//: head_default_group
+ (NSString *)mDisableData {
    /* static */ NSString *mDisableData = nil;
    if (!mDisableData) {
        Byte value[] = {18, 7, 214, 85, 32, 223, 130, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 228};
        mDisableData = [self StringFromLengthData:value];
    }
    return mDisableData;
}

//: btn_video
+ (NSString *)user_oldContent {
    /* static */ NSString *user_oldContent = nil;
    if (!user_oldContent) {
        Byte value[] = {9, 5, 191, 128, 207, 111, 101, 100, 105, 118, 95, 110, 116, 98, 128};
        user_oldContent = [self StringFromLengthData:value];
    }
    return user_oldContent;
}

//: _UITableViewCellSeparatorView
+ (NSString *)user_bubbleName {
    /* static */ NSString *user_bubbleName = nil;
    if (!user_bubbleName) {
        Byte value[] = {29, 11, 41, 224, 89, 147, 91, 31, 173, 10, 116, 119, 101, 105, 86, 114, 111, 116, 97, 114, 97, 112, 101, 83, 108, 108, 101, 67, 119, 101, 105, 86, 101, 108, 98, 97, 84, 73, 85, 95, 237};
        user_bubbleName = [self StringFromLengthData:value];
    }
    return user_bubbleName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LightViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFriendListTableViewCell.h"
#import "LightViewCell.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"

//: @implementation NTESFriendListTableViewCell
@implementation LightViewCell


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: [self initSubviews];
        [self initTime];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)messageIcon:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESFriendListTableViewCell";
    static NSString *identifier = @"LightViewCell";
    //: NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    LightViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[LightViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initTime {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor ground:[LengthData noti_readData]];
    //: bgView.layer.cornerRadius = 12;
    bgView.layer.cornerRadius = 12;
    //: [self.contentView addSubview:bgView];
    [self.contentView addSubview:bgView];

    //: [bgView addSubview:self.iconImageView];
    [bgView addSubview:self.iconImageView];
    //: [bgView addSubview:self.titleLabel];
    [bgView addSubview:self.titleLabel];

    //: self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    //: self.titleLabel.frame = CGRectMake(70, 0, 230, 56);
    self.titleLabel.frame = CGRectMake(70, 0, 230, 56);

//    self.messageBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
//    self.videoBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);

}


//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)bottom:(id<MemberProtocol>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.showName;
    //: self.memberId = [member memberId];
    self.memberId = [member memberId];
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:self.memberId blue:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[LengthData app_changeValue]]];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)refresh:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] info:self.memberId comment:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[LengthData mDisableData]]];
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)key:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)withHeight:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([LengthData user_bubbleName]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)absoluteSpaceButton {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(sizeButton:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate sizeButton:self.memberId];
    }
}


//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 20;
        _iconImageView.layer.cornerRadius = 20;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor ground:[LengthData appPressValue]];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn addTarget:self action:@selector(absoluteSpaceButton) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:[LengthData dreamInfoValue]] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}

//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:[LengthData user_oldContent]] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}


//: @end
@end

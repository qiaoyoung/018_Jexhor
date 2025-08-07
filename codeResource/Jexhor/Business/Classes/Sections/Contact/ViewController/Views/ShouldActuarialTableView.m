
#import <Foundation/Foundation.h>

typedef struct {
    Byte marginImage;
    Byte *station;
    unsigned int messageInput;
	int iconEqualCover;
	int to;
} StructZoologyData;

@interface ZoologyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ZoologyData

+ (instancetype)sharedInstance {
    static ZoologyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ZoologyDataToByte:(StructZoologyData *)data {
    for (int i = 0; i < data->messageInput; i++) {
        data->station[i] ^= data->marginImage;
    }
    data->station[data->messageInput] = 0;
	if (data->messageInput >= 2) {
		data->iconEqualCover = data->station[0];
		data->to = data->station[1];
	}
    return data->station;
}

- (NSString *)StringFromZoologyData:(StructZoologyData *)data {
    return [NSString stringWithUTF8String:(char *)[self ZoologyDataToByte:data]];
}

//: head_default_group
- (NSString *)m_messageEmotionUrl {
    /* static */ NSString *m_messageEmotionUrl = nil;
    if (!m_messageEmotionUrl) {
        StructZoologyData value = (StructZoologyData){187, (Byte []){211, 222, 218, 223, 228, 223, 222, 221, 218, 206, 215, 207, 228, 220, 201, 212, 206, 203, 204}, 18, 120, 157};
        m_messageEmotionUrl = [self StringFromZoologyData:&value];
    }
    return m_messageEmotionUrl;
}

//: btn_message
- (NSString *)noti_withData {
    /* static */ NSString *noti_withData = nil;
    if (!noti_withData) {
        StructZoologyData value = (StructZoologyData){32, (Byte []){66, 84, 78, 127, 77, 69, 83, 83, 65, 71, 69, 40}, 11, 217, 6};
        noti_withData = [self StringFromZoologyData:&value];
    }
    return noti_withData;
}

//: btn_video
- (NSString *)dreamCellStyleId {
    /* static */ NSString *dreamCellStyleId = nil;
    if (!dreamCellStyleId) {
        StructZoologyData value = (StructZoologyData){95, (Byte []){61, 43, 49, 0, 41, 54, 59, 58, 48, 112}, 9, 118, 134};
        dreamCellStyleId = [self StringFromZoologyData:&value];
    }
    return dreamCellStyleId;
}

//: _UITableViewCellSeparatorView
- (NSString *)show_buttonBlueViewContent {
    /* static */ NSString *show_buttonBlueViewContent = nil;
    if (!show_buttonBlueViewContent) {
        StructZoologyData value = (StructZoologyData){242, (Byte []){173, 167, 187, 166, 147, 144, 158, 151, 164, 155, 151, 133, 177, 151, 158, 158, 161, 151, 130, 147, 128, 147, 134, 157, 128, 164, 155, 151, 133, 59}, 29, 130, 179};
        show_buttonBlueViewContent = [self StringFromZoologyData:&value];
    }
    return show_buttonBlueViewContent;
}

//: head_default
- (NSString *)k_pathFormat {
    /* static */ NSString *k_pathFormat = nil;
    if (!k_pathFormat) {
        StructZoologyData value = (StructZoologyData){22, (Byte []){126, 115, 119, 114, 73, 114, 115, 112, 119, 99, 122, 98, 28}, 12, 9, 255};
        k_pathFormat = [self StringFromZoologyData:&value];
    }
    return k_pathFormat;
}

//: f6f6f6
- (NSString *)showTitleData {
    /* static */ NSString *showTitleData = nil;
    if (!showTitleData) {
        StructZoologyData value = (StructZoologyData){204, (Byte []){170, 250, 170, 250, 170, 250, 154}, 6, 220, 68};
        showTitleData = [self StringFromZoologyData:&value];
    }
    return showTitleData;
}

//: #2C3042
- (NSString *)kViewTeamIdent {
    /* static */ NSString *kViewTeamIdent = nil;
    if (!kViewTeamIdent) {
        StructZoologyData value = (StructZoologyData){180, (Byte []){151, 134, 247, 135, 132, 128, 134, 29}, 7, 207, 206};
        kViewTeamIdent = [self StringFromZoologyData:&value];
    }
    return kViewTeamIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldActuarialTableView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFriendListTableViewCell.h"
#import "ShouldActuarialTableView.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "FFFAvatarImageView.h"
#import "ImageView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"

//: @implementation NTESFriendListTableViewCell
@implementation ShouldActuarialTableView


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
        [self initShow];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)color:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESFriendListTableViewCell";
    static NSString *identifier = @"ShouldActuarialTableView";
    //: NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ShouldActuarialTableView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ShouldActuarialTableView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initShow {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor user:[[ZoologyData sharedInstance] showTitleData]];
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
- (void)project:(id<ToolTextEnablely>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.fullKey;
    //: self.memberId = [member memberId];
    self.memberId = [member should];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:self.memberId item:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[[ZoologyData sharedInstance] k_pathFormat]]];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)to:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    DataTeam *info = [[Secret highlight] show:self.memberId corner:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[[ZoologyData sharedInstance] m_messageEmotionUrl]]];
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)customItem:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)nameHeight:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([[ZoologyData sharedInstance] show_buttonBlueViewContent]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)compartmentButton {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(languageButton:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate languageButton:self.memberId];
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
        _titleLabel.textColor = [UIColor user:[[ZoologyData sharedInstance] kViewTeamIdent]];
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
        [_messageBtn addTarget:self action:@selector(compartmentButton) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:[[ZoologyData sharedInstance] noti_withData]] forState:UIControlStateNormal];
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
        [_videoBtn setImage:[UIImage imageNamed:[[ZoologyData sharedInstance] dreamCellStyleId]] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}


//: @end
@end
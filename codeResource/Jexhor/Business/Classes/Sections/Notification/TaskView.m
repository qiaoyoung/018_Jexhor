
#import <Foundation/Foundation.h>

typedef struct {
    Byte crop;
    Byte *cypher;
    unsigned int investor;
	int heavily;
	int resemble;
	int userWar;
} StructTemperatureData;

@interface TemperatureData : NSObject

@end

@implementation TemperatureData

+ (Byte *)TemperatureDataToByte:(StructTemperatureData *)data {
    for (int i = 0; i < data->investor; i++) {
        data->cypher[i] ^= data->crop;
    }
    data->cypher[data->investor] = 0;
	if (data->investor >= 3) {
		data->heavily = data->cypher[0];
		data->resemble = data->cypher[1];
		data->userWar = data->cypher[2];
	}
    return data->cypher;
}

+ (NSString *)StringFromTemperatureData:(StructTemperatureData *)data {
    return [NSString stringWithUTF8String:(char *)[self TemperatureDataToByte:data]];
}

//: ic_btn_disaccept
+ (NSString *)appViewMessage {
    /* static */ NSString *appViewMessage = nil;
    if (!appViewMessage) {
        StructTemperatureData value = (StructTemperatureData){80, (Byte []){57, 51, 15, 50, 36, 62, 15, 52, 57, 35, 49, 51, 51, 53, 32, 36, 235}, 16, 192, 54, 67};
        appViewMessage = [self StringFromTemperatureData:&value];
    }
    return appViewMessage;
}

//: message_helper_already_ok
+ (NSString *)k_contentText {
    /* static */ NSString *k_contentText = nil;
    if (!k_contentText) {
        StructTemperatureData value = (StructTemperatureData){99, (Byte []){14, 6, 16, 16, 2, 4, 6, 60, 11, 6, 15, 19, 6, 17, 60, 2, 15, 17, 6, 2, 7, 26, 60, 12, 8, 182}, 25, 247, 84, 148};
        k_contentText = [self StringFromTemperatureData:&value];
    }
    return k_contentText;
}

//: is_read
+ (NSString *)main_imageStr {
    /* static */ NSString *main_imageStr = nil;
    if (!main_imageStr) {
        StructTemperatureData value = (StructTemperatureData){49, (Byte []){88, 66, 110, 67, 84, 80, 85, 55}, 7, 195, 136, 13};
        main_imageStr = [self StringFromTemperatureData:&value];
    }
    return main_imageStr;
}

//: 未知请求
+ (NSString *)user_downName {
    /* static */ NSString *user_downName = nil;
    if (!user_downName) {
        StructTemperatureData value = (StructTemperatureData){205, (Byte []){43, 81, 103, 42, 82, 104, 37, 98, 122, 43, 124, 79, 7}, 12, 155, 182, 191};
        user_downName = [self StringFromTemperatureData:&value];
    }
    return user_downName;
}

//: message_helper_refuse_you
+ (NSString *)mStorageMessage {
    /* static */ NSString *mStorageMessage = nil;
    if (!mStorageMessage) {
        StructTemperatureData value = (StructTemperatureData){209, (Byte []){188, 180, 162, 162, 176, 182, 180, 142, 185, 180, 189, 161, 180, 163, 142, 163, 180, 183, 164, 162, 180, 142, 168, 190, 164, 5}, 25, 102, 197, 161};
        mStorageMessage = [self StringFromTemperatureData:&value];
    }
    return mStorageMessage;
}

//: message_helper_apply_to_group
+ (NSString *)kCellPath {
    /* static */ NSString *kCellPath = nil;
    if (!kCellPath) {
        StructTemperatureData value = (StructTemperatureData){27, (Byte []){118, 126, 104, 104, 122, 124, 126, 68, 115, 126, 119, 107, 126, 105, 68, 122, 107, 107, 119, 98, 68, 111, 116, 68, 124, 105, 116, 110, 107, 186}, 29, 43, 26, 70};
        kCellPath = [self StringFromTemperatureData:&value];
    }
    return kCellPath;
}

//: request_add_you_as_a_friend
+ (NSString *)mResembleDateName {
    /* static */ NSString *mResembleDateName = nil;
    if (!mResembleDateName) {
        StructTemperatureData value = (StructTemperatureData){151, (Byte []){229, 242, 230, 226, 242, 228, 227, 200, 246, 243, 243, 200, 238, 248, 226, 200, 246, 228, 200, 246, 200, 241, 229, 254, 242, 249, 243, 136}, 27, 78, 137, 57};
        mResembleDateName = [self StringFromTemperatureData:&value];
    }
    return mResembleDateName;
}

//: #F6F6F6
+ (NSString *)app_buttonCenterUrl {
    /* static */ NSString *app_buttonCenterUrl = nil;
    if (!app_buttonCenterUrl) {
        StructTemperatureData value = (StructTemperatureData){20, (Byte []){55, 82, 34, 82, 34, 82, 34, 252}, 7, 82, 162, 16};
        app_buttonCenterUrl = [self StringFromTemperatureData:&value];
    }
    return app_buttonCenterUrl;
}

//: to_deny_entry
+ (NSString *)mDownRoughFormat {
    /* static */ NSString *mDownRoughFormat = nil;
    if (!mDownRoughFormat) {
        StructTemperatureData value = (StructTemperatureData){255, (Byte []){139, 144, 160, 155, 154, 145, 134, 160, 154, 145, 139, 141, 134, 123}, 13, 142, 1, 162};
        mDownRoughFormat = [self StringFromTemperatureData:&value];
    }
    return mDownRoughFormat;
}

//: message_helper_invite
+ (NSString *)dreamShowSessionUrl {
    /* static */ NSString *dreamShowSessionUrl = nil;
    if (!dreamShowSessionUrl) {
        StructTemperatureData value = (StructTemperatureData){242, (Byte []){159, 151, 129, 129, 147, 149, 151, 173, 154, 151, 158, 130, 151, 128, 173, 155, 156, 132, 155, 134, 151, 144}, 21, 59, 113, 167};
        dreamShowSessionUrl = [self StringFromTemperatureData:&value];
    }
    return dreamShowSessionUrl;
}

//: message_helper_allow_you_apply
+ (NSString *)user_motData {
    /* static */ NSString *user_motData = nil;
    if (!user_motData) {
        StructTemperatureData value = (StructTemperatureData){81, (Byte []){60, 52, 34, 34, 48, 54, 52, 14, 57, 52, 61, 33, 52, 35, 14, 48, 61, 61, 62, 38, 14, 40, 62, 36, 14, 48, 33, 33, 61, 40, 93}, 30, 1, 139, 153};
        user_motData = [self StringFromTemperatureData:&value];
    }
    return user_motData;
}

//: apply_join_supergroup
+ (NSString *)mTemperatureText {
    /* static */ NSString *mTemperatureText = nil;
    if (!mTemperatureText) {
        StructTemperatureData value = (StructTemperatureData){71, (Byte []){38, 55, 55, 43, 62, 24, 45, 40, 46, 41, 24, 52, 50, 55, 34, 53, 32, 53, 40, 50, 55, 248}, 21, 162, 152, 206};
        mTemperatureText = [self StringFromTemperatureData:&value];
    }
    return mTemperatureText;
}

//: #999999
+ (NSString *)app_showMsg {
    /* static */ NSString *app_showMsg = nil;
    if (!app_showMsg) {
        StructTemperatureData value = (StructTemperatureData){30, (Byte []){61, 39, 39, 39, 39, 39, 39, 31}, 7, 102, 154, 56};
        app_showMsg = [self StringFromTemperatureData:&value];
    }
    return app_showMsg;
}

//: message_helper_already_add
+ (NSString *)k_affairStr {
    /* static */ NSString *k_affairStr = nil;
    if (!k_affairStr) {
        StructTemperatureData value = (StructTemperatureData){4, (Byte []){105, 97, 119, 119, 101, 99, 97, 91, 108, 97, 104, 116, 97, 118, 91, 101, 104, 118, 97, 101, 96, 125, 91, 101, 96, 96, 123}, 26, 35, 137, 60};
        k_affairStr = [self StringFromTemperatureData:&value];
    }
    return k_affairStr;
}

//: message_helper_refuse_you_apply
+ (NSString *)main_penaltyCancelMsg {
    /* static */ NSString *main_penaltyCancelMsg = nil;
    if (!main_penaltyCancelMsg) {
        StructTemperatureData value = (StructTemperatureData){196, (Byte []){169, 161, 183, 183, 165, 163, 161, 155, 172, 161, 168, 180, 161, 182, 155, 182, 161, 162, 177, 183, 161, 155, 189, 171, 177, 155, 165, 180, 180, 168, 189, 134}, 31, 105, 7, 171};
        main_penaltyCancelMsg = [self StringFromTemperatureData:&value];
    }
    return main_penaltyCancelMsg;
}

//: %@ attach:%@
+ (NSString *)mWakeFormat {
    /* static */ NSString *mWakeFormat = nil;
    if (!mWakeFormat) {
        StructTemperatureData value = (StructTemperatureData){139, (Byte []){174, 203, 171, 234, 255, 255, 234, 232, 227, 177, 174, 203, 23}, 12, 34, 119, 247};
        mWakeFormat = [self StringFromTemperatureData:&value];
    }
    return mWakeFormat;
}

//: #05D481
+ (NSString *)noti_sessionStr {
    /* static */ NSString *noti_sessionStr = nil;
    if (!noti_sessionStr) {
        StructTemperatureData value = (StructTemperatureData){114, (Byte []){81, 66, 71, 54, 70, 74, 67, 151}, 7, 242, 115, 215};
        noti_sessionStr = [self StringFromTemperatureData:&value];
    }
    return noti_sessionStr;
}

//: large_group
+ (NSString *)dreamDeadItMessage {
    /* static */ NSString *dreamDeadItMessage = nil;
    if (!dreamDeadItMessage) {
        StructTemperatureData value = (StructTemperatureData){66, (Byte []){46, 35, 48, 37, 39, 29, 37, 48, 45, 55, 50, 175}, 11, 24, 10, 19};
        dreamDeadItMessage = [self StringFromTemperatureData:&value];
    }
    return dreamDeadItMessage;
}

//: invite_you_join_us
+ (NSString *)userTingFormat {
    /* static */ NSString *userTingFormat = nil;
    if (!userTingFormat) {
        StructTemperatureData value = (StructTemperatureData){184, (Byte []){209, 214, 206, 209, 204, 221, 231, 193, 215, 205, 231, 210, 215, 209, 214, 231, 205, 203, 97}, 18, 246, 223, 186};
        userTingFormat = [self StringFromTemperatureData:&value];
    }
    return userTingFormat;
}

//: ic_btn_accept
+ (NSString *)mainLeaveCellId {
    /* static */ NSString *mainLeaveCellId = nil;
    if (!mainLeaveCellId) {
        StructTemperatureData value = (StructTemperatureData){191, (Byte []){214, 220, 224, 221, 203, 209, 224, 222, 220, 220, 218, 207, 203, 101}, 13, 15, 38, 254};
        mainLeaveCellId = [self StringFromTemperatureData:&value];
    }
    return mainLeaveCellId;
}

//: 000000
+ (NSString *)appBornName {
    /* static */ NSString *appBornName = nil;
    if (!appBornName) {
        StructTemperatureData value = (StructTemperatureData){99, (Byte []){83, 83, 83, 83, 83, 83, 154}, 6, 95, 152, 88};
        appBornName = [self StringFromTemperatureData:&value];
    }
    return appBornName;
}

//: message_helper_already_no
+ (NSString *)mTingOnIconMsg {
    /* static */ NSString *mTingOnIconMsg = nil;
    if (!mTingOnIconMsg) {
        StructTemperatureData value = (StructTemperatureData){141, (Byte []){224, 232, 254, 254, 236, 234, 232, 210, 229, 232, 225, 253, 232, 255, 210, 236, 225, 255, 232, 236, 233, 244, 210, 227, 226, 147}, 25, 61, 190, 186};
        mTingOnIconMsg = [self StringFromTemperatureData:&value];
    }
    return mTingOnIconMsg;
}

//: message_helper_already_time
+ (NSString *)noti_theaterId {
    /* static */ NSString *noti_theaterId = nil;
    if (!noti_theaterId) {
        StructTemperatureData value = (StructTemperatureData){251, (Byte []){150, 158, 136, 136, 154, 156, 158, 164, 147, 158, 151, 139, 158, 137, 164, 154, 151, 137, 158, 154, 159, 130, 164, 143, 146, 150, 158, 4}, 27, 31, 157, 103};
        noti_theaterId = [self StringFromTemperatureData:&value];
    }
    return noti_theaterId;
}

//: message_helper_refuse_group
+ (NSString *)showPathTitle {
    /* static */ NSString *showPathTitle = nil;
    if (!showPathTitle) {
        StructTemperatureData value = (StructTemperatureData){111, (Byte []){2, 10, 28, 28, 14, 8, 10, 48, 7, 10, 3, 31, 10, 29, 48, 29, 10, 9, 26, 28, 10, 48, 8, 29, 0, 26, 31, 73}, 27, 159, 216, 158};
        showPathTitle = [self StringFromTemperatureData:&value];
    }
    return showPathTitle;
}

//: invite_you_group
+ (NSString *)app_showVersionData {
    /* static */ NSString *app_showVersionData = nil;
    if (!app_showVersionData) {
        StructTemperatureData value = (StructTemperatureData){151, (Byte []){254, 249, 225, 254, 227, 242, 200, 238, 248, 226, 200, 240, 229, 248, 226, 231, 177}, 16, 13, 77, 82};
        app_showVersionData = [self StringFromTemperatureData:&value];
    }
    return app_showVersionData;
}

//: rejected_group_invitation
+ (NSString *)dream_saleValue {
    /* static */ NSString *dream_saleValue = nil;
    if (!dream_saleValue) {
        StructTemperatureData value = (StructTemperatureData){64, (Byte []){50, 37, 42, 37, 35, 52, 37, 36, 31, 39, 50, 47, 53, 48, 31, 41, 46, 54, 41, 52, 33, 52, 41, 47, 46, 147}, 25, 113, 138, 13};
        dream_saleValue = [self StringFromTemperatureData:&value];
    }
    return dream_saleValue;
}

//: contact_fragment_group
+ (NSString *)dreamMageImageFormat {
    /* static */ NSString *dreamMageImageFormat = nil;
    if (!dreamMageImageFormat) {
        StructTemperatureData value = (StructTemperatureData){19, (Byte []){112, 124, 125, 103, 114, 112, 103, 76, 117, 97, 114, 116, 126, 118, 125, 103, 76, 116, 97, 124, 102, 99, 15}, 22, 4, 218, 146};
        dreamMageImageFormat = [self StringFromTemperatureData:&value];
    }
    return dreamMageImageFormat;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TaskView.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemNotificationCell.h"
#import "TaskView.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"

//: @interface NTESSystemNotificationCell ()
@interface TaskView ()

//: @property (nonatomic,strong) NIMSystemNotification *notification;
@property (nonatomic,strong) NIMSystemNotification *notification;
//@property (nonatomic,strong) IBOutlet ImageView *avatarImageView;
//: @end
@end

//: @implementation NTESSystemNotificationCell
@implementation TaskView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarImageView];
        [self.contentView addSubview:self.avatarImageView];
        //: [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.titleLabel];
        //: [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.timeLabel];
        //: [self.contentView addSubview:self.messageLabel];
        [self.contentView addSubview:self.messageLabel];
        //: [self.contentView addSubview:self.handleInfoLabel];
        [self.contentView addSubview:self.handleInfoLabel];
        //: [self.contentView addSubview:self.acceptButton];
        [self.contentView addSubview:self.acceptButton];
        //: [self.contentView addSubview:self.refuseButton];
        [self.contentView addSubview:self.refuseButton];
//        [self.contentView addSubview:self.handleInfoLabel];

        //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        self.backgroundColor = [UIColor user:[TemperatureData app_buttonCenterUrl]];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
    }
    //: return self;
    return self;
}

//: - (UIImageView *)avatarImageView {
- (UIImageView *)avatarImageView {
    //: if (!_avatarImageView) {
    if (!_avatarImageView) {
        //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        //: _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        //: _avatarImageView.layer.cornerRadius = 25;
        _avatarImageView.layer.cornerRadius = 25;
        //: _avatarImageView.layer.masksToBounds = YES;
        _avatarImageView.layer.masksToBounds = YES;

//        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//        [_avatarImageView addGestureRecognizer:panGesture];
    }
    //: return _avatarImageView;
    return _avatarImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"000000"];
        _titleLabel.textColor = [UIColor user:[TemperatureData appBornName]];
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

//: - (UILabel *)timeLabel {
- (UILabel *)timeLabel {
    //: if (!_timeLabel) {
    if (!_timeLabel) {
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _timeLabel.textColor = [UIColor user:[TemperatureData app_showMsg]];
        //: _timeLabel.textAlignment = NSTextAlignmentLeft;
        _timeLabel.textAlignment = NSTextAlignmentLeft;
        //: _timeLabel.numberOfLines = 1;
        _timeLabel.numberOfLines = 1;
        //: _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _timeLabel;
    return _timeLabel;
}

//: - (YYLabel *)messageLabel {
- (YYLabel *)messageLabel {
    //: if (!_messageLabel) {
    if (!_messageLabel) {
        //: _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        //: _messageLabel.font = [UIFont systemFontOfSize:12.f];
        _messageLabel.font = [UIFont systemFontOfSize:12.f];
//        _messageLabel.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5);
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _messageLabel.textColor = [UIColor user:[TemperatureData app_showMsg]];
        //: _messageLabel.textAlignment = NSTextAlignmentLeft;
        _messageLabel.textAlignment = NSTextAlignmentLeft;
//        _messageLabel.numberOfLines = 3;
//        _messageLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//        _messageLabel.layer.cornerRadius = 6;
//        _messageLabel.layer.borderColor = TextColor_Subtitle.CGColor;
//        _messageLabel.layer.borderWidth = 1.f/[UIScreen mainScreen].scale;
//        _messageLabel.layer.masksToBounds = YES;
    }
    //: return _messageLabel;
    return _messageLabel;
}

//: - (UILabel *)handleInfoLabel {
- (UILabel *)handleInfoLabel {
    //: if (!_handleInfoLabel) {
    if (!_handleInfoLabel) {
        //: _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        //: _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        //: _handleInfoLabel.centerY = self.avatarImageView.centerY;
        _handleInfoLabel.centerY = self.avatarImageView.centerY;
        //: _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        //: _handleInfoLabel.textColor = [UIColor colorWithHexString:@"#05D481"];
        _handleInfoLabel.textColor = [UIColor user:[TemperatureData noti_sessionStr]];
        //: _handleInfoLabel.textAlignment = NSTextAlignmentRight;
        _handleInfoLabel.textAlignment = NSTextAlignmentRight;
//        _handleInfoLabel.numberOfLines = 1;
//        _handleInfoLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _handleInfoLabel;
    return _handleInfoLabel;
}

//: - (UIButton *)acceptButton {
- (UIButton *)acceptButton {
    //: if (!_acceptButton) {
    if (!_acceptButton) {
        //: _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
        _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
//        _acceptButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_acceptButton setTitle:LangKey(@"request_add_accept") forState:(UIControlStateNormal)];
        //: [_acceptButton addTarget:self action:@selector(onAcceptBtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_acceptButton addTarget:self action:@selector(messageRange) forControlEvents:(UIControlEventTouchUpInside)];
//        [_acceptButton setTitleColor:[KEKESkinColorManager shareInstance].skinColor forState:(UIControlStateNormal)];
//        [_acceptButton setBackgroundColor:RGB_COLOR_String(@"#fffPush")];
        //: [_acceptButton setImage:[UIImage imageNamed:@"ic_btn_accept"] forState:UIControlStateNormal];
        [_acceptButton setImage:[UIImage imageNamed:[TemperatureData mainLeaveCellId]] forState:UIControlStateNormal];
//        _acceptButton.layer.cornerRadius = 16;
//        _acceptButton.layer.masksToBounds = YES;
    }
    //: return _acceptButton;
    return _acceptButton;
}

//: - (UIButton *)refuseButton {
- (UIButton *)refuseButton {
    //: if (!_refuseButton) {
    if (!_refuseButton) {
        //: _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        //: _refuseButton.right = self.acceptButton.left - 10;
        _refuseButton.right = self.acceptButton.left - 10;
        //: _refuseButton.top = self.acceptButton.top;
        _refuseButton.top = self.acceptButton.top;
//        _refuseButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_refuseButton setTitle:LangKey(@"request_add_reject") forState:(UIControlStateNormal)];
        //: [_refuseButton addTarget:self action:@selector(onRefusebtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_refuseButton addTarget:self action:@selector(beginLength) forControlEvents:(UIControlEventTouchUpInside)];
//        [_refuseButton setTitleColor:kTextColor_2c3042 forState:(UIControlStateNormal)];
//        [_refuseButton setBackgroundColor:RGB_COLOR_String(@"#fffPush")];
        //: [_refuseButton setImage:[UIImage imageNamed:@"ic_btn_disaccept"] forState:UIControlStateNormal];
        [_refuseButton setImage:[UIImage imageNamed:[TemperatureData appViewMessage]] forState:UIControlStateNormal];
//        _refuseButton.layer.cornerRadius = 16;
//        _refuseButton.layer.masksToBounds = YES;
    }
    //: return _refuseButton;
    return _refuseButton;
}


//: - (void)update:(NIMSystemNotification *)notification{
- (void)replacementDoing:(NIMSystemNotification *)notification{
    //: self.notification = notification;
    self.notification = notification;
    //: [self updateUI];
    [self mentalRepresentation];
}

//: - (void)updateUI{
- (void)mentalRepresentation{
    //: BOOL hideActionButton = [self shouldHideActionButton];
    BOOL hideActionButton = [self length];

    //: [self.acceptButton setHidden:hideActionButton];
    [self.acceptButton setHidden:hideActionButton];
    //: [self.refuseButton setHidden:hideActionButton];
    [self.refuseButton setHidden:hideActionButton];
    //: if(hideActionButton) {
    if(hideActionButton) {
        //: self.handleInfoLabel.hidden = NO;
        self.handleInfoLabel.hidden = NO;
        //: switch (self.notification.handleStatus) {
        switch (self.notification.handleStatus) {
            //: case NotificationHandleTypeOk:
            case NotificationHandleTypeOk:
                //: self.handleInfoLabel.text = [PushLanguageManager getTextWithKey:@"message_helper_already_ok"];
                self.handleInfoLabel.text = [BackgroundRandomAttribute content:[TemperatureData k_contentText]];//@"已同意".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeNo:
            case NotificationHandleTypeNo:
                //: self.handleInfoLabel.text = [PushLanguageManager getTextWithKey:@"message_helper_already_no"];
                self.handleInfoLabel.text = [BackgroundRandomAttribute content:[TemperatureData mTingOnIconMsg]];//@"已拒绝".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeOutOfDate:
            case NotificationHandleTypeOutOfDate:
                //: self.handleInfoLabel.text = [PushLanguageManager getTextWithKey:@"message_helper_already_time"];
                self.handleInfoLabel.text = [BackgroundRandomAttribute content:[TemperatureData noti_theaterId]];//@"已过期".nim_localized;
                //: break;
                break;
            //: default:
            default:
                //: self.handleInfoLabel.text = [PushLanguageManager getTextWithKey:@"is_read"];
                self.handleInfoLabel.text = [BackgroundRandomAttribute content:[TemperatureData main_imageStr]];
                //: break;
                break;
        }
    //: } else {
    } else {
        //: self.handleInfoLabel.hidden = YES;
        self.handleInfoLabel.hidden = YES;
    }


    //: self.timeLabel.text = [PushKitUtil showTime:self.notification.timestamp showDetail:YES];
    self.timeLabel.text = [KitUtil tally:self.notification.timestamp roundHighBack:YES];

    //: NSString *sourceID = self.notification.sourceID;
    NSString *sourceID = self.notification.sourceID;
    //: PushKitInfo *sourceMember = [[MyUserKit sharedKit] infoByUser:sourceID option:nil];
    DataTeam *sourceMember = [[Secret highlight] infoAndStraddleOption:sourceID item:nil];
    //: [self updateSourceMember:sourceMember];
    [self requestMember:sourceMember];
}

//: - (void)updateSourceMember:(PushKitInfo *)sourceMember{
- (void)requestMember:(DataTeam *)sourceMember{

    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: NSString *avatarUrlString = sourceMember.avatarUrlString;
    NSString *avatarUrlString = sourceMember.avatarUrlString;
    //: NSURL *url;
    NSURL *url;
    //: if (avatarUrlString.length) {
    if (avatarUrlString.length) {
        //: url = [NSURL URLWithString:avatarUrlString];
        url = [NSURL URLWithString:avatarUrlString];
    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
    //: [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    //: self.titleLabel.text = sourceMember.showName;
    self.titleLabel.text = sourceMember.showName;
    //: switch (type) {
    switch (type) {
        //: case NIMSystemNotificationTypeTeamApply:
        case NIMSystemNotificationTypeTeamApply:
        {
            //: NSString *message_helper_apply_to_group = [PushLanguageManager getTextWithKey:@"message_helper_apply_to_group"];
            NSString *message_helper_apply_to_group = [BackgroundRandomAttribute content:[TemperatureData kCellPath]];//@"申请加入群".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamApplyReject:
        case NIMSystemNotificationTypeTeamApplyReject:
        {
            //: NSString *contact_fragment_group = [PushLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [BackgroundRandomAttribute content:[TemperatureData dreamMageImageFormat]];//@"群".nim_localized
            //: NSString *message_helper_refuse_you = [PushLanguageManager getTextWithKey:@"message_helper_refuse_you"];
            NSString *message_helper_refuse_you = [BackgroundRandomAttribute content:[TemperatureData mStorageMessage]];//@"拒绝你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_refuse_you];
                                         message_helper_refuse_you];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamInvite:
        case NIMSystemNotificationTypeTeamInvite:
        {
            //: NSString *contact_fragment_group = [PushLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [BackgroundRandomAttribute content:[TemperatureData dreamMageImageFormat]];//@"群".nim_localized
            //: NSString *invite_you_group = [PushLanguageManager getTextWithKey:@"invite_you_group"];
            NSString *invite_you_group = [BackgroundRandomAttribute content:[TemperatureData app_showVersionData]];//@"邀请你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];

            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: invite_you_group];
                                         invite_you_group];

            //: if (self.notification.notifyExt.length>0) {
            if (self.notification.notifyExt.length>0) {
                //: self.messageLabel.text = [NSString stringWithFormat:@"%@ attach:%@",self.messageLabel.text , self.notification.notifyExt?:@""];
                self.messageLabel.text = [NSString stringWithFormat:[TemperatureData mWakeFormat],self.messageLabel.text , self.notification.notifyExt?:@""];
            }

        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamIviteReject:
        case NIMSystemNotificationTypeTeamIviteReject:
        {
            //: NSString *message_helper_refuse_group = [PushLanguageManager getTextWithKey:@"message_helper_refuse_group"];
            NSString *message_helper_refuse_group = [BackgroundRandomAttribute content:[TemperatureData showPathTitle]];
            //: NSString *message_helper_invite = [PushLanguageManager getTextWithKey:@"message_helper_invite"];
            NSString *message_helper_invite = [BackgroundRandomAttribute content:[TemperatureData dreamShowSessionUrl]];//@"邀请".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: message_helper_refuse_group,
                                         message_helper_refuse_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_invite];
                                         message_helper_invite];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamApply:
        case NIMSystemNotificationTypeSuperTeamApply:
        {
            //: NSString *apply_join_supergroup = [PushLanguageManager getTextWithKey:@"apply_join_supergroup"];
            NSString *apply_join_supergroup = [BackgroundRandomAttribute content:[TemperatureData mTemperatureText]];//@"申请加入超大群 %@".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApplyReject:
        case NIMSystemNotificationTypeSuperTeamApplyReject:
        {
            //: NSString *large_group = [PushLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [BackgroundRandomAttribute content:[TemperatureData dreamDeadItMessage]];//超大群
            //: NSString *to_deny_entry = [PushLanguageManager getTextWithKey:@"to_deny_entry"];
            NSString *to_deny_entry = [BackgroundRandomAttribute content:[TemperatureData mDownRoughFormat]];//拒绝你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: NSString *large_group = [PushLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [BackgroundRandomAttribute content:[TemperatureData dreamDeadItMessage]];//超大群
            //: NSString *invite_you_join_us = [PushLanguageManager getTextWithKey:@"invite_you_join_us"];
            NSString *invite_you_join_us = [BackgroundRandomAttribute content:[TemperatureData userTingFormat]];//邀请你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamIviteReject:
        case NIMSystemNotificationTypeSuperTeamIviteReject:
        {
            //: NSString *rejected_group_invitation = [PushLanguageManager getTextWithKey:@"rejected_group_invitation"];
            NSString *rejected_group_invitation = [BackgroundRandomAttribute content:[TemperatureData dream_saleValue]];
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NSString *text = @"未知请求".nim_localized;
            NSString *text = [TemperatureData user_downName].minIn;
            //: id object = self.notification.attachment;
            id object = self.notification.attachment;
            //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
                //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                //: NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];

                //: switch (operation) {
                switch (operation) {
                    //: case NIMUserOperationAdd:
                    case NIMUserOperationAdd:
                        //: text = [PushLanguageManager getTextWithKey:@"message_helper_already_add"];
                        text = [BackgroundRandomAttribute content:[TemperatureData k_affairStr]];//@"已添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationRequest:
                    case NIMUserOperationRequest:
                        //: text = [PushLanguageManager getTextWithKey:@"request_add_you_as_a_friend"];
                        text = [BackgroundRandomAttribute content:[TemperatureData mResembleDateName]];//@"请求添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationVerify:
                    case NIMUserOperationVerify:
                        //: text = [PushLanguageManager getTextWithKey:@"message_helper_allow_you_apply"];
                        text = [BackgroundRandomAttribute content:[TemperatureData user_motData]];//@"通过了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationReject:
                    case NIMUserOperationReject:
                        //: text = [PushLanguageManager getTextWithKey:@"message_helper_refuse_you_apply"];
                        text = [BackgroundRandomAttribute content:[TemperatureData main_penaltyCancelMsg]];//@"拒绝了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (serverExt && [serverExt length]) {
                if (serverExt && [serverExt length]) {
                    //: text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                }
            }

            //: self.messageLabel.text = text;
            self.messageLabel.text = text;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (self.notification.postscript.length > 0) {
//        self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",self.notification.postscript, self.messageLabel.text];
//    }

//    CGSize contentSize = [self.messageLabel.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-48-15-12-15, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil].size;
//
//    self.messageLabel.height = contentSize.height + 10;

//    _refuseButton.top = _handleInfoLabel.top = _acceptButton.top = self.messageLabel.bottom + 8;
}

//: - (void)onAcceptBtn{
- (void)messageRange{
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(statuses:)]){
        //: [_actionDelegate onAccept:self.notification];
        [_actionDelegate statuses:self.notification];
    }
}
//: - (void)onRefusebtn {
- (void)beginLength {
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(threading:)]){
        //: [_actionDelegate onRefuse:self.notification];
        [_actionDelegate threading:self.notification];
    }
}

//: - (BOOL)shouldHideActionButton
- (BOOL)length
{
    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: BOOL handled = self.notification.handleStatus != 0;
    BOOL handled = self.notification.handleStatus != 0;
    //: BOOL needHandle = NO;
    BOOL needHandle = NO;
    //: if (type == NIMSystemNotificationTypeTeamApply ||
    if (type == NIMSystemNotificationTypeTeamApply ||
        //: type == NIMSystemNotificationTypeTeamInvite ||
        type == NIMSystemNotificationTypeTeamInvite ||
        //: type == NIMSystemNotificationTypeSuperTeamApply ||
        type == NIMSystemNotificationTypeSuperTeamApply ||
        //: type == NIMSystemNotificationTypeSuperTeamInvite) {
        type == NIMSystemNotificationTypeSuperTeamInvite) {
        //: needHandle = YES;
        needHandle = YES;
    }
    //: if (type == NIMSystemNotificationTypeFriendAdd) {
    if (type == NIMSystemNotificationTypeFriendAdd) {
        //: id object = self.notification.attachment;
        id object = self.notification.attachment;
        //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            //: needHandle = operation == NIMUserOperationRequest;
            needHandle = operation == NIMUserOperationRequest;
        }
    }
    //: return !(!handled && needHandle);
    return !(!handled && needHandle);

}
//- (void)awakeFromNib{
//    [super awakeFromNib];
//    self.textLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.detailTextLabel.backgroundColor = [UIColor clearColor];
//    self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.avatarImageView = [[ImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//    [self.contentView addSubview:self.avatarImageView];
//
////    UIButton *a = (UIButton *)self.acceptButton;
////    UIButton *b = (UIButton *)self.refuseButton;
////    [a setTitle:LangKey(@"request_add_accept") forState:UIControlStateNormal];
////    [b setTitle:LangKey(@"request_add_reject") forState:UIControlStateNormal];
//
//}
//
//- (void)update:(NIMSystemNotification *)notification{
//    self.notification = notification;
//    [self updateUI];
//}
//
//- (void)updateUI{
//    BOOL hideActionButton = [self shouldHideActionButton];
//
//    [self.acceptButton setHidden:hideActionButton];
//    [self.refuseButton setHidden:hideActionButton];
//    if(hideActionButton) {
//        self.handleInfoLabel.hidden = NO;
//        switch (self.notification.handleStatus) {
//            case NotificationHandleTypeOk:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_ok");//@"已同意".ntes_localized;
//                break;
//            case NotificationHandleTypeNo:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_no");//@"已拒绝".ntes_localized;
//                break;
//            case NotificationHandleTypeOutOfDate:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_time");//@"已过期".ntes_localized;
//                break;
//            default:
//                self.handleInfoLabel.text = nil;
//                break;
//        }
//    } else {
//        self.handleInfoLabel.hidden = YES;
//    }
//
//
//    NSString *sourceID = self.notification.sourceID;
//    DataTeam *sourceMember = [[Secret sharedKit] infoByUser:sourceID option:nil];
//    [self updateSourceMember:sourceMember];
//}
//
//- (void)updateSourceMember:(DataTeam *)sourceMember{
//    NIMSystemNotificationType type = self.notification.type;
//    NSString *avatarUrlString = sourceMember.avatarUrlString;
//    NSURL *url;
//    if (avatarUrlString.length) {
//        url = [NSURL URLWithString:avatarUrlString];
//    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
//    self.textLabel.text        = sourceMember.showName;
//    [self.textLabel sizeToFit];
//    switch (type) {
//        case NIMSystemNotificationTypeTeamApply:
//        {
//            NSString *message_helper_apply_to_group = LangKey(@"message_helper_apply_to_group");//@"申请加入群".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamApplyReject:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *message_helper_refuse_you = LangKey(@"message_helper_refuse_you");//@"拒绝你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         message_helper_refuse_you];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamInvite:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *invite_you_group = LangKey(@"invite_you_group");//@"邀请你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@ attach:%@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         invite_you_group,
//                                         self.notification.notifyExt ? : @""];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamIviteReject:
//        {
//            NSString *message_helper_refuse_group = LangKey(@"message_helper_refuse_group");
//            NSString *message_helper_invite = LangKey(@"message_helper_invite");//@"邀请".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         message_helper_refuse_group,
//                                         team.teamName,
//                                         message_helper_invite];
//        }
//            break;
//        case NIMSystemNotificationTypeSuperTeamApply:
//        {
//            NSString *apply_join_supergroup = LangKey(@"apply_join_supergroup");//@"申请加入超大群 %@".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamApplyReject:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *to_deny_entry = LangKey(@"to_deny_entry");//拒绝你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamInvite:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *invite_you_join_us = LangKey(@"invite_you_join_us");//邀请你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamIviteReject:
//        {
//            NSString *rejected_group_invitation = LangKey(@"rejected_group_invitation");
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NSString *text = @"未知请求".ntes_localized;
//            id object = self.notification.attachment;
//            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
//
//                switch (operation) {
//                    case NIMUserOperationAdd:
//                        text = LangKey(@"message_helper_already_add");//@"已添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationRequest:
//                        text = LangKey(@"request_add_you_as_a_friend");//@"请求添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationVerify:
//                        text = LangKey(@"message_helper_allow_you_apply");//@"通过了你的好友请求".ntes_localized;
//                        break;
//                    case NIMUserOperationReject:
//                        text = LangKey(@"message_helper_refuse_you_apply");//@"拒绝了你的好友请求".ntes_localized;
//                        break;
//                    default:
//                        break;
//                }
//
//                if (serverExt && [serverExt length]) {
//                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
//                }
//            }
//
//            self.detailTextLabel.text = text;
//        }
//            break;
//        default:
//            break;
//    }
//    [self.detailTextLabel sizeToFit];
//    self.messageLabel.text = self.notification.postscript;
//    [self.messageLabel sizeToFit];
//    [self setNeedsLayout];
//}
//
//- (IBAction)onAccept:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
//        [_actionDelegate onAccept:self.notification];
//    }
//}
//- (IBAction)onRefuse:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
//        [_actionDelegate onRefuse:self.notification];
//    }
//}
//
//- (BOOL)shouldHideActionButton
//{
//    NIMSystemNotificationType type = self.notification.type;
//    BOOL handled = self.notification.handleStatus != 0;
//    BOOL needHandle = NO;
//    if (type == NIMSystemNotificationTypeTeamApply ||
//        type == NIMSystemNotificationTypeTeamInvite ||
//        type == NIMSystemNotificationTypeSuperTeamApply ||
//        type == NIMSystemNotificationTypeSuperTeamInvite) {
//        needHandle = YES;
//    }
//    if (type == NIMSystemNotificationTypeFriendAdd) {
//        id object = self.notification.attachment;
//        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//            needHandle = operation == NIMUserOperationRequest;
//        }
//    }
//    return !(!handled && needHandle);
//
//}
//
//#define MaxTextLabelWidth 120.0 * UISreenWidthScale
//#define MaxDetailLabelWidth 160.0 * UISreenWidthScale
//#define MaxMessageLabelWidth 150.0 * UISreenWidthScale
//#define TextLabelAndMessageLabelSpacing 20.f
//#define AvatarImageViewLeft 15.f
//#define MessageAndAvatarSpacing 15.f
//- (void)layoutSubviews{
//    [super layoutSubviews];
//    self.avatarImageView.centerY = self.height * .5f;
//    self.avatarImageView.left = AvatarImageViewLeft;
//    if (self.textLabel.width > MaxTextLabelWidth) {
//        self.textLabel.width = MaxTextLabelWidth;
//    }
//    if (self.detailTextLabel.width > MaxDetailLabelWidth) {
//        self.detailTextLabel.width = MaxDetailLabelWidth;
//    }
//    self.textLabel.left = self.avatarImageView.right + MessageAndAvatarSpacing;
//    self.detailTextLabel.left = self.textLabel.left;
//    self.detailTextLabel.bottom = self.avatarImageView.bottom;
//
////    if (self.messageLabel.width > MaxMessageLabelWidth) {
////        self.messageLabel.width = MaxMessageLabelWidth;
////    }
////    self.messageLabel.left = self.textLabel.right + TextLabelAndMessageLabelSpacing;
//
//}

//: @end
@end

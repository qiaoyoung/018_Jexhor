
#import <Foundation/Foundation.h>

typedef struct {
    Byte titlePlace;
    Byte *buttonSession;
    unsigned int lengthRead;
	int valueImageNeed;
} StructSoundData;

@interface SoundData : NSObject

@end

@implementation SoundData

+ (Byte *)SoundDataToByte:(StructSoundData *)data {
    for (int i = 0; i < data->lengthRead; i++) {
        data->buttonSession[i] ^= data->titlePlace;
    }
    data->buttonSession[data->lengthRead] = 0;
	if (data->lengthRead >= 1) {
		data->valueImageNeed = data->buttonSession[0];
	}
    return data->buttonSession;
}

+ (NSString *)StringFromSoundData:(StructSoundData *)data {
    return [NSString stringWithUTF8String:(char *)[self SoundDataToByte:data]];
}

//: ic_btn_accept
+ (NSString *)mButtonValue {
    /* static */ NSString *mButtonValue = nil;
    if (!mButtonValue) {
        StructSoundData value = (StructSoundData){242, (Byte []){155, 145, 173, 144, 134, 156, 173, 147, 145, 145, 151, 130, 134, 166}, 13, 159};
        mButtonValue = [self StringFromSoundData:&value];
    }
    return mButtonValue;
}

//: message_helper_already_time
+ (NSString *)appButtonData {
    /* static */ NSString *appButtonData = nil;
    if (!appButtonData) {
        StructSoundData value = (StructSoundData){37, (Byte []){72, 64, 86, 86, 68, 66, 64, 122, 77, 64, 73, 85, 64, 87, 122, 68, 73, 87, 64, 68, 65, 92, 122, 81, 76, 72, 64, 249}, 27, 62};
        appButtonData = [self StringFromSoundData:&value];
    }
    return appButtonData;
}

//: message_helper_apply_to_group
+ (NSString *)appViewData {
    /* static */ NSString *appViewData = nil;
    if (!appViewData) {
        StructSoundData value = (StructSoundData){150, (Byte []){251, 243, 229, 229, 247, 241, 243, 201, 254, 243, 250, 230, 243, 228, 201, 247, 230, 230, 250, 239, 201, 226, 249, 201, 241, 228, 249, 227, 230, 54}, 29, 28};
        appViewData = [self StringFromSoundData:&value];
    }
    return appViewData;
}

//: message_helper_refuse_you
+ (NSString *)mNameSizeFileValue {
    /* static */ NSString *mNameSizeFileValue = nil;
    if (!mNameSizeFileValue) {
        StructSoundData value = (StructSoundData){47, (Byte []){66, 74, 92, 92, 78, 72, 74, 112, 71, 74, 67, 95, 74, 93, 112, 93, 74, 73, 90, 92, 74, 112, 86, 64, 90, 39}, 25, 244};
        mNameSizeFileValue = [self StringFromSoundData:&value];
    }
    return mNameSizeFileValue;
}

//: request_add_you_as_a_friend
+ (NSString *)userSuccessValue {
    /* static */ NSString *userSuccessValue = nil;
    if (!userSuccessValue) {
        StructSoundData value = (StructSoundData){76, (Byte []){62, 41, 61, 57, 41, 63, 56, 19, 45, 40, 40, 19, 53, 35, 57, 19, 45, 63, 19, 45, 19, 42, 62, 37, 41, 34, 40, 166}, 27, 116};
        userSuccessValue = [self StringFromSoundData:&value];
    }
    return userSuccessValue;
}

//: %@ attach:%@
+ (NSString *)notiAddData {
    /* static */ NSString *notiAddData = nil;
    if (!notiAddData) {
        StructSoundData value = (StructSoundData){152, (Byte []){189, 216, 184, 249, 236, 236, 249, 251, 240, 162, 189, 216, 143}, 12, 27};
        notiAddData = [self StringFromSoundData:&value];
    }
    return notiAddData;
}

//: 000000
+ (NSString *)app_viewValue {
    /* static */ NSString *app_viewValue = nil;
    if (!app_viewValue) {
        StructSoundData value = (StructSoundData){118, (Byte []){70, 70, 70, 70, 70, 70, 249}, 6, 63};
        app_viewValue = [self StringFromSoundData:&value];
    }
    return app_viewValue;
}

//: 未知请求
+ (NSString *)mShowValue {
    /* static */ NSString *mShowValue = nil;
    if (!mShowValue) {
        StructSoundData value = (StructSoundData){75, (Byte []){173, 215, 225, 172, 212, 238, 163, 228, 252, 173, 250, 201, 28}, 12, 192};
        mShowValue = [self StringFromSoundData:&value];
    }
    return mShowValue;
}

//: apply_join_supergroup
+ (NSString *)dreamHandleName {
    /* static */ NSString *dreamHandleName = nil;
    if (!dreamHandleName) {
        StructSoundData value = (StructSoundData){199, (Byte []){166, 183, 183, 171, 190, 152, 173, 168, 174, 169, 152, 180, 178, 183, 162, 181, 160, 181, 168, 178, 183, 55}, 21, 171};
        dreamHandleName = [self StringFromSoundData:&value];
    }
    return dreamHandleName;
}

//: message_helper_already_add
+ (NSString *)mAtData {
    /* static */ NSString *mAtData = nil;
    if (!mAtData) {
        StructSoundData value = (StructSoundData){248, (Byte []){149, 157, 139, 139, 153, 159, 157, 167, 144, 157, 148, 136, 157, 138, 167, 153, 148, 138, 157, 153, 156, 129, 167, 153, 156, 156, 52}, 26, 113};
        mAtData = [self StringFromSoundData:&value];
    }
    return mAtData;
}

//: message_helper_allow_you_apply
+ (NSString *)show_textDeleteName {
    /* static */ NSString *show_textDeleteName = nil;
    if (!show_textDeleteName) {
        StructSoundData value = (StructSoundData){48, (Byte []){93, 85, 67, 67, 81, 87, 85, 111, 88, 85, 92, 64, 85, 66, 111, 81, 92, 92, 95, 71, 111, 73, 95, 69, 111, 81, 64, 64, 92, 73, 194}, 30, 4};
        show_textDeleteName = [self StringFromSoundData:&value];
    }
    return show_textDeleteName;
}

//: message_helper_refuse_you_apply
+ (NSString *)app_limitValue {
    /* static */ NSString *app_limitValue = nil;
    if (!app_limitValue) {
        StructSoundData value = (StructSoundData){178, (Byte []){223, 215, 193, 193, 211, 213, 215, 237, 218, 215, 222, 194, 215, 192, 237, 192, 215, 212, 199, 193, 215, 237, 203, 221, 199, 237, 211, 194, 194, 222, 203, 115}, 31, 202};
        app_limitValue = [self StringFromSoundData:&value];
    }
    return app_limitValue;
}

//: message_helper_already_no
+ (NSString *)kHandleData {
    /* static */ NSString *kHandleData = nil;
    if (!kHandleData) {
        StructSoundData value = (StructSoundData){232, (Byte []){133, 141, 155, 155, 137, 143, 141, 183, 128, 141, 132, 152, 141, 154, 183, 137, 132, 154, 141, 137, 140, 145, 183, 134, 135, 82}, 25, 186};
        kHandleData = [self StringFromSoundData:&value];
    }
    return kHandleData;
}

//: #F6F6F6
+ (NSString *)noti_limitData {
    /* static */ NSString *noti_limitData = nil;
    if (!noti_limitData) {
        StructSoundData value = (StructSoundData){195, (Byte []){224, 133, 245, 133, 245, 133, 245, 246}, 7, 43};
        noti_limitData = [self StringFromSoundData:&value];
    }
    return noti_limitData;
}

//: message_helper_refuse_group
+ (NSString *)main_videoWithValue {
    /* static */ NSString *main_videoWithValue = nil;
    if (!main_videoWithValue) {
        StructSoundData value = (StructSoundData){186, (Byte []){215, 223, 201, 201, 219, 221, 223, 229, 210, 223, 214, 202, 223, 200, 229, 200, 223, 220, 207, 201, 223, 229, 221, 200, 213, 207, 202, 79}, 27, 117};
        main_videoWithValue = [self StringFromSoundData:&value];
    }
    return main_videoWithValue;
}

//: message_helper_already_ok
+ (NSString *)appShouldData {
    /* static */ NSString *appShouldData = nil;
    if (!appShouldData) {
        StructSoundData value = (StructSoundData){172, (Byte []){193, 201, 223, 223, 205, 203, 201, 243, 196, 201, 192, 220, 201, 222, 243, 205, 192, 222, 201, 205, 200, 213, 243, 195, 199, 9}, 25, 39};
        appShouldData = [self StringFromSoundData:&value];
    }
    return appShouldData;
}

//: large_group
+ (NSString *)m_pressValue {
    /* static */ NSString *m_pressValue = nil;
    if (!m_pressValue) {
        StructSoundData value = (StructSoundData){36, (Byte []){72, 69, 86, 67, 65, 123, 67, 86, 75, 81, 84, 117}, 11, 200};
        m_pressValue = [self StringFromSoundData:&value];
    }
    return m_pressValue;
}

//: #05D481
+ (NSString *)show_threadData {
    /* static */ NSString *show_threadData = nil;
    if (!show_threadData) {
        StructSoundData value = (StructSoundData){242, (Byte []){209, 194, 199, 182, 198, 202, 195, 20}, 7, 145};
        show_threadData = [self StringFromSoundData:&value];
    }
    return show_threadData;
}

//: ic_btn_disaccept
+ (NSString *)dream_thanSuccessName {
    /* static */ NSString *dream_thanSuccessName = nil;
    if (!dream_thanSuccessName) {
        StructSoundData value = (StructSoundData){17, (Byte []){120, 114, 78, 115, 101, 127, 78, 117, 120, 98, 112, 114, 114, 116, 97, 101, 68}, 16, 220};
        dream_thanSuccessName = [self StringFromSoundData:&value];
    }
    return dream_thanSuccessName;
}

//: is_read
+ (NSString *)dream_valueData {
    /* static */ NSString *dream_valueData = nil;
    if (!dream_valueData) {
        StructSoundData value = (StructSoundData){92, (Byte []){53, 47, 3, 46, 57, 61, 56, 240}, 7, 56};
        dream_valueData = [self StringFromSoundData:&value];
    }
    return dream_valueData;
}

//: invite_you_join_us
+ (NSString *)user_completeData {
    /* static */ NSString *user_completeData = nil;
    if (!user_completeData) {
        StructSoundData value = (StructSoundData){106, (Byte []){3, 4, 28, 3, 30, 15, 53, 19, 5, 31, 53, 0, 5, 3, 4, 53, 31, 25, 1}, 18, 142};
        user_completeData = [self StringFromSoundData:&value];
    }
    return user_completeData;
}

//: #999999
+ (NSString *)mFileImageTitle {
    /* static */ NSString *mFileImageTitle = nil;
    if (!mFileImageTitle) {
        StructSoundData value = (StructSoundData){54, (Byte []){21, 15, 15, 15, 15, 15, 15, 201}, 7, 170};
        mFileImageTitle = [self StringFromSoundData:&value];
    }
    return mFileImageTitle;
}

//: to_deny_entry
+ (NSString *)dream_sizeEndData {
    /* static */ NSString *dream_sizeEndData = nil;
    if (!dream_sizeEndData) {
        StructSoundData value = (StructSoundData){30, (Byte []){106, 113, 65, 122, 123, 112, 103, 65, 123, 112, 106, 108, 103, 98}, 13, 171};
        dream_sizeEndData = [self StringFromSoundData:&value];
    }
    return dream_sizeEndData;
}

//: invite_you_group
+ (NSString *)kMediaMustText {
    /* static */ NSString *kMediaMustText = nil;
    if (!kMediaMustText) {
        StructSoundData value = (StructSoundData){153, (Byte []){240, 247, 239, 240, 237, 252, 198, 224, 246, 236, 198, 254, 235, 246, 236, 233, 115}, 16, 170};
        kMediaMustText = [self StringFromSoundData:&value];
    }
    return kMediaMustText;
}

//: rejected_group_invitation
+ (NSString *)user_removeAddText {
    /* static */ NSString *user_removeAddText = nil;
    if (!user_removeAddText) {
        StructSoundData value = (StructSoundData){25, (Byte []){107, 124, 115, 124, 122, 109, 124, 125, 70, 126, 107, 118, 108, 105, 70, 112, 119, 111, 112, 109, 120, 109, 112, 118, 119, 121}, 25, 31};
        user_removeAddText = [self StringFromSoundData:&value];
    }
    return user_removeAddText;
}

//: contact_fragment_group
+ (NSString *)userReadValue {
    /* static */ NSString *userReadValue = nil;
    if (!userReadValue) {
        StructSoundData value = (StructSoundData){140, (Byte []){239, 227, 226, 248, 237, 239, 248, 211, 234, 254, 237, 235, 225, 233, 226, 248, 211, 235, 254, 227, 249, 252, 181}, 22, 200};
        userReadValue = [self StringFromSoundData:&value];
    }
    return userReadValue;
}

//: message_helper_invite
+ (NSString *)app_shouldData {
    /* static */ NSString *app_shouldData = nil;
    if (!app_shouldData) {
        StructSoundData value = (StructSoundData){20, (Byte []){121, 113, 103, 103, 117, 115, 113, 75, 124, 113, 120, 100, 113, 102, 75, 125, 122, 98, 125, 96, 113, 32}, 21, 254};
        app_shouldData = [self StringFromSoundData:&value];
    }
    return app_shouldData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextViewCell.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemNotificationCell.h"
#import "TextViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"

//: @interface NTESSystemNotificationCell ()
@interface TextViewCell ()

//: @property (nonatomic,strong) NIMSystemNotification *notification;
@property (nonatomic,strong) NIMSystemNotification *notification;
//@property (nonatomic,strong) IBOutlet ButtonControl *avatarImageView;
//: @end
@end

//: @implementation NTESSystemNotificationCell
@implementation TextViewCell

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
        self.backgroundColor = [UIColor ground:[SoundData noti_limitData]];
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
        _titleLabel.textColor = [UIColor ground:[SoundData app_viewValue]];
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
        _timeLabel.textColor = [UIColor ground:[SoundData mFileImageTitle]];
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
        _messageLabel.textColor = [UIColor ground:[SoundData mFileImageTitle]];
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
        _handleInfoLabel.textColor = [UIColor ground:[SoundData show_threadData]];
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
        [_acceptButton addTarget:self action:@selector(approbateOf) forControlEvents:(UIControlEventTouchUpInside)];
//        [_acceptButton setTitleColor:[KEKESkinColorManager shareInstance].skinColor forState:(UIControlStateNormal)];
//        [_acceptButton setBackgroundColor:RGB_COLOR_String(@"#fffWork")];
        //: [_acceptButton setImage:[UIImage imageNamed:@"ic_btn_accept"] forState:UIControlStateNormal];
        [_acceptButton setImage:[UIImage imageNamed:[SoundData mButtonValue]] forState:UIControlStateNormal];
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
        [_refuseButton addTarget:self action:@selector(domesticDog) forControlEvents:(UIControlEventTouchUpInside)];
//        [_refuseButton setTitleColor:kTextColor_2c3042 forState:(UIControlStateNormal)];
//        [_refuseButton setBackgroundColor:RGB_COLOR_String(@"#fffWork")];
        //: [_refuseButton setImage:[UIImage imageNamed:@"ic_btn_disaccept"] forState:UIControlStateNormal];
        [_refuseButton setImage:[UIImage imageNamed:[SoundData dream_thanSuccessName]] forState:UIControlStateNormal];
//        _refuseButton.layer.cornerRadius = 16;
//        _refuseButton.layer.masksToBounds = YES;
    }
    //: return _refuseButton;
    return _refuseButton;
}


//: - (void)update:(NIMSystemNotification *)notification{
- (void)value:(NIMSystemNotification *)notification{
    //: self.notification = notification;
    self.notification = notification;
    //: [self updateUI];
    [self fileText];
}

//: - (void)updateUI{
- (void)fileText{
    //: BOOL hideActionButton = [self shouldHideActionButton];
    BOOL hideActionButton = [self block];

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
                //: self.handleInfoLabel.text = [WorkLanguageManager getTextWithKey:@"message_helper_already_ok"];
                self.handleInfoLabel.text = [InputRed preserve:[SoundData appShouldData]];//@"已同意".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeNo:
            case NotificationHandleTypeNo:
                //: self.handleInfoLabel.text = [WorkLanguageManager getTextWithKey:@"message_helper_already_no"];
                self.handleInfoLabel.text = [InputRed preserve:[SoundData kHandleData]];//@"已拒绝".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeOutOfDate:
            case NotificationHandleTypeOutOfDate:
                //: self.handleInfoLabel.text = [WorkLanguageManager getTextWithKey:@"message_helper_already_time"];
                self.handleInfoLabel.text = [InputRed preserve:[SoundData appButtonData]];//@"已过期".nim_localized;
                //: break;
                break;
            //: default:
            default:
                //: self.handleInfoLabel.text = [WorkLanguageManager getTextWithKey:@"is_read"];
                self.handleInfoLabel.text = [InputRed preserve:[SoundData dream_valueData]];
                //: break;
                break;
        }
    //: } else {
    } else {
        //: self.handleInfoLabel.hidden = YES;
        self.handleInfoLabel.hidden = YES;
    }


    //: self.timeLabel.text = [WorkKitUtil showTime:self.notification.timestamp showDetail:YES];
    self.timeLabel.text = [WantUtil holder:self.notification.timestamp chorusLine:YES];

    //: NSString *sourceID = self.notification.sourceID;
    NSString *sourceID = self.notification.sourceID;
    //: WorkKitInfo *sourceMember = [[MyUserKit sharedKit] infoByUser:sourceID option:nil];
    ConfirmationInfo *sourceMember = [[MessageContent secretResolution] recent:sourceID blue:nil];
    //: [self updateSourceMember:sourceMember];
    [self accumulation:sourceMember];
}

//: - (void)updateSourceMember:(WorkKitInfo *)sourceMember{
- (void)accumulation:(ConfirmationInfo *)sourceMember{

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
            //: NSString *message_helper_apply_to_group = [WorkLanguageManager getTextWithKey:@"message_helper_apply_to_group"];
            NSString *message_helper_apply_to_group = [InputRed preserve:[SoundData appViewData]];//@"申请加入群".nim_localized
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
            //: NSString *contact_fragment_group = [WorkLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [InputRed preserve:[SoundData userReadValue]];//@"群".nim_localized
            //: NSString *message_helper_refuse_you = [WorkLanguageManager getTextWithKey:@"message_helper_refuse_you"];
            NSString *message_helper_refuse_you = [InputRed preserve:[SoundData mNameSizeFileValue]];//@"拒绝你加入".nim_localized
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
            //: NSString *contact_fragment_group = [WorkLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [InputRed preserve:[SoundData userReadValue]];//@"群".nim_localized
            //: NSString *invite_you_group = [WorkLanguageManager getTextWithKey:@"invite_you_group"];
            NSString *invite_you_group = [InputRed preserve:[SoundData kMediaMustText]];//@"邀请你加入".nim_localized
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
                self.messageLabel.text = [NSString stringWithFormat:[SoundData notiAddData],self.messageLabel.text , self.notification.notifyExt?:@""];
            }

        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamIviteReject:
        case NIMSystemNotificationTypeTeamIviteReject:
        {
            //: NSString *message_helper_refuse_group = [WorkLanguageManager getTextWithKey:@"message_helper_refuse_group"];
            NSString *message_helper_refuse_group = [InputRed preserve:[SoundData main_videoWithValue]];
            //: NSString *message_helper_invite = [WorkLanguageManager getTextWithKey:@"message_helper_invite"];
            NSString *message_helper_invite = [InputRed preserve:[SoundData app_shouldData]];//@"邀请".nim_localized
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
            //: NSString *apply_join_supergroup = [WorkLanguageManager getTextWithKey:@"apply_join_supergroup"];
            NSString *apply_join_supergroup = [InputRed preserve:[SoundData dreamHandleName]];//@"申请加入超大群 %@".nim_localized
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
            //: NSString *large_group = [WorkLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [InputRed preserve:[SoundData m_pressValue]];//超大群
            //: NSString *to_deny_entry = [WorkLanguageManager getTextWithKey:@"to_deny_entry"];
            NSString *to_deny_entry = [InputRed preserve:[SoundData dream_sizeEndData]];//拒绝你加入
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
            //: NSString *large_group = [WorkLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [InputRed preserve:[SoundData m_pressValue]];//超大群
            //: NSString *invite_you_join_us = [WorkLanguageManager getTextWithKey:@"invite_you_join_us"];
            NSString *invite_you_join_us = [InputRed preserve:[SoundData user_completeData]];//邀请你加入
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
            //: NSString *rejected_group_invitation = [WorkLanguageManager getTextWithKey:@"rejected_group_invitation"];
            NSString *rejected_group_invitation = [InputRed preserve:[SoundData user_removeAddText]];
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
            NSString *text = [SoundData mShowValue].titleBy;
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
                        //: text = [WorkLanguageManager getTextWithKey:@"message_helper_already_add"];
                        text = [InputRed preserve:[SoundData mAtData]];//@"已添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationRequest:
                    case NIMUserOperationRequest:
                        //: text = [WorkLanguageManager getTextWithKey:@"request_add_you_as_a_friend"];
                        text = [InputRed preserve:[SoundData userSuccessValue]];//@"请求添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationVerify:
                    case NIMUserOperationVerify:
                        //: text = [WorkLanguageManager getTextWithKey:@"message_helper_allow_you_apply"];
                        text = [InputRed preserve:[SoundData show_textDeleteName]];//@"通过了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationReject:
                    case NIMUserOperationReject:
                        //: text = [WorkLanguageManager getTextWithKey:@"message_helper_refuse_you_apply"];
                        text = [InputRed preserve:[SoundData app_limitValue]];//@"拒绝了你的好友请求".nim_localized;
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
- (void)approbateOf{
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(alongs:)]){
        //: [_actionDelegate onAccept:self.notification];
        [_actionDelegate alongs:self.notification];
    }
}
//: - (void)onRefusebtn {
- (void)domesticDog {
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(alongInput:)]){
        //: [_actionDelegate onRefuse:self.notification];
        [_actionDelegate alongInput:self.notification];
    }
}

//: - (BOOL)shouldHideActionButton
- (BOOL)block
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
//    self.avatarImageView = [[ButtonControl alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
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
//    ConfirmationInfo *sourceMember = [[MessageContent sharedKit] infoByUser:sourceID option:nil];
//    [self updateSourceMember:sourceMember];
//}
//
//- (void)updateSourceMember:(ConfirmationInfo *)sourceMember{
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

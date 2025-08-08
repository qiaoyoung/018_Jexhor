
#import <Foundation/Foundation.h>

@interface MaxData : NSObject

+ (instancetype)sharedInstance;

//: user_id
@property (nonatomic, copy) NSString *kLimitTitle;

@end

@implementation MaxData

+ (instancetype)sharedInstance {
    static MaxData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MaxDataToCache:(Byte *)data {
    int misconduct = data[0];
    int addOn = data[1];
    for (int i = 0; i < misconduct / 2; i++) {
        int begin = addOn + i;
        int end = addOn + misconduct - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[addOn + misconduct] = 0;
    return data + addOn;
}

- (NSString *)StringFromMaxData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MaxDataToCache:data]];
}  

//: user_id
- (NSString *)kLimitTitle {
    if (!_kLimitTitle) {
        Byte value[] = {7, 8, 23, 83, 252, 56, 20, 229, 100, 105, 95, 114, 101, 115, 117, 135};
        _kLimitTitle = [self StringFromMaxData:value];
    }
    return _kLimitTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupCompartmentContactView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "GroupCompartmentContactView.h"

//: @implementation NTESContactGroupCell
@implementation GroupCompartmentContactView

//: - (void)initSubviews{
- (void)initStatus{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[WorkAvatarImageView alloc] init];
    _avatar = [[ButtonControl alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)color:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information route:[MaxData sharedInstance].kLimitTitle];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:user_id blue:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar title:[NSURL URLWithString:info.avatarUrlString] myPin:info.avatarImage image:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end

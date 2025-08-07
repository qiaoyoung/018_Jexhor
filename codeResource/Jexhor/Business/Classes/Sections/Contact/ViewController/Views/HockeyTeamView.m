
#import <Foundation/Foundation.h>

@interface WithData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WithData

+ (instancetype)sharedInstance {
    static WithData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WithDataToCache:(Byte *)data {
    int pressedSession = data[0];
    Byte messageVersion = data[1];
    int holderCrop = data[2];
    for (int i = holderCrop; i < holderCrop + pressedSession; i++) {
        int value = data[i] - messageVersion;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[holderCrop + pressedSession] = 0;
    return data + holderCrop;
}

- (NSString *)StringFromWithData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WithDataToCache:data]];
}

//: ic_search
- (NSString *)k_buttonValue {
    /* static */ NSString *k_buttonValue = nil;
    if (!k_buttonValue) {
        Byte value[] = {9, 87, 13, 221, 203, 164, 167, 213, 254, 153, 197, 31, 233, 192, 186, 182, 202, 188, 184, 201, 186, 191, 219};
        k_buttonValue = [self StringFromWithData:value];
    }
    return k_buttonValue;
}

//: icon_user_contact_qr
- (NSString *)userInfoUrl {
    /* static */ NSString *userInfoUrl = nil;
    if (!userInfoUrl) {
        Byte value[] = {20, 68, 10, 169, 58, 219, 178, 195, 217, 15, 173, 167, 179, 178, 163, 185, 183, 169, 182, 163, 167, 179, 178, 184, 165, 167, 184, 163, 181, 182, 117};
        userInfoUrl = [self StringFromWithData:value];
    }
    return userInfoUrl;
}

//: activity_add_friend_my_account
- (NSString *)app_userKey {
    /* static */ NSString *app_userKey = nil;
    if (!app_userKey) {
        Byte value[] = {30, 30, 3, 127, 129, 146, 135, 148, 135, 146, 151, 125, 127, 130, 130, 125, 132, 144, 135, 131, 140, 130, 125, 139, 151, 125, 127, 129, 129, 141, 147, 140, 146, 113};
        app_userKey = [self StringFromWithData:value];
    }
    return app_userKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HockeyTeamView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/19.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendCell.h"
#import "HockeyTeamView.h"

//: @implementation NTESContactAddFriendCell
@implementation HockeyTeamView

//: - (void)initSubviews{
- (void)initFrom{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backView = [[UIView alloc] init];
    UIView *backView = [[UIView alloc] init];
    //: backView.backgroundColor = [UIColor whiteColor];
    backView.backgroundColor = [UIColor whiteColor];
    //: backView.layer.masksToBounds = YES;
    backView.layer.masksToBounds = YES;
    //: backView.layer.cornerRadius = 4.6f;
    backView.layer.cornerRadius = 4.6f;
    //: [self addSubview:backView];
    [self addSubview:backView];
    //: [backView mas_makeConstraints:^(MASConstraintMaker *make) {
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);

    //: }];
    }];

    //: UIImageView *imageIcon = [[UIImageView alloc] init];
    UIImageView *imageIcon = [[UIImageView alloc] init];
    //: imageIcon.image = [UIImage imageNamed:@"ic_search"];
    imageIcon.image = [UIImage imageNamed:[[WithData sharedInstance] k_buttonValue]];
    //: [backView addSubview:imageIcon];
    [backView addSubview:imageIcon];
    //: [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(8);
        make.left.mas_offset(8);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.height.mas_equalTo(23);
        make.width.height.mas_equalTo(23);
    //: }];
    }];

    //: _textField = [[UITextField alloc] init];
    _textField = [[UITextField alloc] init];
    //: [backView addSubview:_textField];
    [backView addSubview:_textField];
    //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(imageIcon.mas_right).mas_offset(5);
        make.left.mas_equalTo(imageIcon.mas_right).mas_offset(5);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);

    //: }];
    }];

    //: NSString *my_account = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_account"];
    NSString *my_account = [BackgroundRandomAttribute content:[[WithData sharedInstance] app_userKey]];
    //: NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[NIMUserDefaults standardUserDefaults].accountName];
    NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[CrossShouldBlock towardScaleOfMeasurement].accountName];
    //: UILabel *titleLable = [[UILabel alloc] init];
    UILabel *titleLable = [[UILabel alloc] init];
    //: titleLable.font = [UIFont systemFontOfSize:15];
    titleLable.font = [UIFont systemFontOfSize:15];
    //: titleLable.textColor = [UIColor blackColor];
    titleLable.textColor = [UIColor blackColor];
    //: titleLable.text = myCodeStr;
    titleLable.text = myCodeStr;
    //: [titleLable sizeToFit];
    [titleLable sizeToFit];
    //: [self addSubview:titleLable];
    [self addSubview:titleLable];
    //: [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
    [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(backView.mas_bottom).mas_offset(40);
        make.top.mas_equalTo(backView.mas_bottom).mas_offset(40);
        //: make.centerX.mas_offset(0).mas_offset(-25);
        make.centerX.mas_offset(0).mas_offset(-25);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
    //: }];
    }];


    //: _myQRCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _myQRCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateNormal];
    [_myQRCodeBtn setImage:[UIImage imageNamed:[[WithData sharedInstance] userInfoUrl]] forState:UIControlStateNormal];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateHighlighted];
    [_myQRCodeBtn setImage:[UIImage imageNamed:[[WithData sharedInstance] userInfoUrl]] forState:UIControlStateHighlighted];
    //: [self addSubview:_myQRCodeBtn];
    [self addSubview:_myQRCodeBtn];
    //: [_myQRCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
    [_myQRCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(titleLable.mas_right).mas_offset(3);
        make.left.mas_equalTo(titleLable.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(titleLable);
        make.centerY.mas_equalTo(titleLable);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];



}

//: @end
@end
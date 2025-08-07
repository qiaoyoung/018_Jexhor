
#import <Foundation/Foundation.h>

@interface ChangeData : NSObject

+ (instancetype)sharedInstance;

//: activity_add_friend_my_account
@property (nonatomic, copy) NSString *k_needName;

//: icon_user_contact_qr
@property (nonatomic, copy) NSString *mSendName;

//: ic_search
@property (nonatomic, copy) NSString *k_disableTagName;

@end

@implementation ChangeData

+ (instancetype)sharedInstance {
    static ChangeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ChangeDataToCache:(Byte *)data {
    int complete = data[0];
    int overdoName = data[1];
    for (int i = 0; i < complete / 2; i++) {
        int begin = overdoName + i;
        int end = overdoName + complete - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[overdoName + complete] = 0;
    return data + overdoName;
}

- (NSString *)StringFromChangeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChangeDataToCache:data]];
}  

//: activity_add_friend_my_account
- (NSString *)k_needName {
    if (!_k_needName) {
        Byte value[] = {30, 3, 135, 116, 110, 117, 111, 99, 99, 97, 95, 121, 109, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 254};
        _k_needName = [self StringFromChangeData:value];
    }
    return _k_needName;
}

//: icon_user_contact_qr
- (NSString *)mSendName {
    if (!_mSendName) {
        Byte value[] = {20, 12, 196, 28, 253, 132, 186, 224, 159, 54, 131, 249, 114, 113, 95, 116, 99, 97, 116, 110, 111, 99, 95, 114, 101, 115, 117, 95, 110, 111, 99, 105, 122};
        _mSendName = [self StringFromChangeData:value];
    }
    return _mSendName;
}

//: ic_search
- (NSString *)k_disableTagName {
    if (!_k_disableTagName) {
        Byte value[] = {9, 7, 132, 134, 48, 128, 11, 104, 99, 114, 97, 101, 115, 95, 99, 105, 117};
        _k_disableTagName = [self StringFromChangeData:value];
    }
    return _k_disableTagName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FriendTingViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/19.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactAddFriendCell.h"
#import "FriendTingViewCell.h"

//: @implementation NTESContactAddFriendCell
@implementation FriendTingViewCell

//: - (void)initSubviews{
- (void)initStatus{

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
    imageIcon.image = [UIImage imageNamed:[ChangeData sharedInstance].k_disableTagName];
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
    NSString *my_account = [InputRed preserve:[ChangeData sharedInstance].k_needName];
    //: NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[NIMUserDefaults standardUserDefaults].accountName];
    NSString *myCodeStr = [NSString stringWithFormat:@"%@:%@",my_account,[SessionRecord afterUser].accountName];
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
    [_myQRCodeBtn setImage:[UIImage imageNamed:[ChangeData sharedInstance].mSendName] forState:UIControlStateNormal];
    //: [_myQRCodeBtn setImage:[UIImage imageNamed:@"icon_user_contact_qr"] forState:UIControlStateHighlighted];
    [_myQRCodeBtn setImage:[UIImage imageNamed:[ChangeData sharedInstance].mSendName] forState:UIControlStateHighlighted];
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
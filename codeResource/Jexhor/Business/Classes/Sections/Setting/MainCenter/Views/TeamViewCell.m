
#import <Foundation/Foundation.h>

@interface ExplosionData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ExplosionData

+ (instancetype)sharedInstance {
    static ExplosionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ExplosionDataToCache:(Byte *)data {
    int withWipe = data[0];
    Byte feather = data[1];
    int textErr = data[2];
    for (int i = textErr; i < textErr + withWipe; i++) {
        int value = data[i] + feather;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[textErr + withWipe] = 0;
    return data + textErr;
}

- (NSString *)StringFromExplosionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ExplosionDataToCache:data]];
}

//: activity_modify_old
- (NSString *)userCollectionPath {
    /* static */ NSString *userCollectionPath = nil;
    if (!userCollectionPath) {
        Byte value[] = {19, 76, 3, 21, 23, 40, 29, 42, 29, 40, 45, 19, 33, 35, 24, 29, 26, 45, 19, 35, 32, 24, 235};
        userCollectionPath = [self StringFromExplosionData:value];
    }
    return userCollectionPath;
}

//: activity_modify_new
- (NSString *)mainDistinctionTitle {
    /* static */ NSString *mainDistinctionTitle = nil;
    if (!mainDistinctionTitle) {
        Byte value[] = {19, 83, 12, 120, 190, 31, 85, 31, 234, 33, 248, 166, 14, 16, 33, 22, 35, 22, 33, 38, 12, 26, 28, 17, 22, 19, 38, 12, 27, 18, 36, 14};
        mainDistinctionTitle = [self StringFromExplosionData:value];
    }
    return mainDistinctionTitle;
}

//: eeeeee
- (NSString *)notiWooTitle {
    /* static */ NSString *notiWooTitle = nil;
    if (!notiWooTitle) {
        Byte value[] = {6, 46, 6, 227, 196, 96, 55, 55, 55, 55, 55, 55, 172};
        notiWooTitle = [self StringFromExplosionData:value];
    }
    return notiWooTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordCell.h"
#import "TeamViewCell.h"

//: @interface NTESChangePasswordCell ()<UITextFieldDelegate>
@interface TeamViewCell ()<UITextFieldDelegate>

//: @end
@end

//: @implementation NTESChangePasswordCell
@implementation TeamViewCell

//: - (void)initSubviews{
- (void)initFrom{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backGround = [[UIView alloc] init];
    UIView *backGround = [[UIView alloc] init];
    //: backGround.backgroundColor = [UIColor whiteColor];
    backGround.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:backGround];
    [self addSubview:backGround];
    //: backGround.layer.masksToBounds = YES;
    backGround.layer.masksToBounds = YES;
    //: backGround.layer.cornerRadius = 5;
    backGround.layer.cornerRadius = 5;
    //: [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(150);
        make.height.mas_equalTo(150);
    //: }];
    }];


    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor user:[[ExplosionData sharedInstance] notiWooTitle]];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(50);
        make.top.mas_offset(50);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];

    //: UIView *lineView_ = [[UIView alloc] init];
    UIView *lineView_ = [[UIView alloc] init];
    //: lineView_.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView_.backgroundColor = [UIColor user:[[ExplosionData sharedInstance] notiWooTitle]];
    //: [self addSubview:lineView_];
    [self addSubview:lineView_];
    //: [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(100);
        make.top.mas_offset(100);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];


    //: _textfile_1 = [[UITextField alloc] init];
    _textfile_1 = [[UITextField alloc] init];
    //: _textfile_1.secureTextEntry = YES;
    _textfile_1.secureTextEntry = YES;
    //: _textfile_1.font = [UIFont systemFontOfSize:16];
    _textfile_1.font = [UIFont systemFontOfSize:16];
    //: _textfile_1.delegate = self;
    _textfile_1.delegate = self;
    //: _textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_old"];
    _textfile_1.placeholder = [BackgroundRandomAttribute content:[[ExplosionData sharedInstance] userCollectionPath]];//@"请输入旧密码";
    //: [backGround addSubview:_textfile_1];
    [backGround addSubview:_textfile_1];
    //: [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(5);
        make.top.mas_offset(5);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_2 = [[UITextField alloc] init];
    _textfile_2 = [[UITextField alloc] init];
    //: _textfile_2.secureTextEntry = YES;
    _textfile_2.secureTextEntry = YES;
    //: _textfile_2.font = [UIFont systemFontOfSize:16];
    _textfile_2.font = [UIFont systemFontOfSize:16];
    //: _textfile_2.delegate = self;
    _textfile_2.delegate = self;
    //: _textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_2.placeholder = [BackgroundRandomAttribute content:[[ExplosionData sharedInstance] mainDistinctionTitle]];//@"请输入新密码";
    //: [backGround addSubview:_textfile_2];
    [backGround addSubview:_textfile_2];
    //: [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(55);
        make.top.mas_offset(55);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_3 = [[UITextField alloc] init];
    _textfile_3 = [[UITextField alloc] init];
    //: _textfile_3.secureTextEntry = YES;
    _textfile_3.secureTextEntry = YES;
    //: _textfile_3.font = [UIFont systemFontOfSize:16];
    _textfile_3.font = [UIFont systemFontOfSize:16];
    //: _textfile_3.delegate = self;
    _textfile_3.delegate = self;
    //: _textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_3.placeholder = [BackgroundRandomAttribute content:[[ExplosionData sharedInstance] mainDistinctionTitle]];//@"请确认新密码";
    //: [backGround addSubview:_textfile_3];
    [backGround addSubview:_textfile_3];
    //: [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(105);
        make.top.mas_offset(105);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

}

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [textField resignFirstResponder];
    [textField resignFirstResponder];
    //: return YES;
    return YES;
}

//: @end
@end
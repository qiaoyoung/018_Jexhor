
#import <Foundation/Foundation.h>

typedef struct {
    Byte doParent;
    Byte *viewDisable;
    unsigned int representation;
	int appearImage;
	int byThread;
} StructValueAtData;

@interface ValueAtData : NSObject

@end

@implementation ValueAtData

+ (Byte *)ValueAtDataToByte:(StructValueAtData *)data {
    for (int i = 0; i < data->representation; i++) {
        data->viewDisable[i] ^= data->doParent;
    }
    data->viewDisable[data->representation] = 0;
	if (data->representation >= 2) {
		data->appearImage = data->viewDisable[0];
		data->byThread = data->viewDisable[1];
	}
    return data->viewDisable;
}

+ (NSString *)StringFromValueAtData:(StructValueAtData *)data {
    return [NSString stringWithUTF8String:(char *)[self ValueAtDataToByte:data]];
}

//: activity_modify_new
+ (NSString *)mCountName {
    /* static */ NSString *mCountName = nil;
    if (!mCountName) {
        StructValueAtData value = (StructValueAtData){58, (Byte []){91, 89, 78, 83, 76, 83, 78, 67, 101, 87, 85, 94, 83, 92, 67, 101, 84, 95, 77, 120}, 19, 100, 222};
        mCountName = [self StringFromValueAtData:&value];
    }
    return mCountName;
}

//: activity_modify_old
+ (NSString *)dream_tagText {
    /* static */ NSString *dream_tagText = nil;
    if (!dream_tagText) {
        StructValueAtData value = (StructValueAtData){181, (Byte []){212, 214, 193, 220, 195, 220, 193, 204, 234, 216, 218, 209, 220, 211, 204, 234, 218, 217, 209, 191}, 19, 3, 4};
        dream_tagText = [self StringFromValueAtData:&value];
    }
    return dream_tagText;
}

//: eeeeee
+ (NSString *)m_hideName {
    /* static */ NSString *m_hideName = nil;
    if (!m_hideName) {
        StructValueAtData value = (StructValueAtData){22, (Byte []){115, 115, 115, 115, 115, 115, 124}, 6, 126, 229};
        m_hideName = [self StringFromValueAtData:&value];
    }
    return m_hideName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordCell.h"
#import "TingViewCell.h"

//: @interface NTESChangePasswordCell ()<UITextFieldDelegate>
@interface TingViewCell ()<UITextFieldDelegate>

//: @end
@end

//: @implementation NTESChangePasswordCell
@implementation TingViewCell

//: - (void)initSubviews{
- (void)initStatus{

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
    lineView.backgroundColor = [UIColor ground:[ValueAtData m_hideName]];
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
    lineView_.backgroundColor = [UIColor ground:[ValueAtData m_hideName]];
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
    //: _textfile_1.placeholder = [WorkLanguageManager getTextWithKey:@"activity_modify_old"];
    _textfile_1.placeholder = [InputRed preserve:[ValueAtData dream_tagText]];//@"请输入旧密码";
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
    //: _textfile_2.placeholder = [WorkLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_2.placeholder = [InputRed preserve:[ValueAtData mCountName]];//@"请输入新密码";
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
    //: _textfile_3.placeholder = [WorkLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_3.placeholder = [InputRed preserve:[ValueAtData mCountName]];//@"请确认新密码";
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


#import <Foundation/Foundation.h>

@interface LabelWithData : NSObject

+ (instancetype)sharedInstance;

//: btn_right
@property (nonatomic, copy) NSString *dreamShowOldValue;

//: #3F3F3F
@property (nonatomic, copy) NSString *noti_addTitle;

@end

@implementation LabelWithData

+ (instancetype)sharedInstance {
    static LabelWithData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LabelWithDataToCache:(Byte *)data {
    int viewHandle = data[0];
    int canMust = data[1];
    for (int i = 0; i < viewHandle / 2; i++) {
        int begin = canMust + i;
        int end = canMust + viewHandle - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[canMust + viewHandle] = 0;
    return data + canMust;
}

- (NSString *)StringFromLabelWithData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LabelWithDataToCache:data]];
}  

//: #3F3F3F
- (NSString *)noti_addTitle {
    if (!_noti_addTitle) {
        Byte value[] = {7, 12, 118, 2, 210, 208, 4, 208, 208, 90, 195, 126, 70, 51, 70, 51, 70, 51, 35, 146};
        _noti_addTitle = [self StringFromLabelWithData:value];
    }
    return _noti_addTitle;
}

//: btn_right
- (NSString *)dreamShowOldValue {
    if (!_dreamShowOldValue) {
        Byte value[] = {9, 4, 151, 170, 116, 104, 103, 105, 114, 95, 110, 116, 98, 42};
        _dreamShowOldValue = [self StringFromLabelWithData:value];
    }
    return _dreamShowOldValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PhoneMessageView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingCell.h"
#import "PhoneMessageView.h"

//: @implementation NTESSafetySetingCell
@implementation PhoneMessageView

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
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
    //: }];
    }];




    //: _buttonTop = [UIButton buttonWithType:UIButtonTypeCustom];
    _buttonTop = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self addSubview:_buttonTop];
    [self addSubview:_buttonTop];
    //: [_buttonTop mas_makeConstraints:^(MASConstraintMaker *make) {
    [_buttonTop mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
    //: }];
    }];



    //: _topLabel = [[UILabel alloc] init];
    _topLabel = [[UILabel alloc] init];
    //: _topLabel.font = [UIFont systemFontOfSize:16];
    _topLabel.font = [UIFont systemFontOfSize:16];
    //: _topLabel.text = @"";
    _topLabel.text = @"";
    //: _topLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _topLabel.textColor = [UIColor ground:[LabelWithData sharedInstance].noti_addTitle];
    //: [_buttonTop addSubview:_topLabel];
    [_buttonTop addSubview:_topLabel];
    //: [_topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(300);
        make.width.mas_equalTo(300);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];


    //: UIImageView *arrowImage = [[UIImageView alloc] init];
    UIImageView *arrowImage = [[UIImageView alloc] init];
    //: arrowImage.image = [UIImage imageNamed:@"btn_right"];
    arrowImage.image = [UIImage imageNamed:[LabelWithData sharedInstance].dreamShowOldValue];
    //: [_buttonTop addSubview:arrowImage];
    [_buttonTop addSubview:arrowImage];
    //: [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);

    //: }];
    }];

}


//: @end
@end
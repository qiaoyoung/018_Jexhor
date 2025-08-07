
#import <Foundation/Foundation.h>

@interface InsertData : NSObject

+ (instancetype)sharedInstance;

//: btn_right
@property (nonatomic, copy) NSString *m_vileUrl;

//: #3F3F3F
@property (nonatomic, copy) NSString *app_rageKey;

@end

@implementation InsertData

+ (instancetype)sharedInstance {
    static InsertData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InsertDataToCache:(Byte *)data {
    int distract = data[0];
    int deadCoverVersion = data[1];
    for (int i = 0; i < distract / 2; i++) {
        int begin = deadCoverVersion + i;
        int end = deadCoverVersion + distract - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[deadCoverVersion + distract] = 0;
    return data + deadCoverVersion;
}

- (NSString *)StringFromInsertData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InsertDataToCache:data]];
}  

//: #3F3F3F
- (NSString *)app_rageKey {
    if (!_app_rageKey) {
        Byte value[] = {7, 8, 49, 3, 206, 151, 223, 153, 70, 51, 70, 51, 70, 51, 35, 111};
        _app_rageKey = [self StringFromInsertData:value];
    }
    return _app_rageKey;
}

//: btn_right
- (NSString *)m_vileUrl {
    if (!_m_vileUrl) {
        Byte value[] = {9, 5, 72, 247, 246, 116, 104, 103, 105, 114, 95, 110, 116, 98, 223};
        _m_vileUrl = [self StringFromInsertData:value];
    }
    return _m_vileUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverImpregnabilityViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingCell.h"
#import "CoverImpregnabilityViewCell.h"

//: @implementation NTESSafetySetingCell
@implementation CoverImpregnabilityViewCell

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
    _topLabel.textColor = [UIColor user:[InsertData sharedInstance].app_rageKey];
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
    arrowImage.image = [UIImage imageNamed:[InsertData sharedInstance].m_vileUrl];
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
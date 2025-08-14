
#import <Foundation/Foundation.h>

@interface DoingHideData : NSObject

+ (instancetype)sharedInstance;

//: user_device_phone
@property (nonatomic, copy) NSString *mAddValue;

//: iPhone
@property (nonatomic, copy) NSString *kThreadName;

//: systems
@property (nonatomic, copy) NSString *appByChangeViewText;

//: telname
@property (nonatomic, copy) NSString *m_limitName;

//: addtime
@property (nonatomic, copy) NSString *user_readTitle;

@end

@implementation DoingHideData

+ (instancetype)sharedInstance {
    static DoingHideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DoingHideDataToCache:(Byte *)data {
    int makeButton = data[0];
    int itemButton = data[1];
    for (int i = 0; i < makeButton / 2; i++) {
        int begin = itemButton + i;
        int end = itemButton + makeButton - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[itemButton + makeButton] = 0;
    return data + itemButton;
}

- (NSString *)StringFromDoingHideData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DoingHideDataToCache:data]];
}  

//: iPhone
- (NSString *)kThreadName {
    if (!_kThreadName) {
        Byte value[] = {6, 5, 14, 108, 152, 101, 110, 111, 104, 80, 105, 34};
        _kThreadName = [self StringFromDoingHideData:value];
    }
    return _kThreadName;
}

//: systems
- (NSString *)appByChangeViewText {
    if (!_appByChangeViewText) {
        Byte value[] = {7, 9, 247, 166, 210, 75, 161, 215, 52, 115, 109, 101, 116, 115, 121, 115, 137};
        _appByChangeViewText = [self StringFromDoingHideData:value];
    }
    return _appByChangeViewText;
}

//: user_device_phone
- (NSString *)mAddValue {
    if (!_mAddValue) {
        Byte value[] = {17, 7, 171, 20, 81, 79, 94, 101, 110, 111, 104, 112, 95, 101, 99, 105, 118, 101, 100, 95, 114, 101, 115, 117, 177};
        _mAddValue = [self StringFromDoingHideData:value];
    }
    return _mAddValue;
}

//: telname
- (NSString *)m_limitName {
    if (!_m_limitName) {
        Byte value[] = {7, 2, 101, 109, 97, 110, 108, 101, 116, 194};
        _m_limitName = [self StringFromDoingHideData:value];
    }
    return _m_limitName;
}

//: addtime
- (NSString *)user_readTitle {
    if (!_user_readTitle) {
        Byte value[] = {7, 9, 154, 236, 136, 217, 202, 60, 16, 101, 109, 105, 116, 100, 100, 97, 180};
        _user_readTitle = [self StringFromDoingHideData:value];
    }
    return _user_readTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AirtViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDeviceListTableViewCell.h"
#import "AirtViewCell.h"

//: @implementation NTESDeviceListTableViewCell
@implementation AirtViewCell

//: - (void)initSubviews{
- (void)initStatus{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = [DoingHideData sharedInstance].kThreadName;
    //: _deviceName.font = [UIFont systemFontOfSize:16];
    _deviceName.font = [UIFont systemFontOfSize:16];
    //: _deviceName.textColor = [UIColor blackColor];
    _deviceName.textColor = [UIColor blackColor];
    //: [self addSubview:_deviceName];
    [self addSubview:_deviceName];
    //: [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _imageViewIcon = [[UIImageView alloc] init];
    _imageViewIcon = [[UIImageView alloc] init];
    //: _imageViewIcon.image = [UIImage imageNamed:@"user_device_phone"];
    _imageViewIcon.image = [UIImage imageNamed:[DoingHideData sharedInstance].mAddValue];
    //: [self addSubview:_imageViewIcon];
    [self addSubview:_imageViewIcon];
    //: [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);

    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.text = @"iPhone";
    _timeLabel.text = [DoingHideData sharedInstance].kThreadName;
    //: _timeLabel.font = [UIFont systemFontOfSize:14];
    _timeLabel.font = [UIFont systemFontOfSize:14];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: _timeLabel.textAlignment = NSTextAlignmentRight;
    _timeLabel.textAlignment = NSTextAlignmentRight;
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _deveceVersion = [[UILabel alloc] init];
    _deveceVersion = [[UILabel alloc] init];
    //: _deveceVersion.text = @"iPhone";
    _deveceVersion.text = [DoingHideData sharedInstance].kThreadName;
    //: _deveceVersion.font = [UIFont systemFontOfSize:14];
    _deveceVersion.font = [UIFont systemFontOfSize:14];
    //: _deveceVersion.textAlignment = NSTextAlignmentRight;
    _deveceVersion.textAlignment = NSTextAlignmentRight;
    //: _deveceVersion.textColor = [UIColor lightGrayColor];
    _deveceVersion.textColor = [UIColor lightGrayColor];
    //: [self addSubview:_deveceVersion];
    [self addSubview:_deveceVersion];
    //: [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.bottom.mas_offset(-15);
        make.bottom.mas_offset(-15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];
}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)color:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information route:[DoingHideData sharedInstance].m_limitName];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information route:[DoingHideData sharedInstance].appByChangeViewText];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information route:[DoingHideData sharedInstance].user_readTitle];
}

//: @end
@end
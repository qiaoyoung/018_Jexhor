
#import <Foundation/Foundation.h>

@interface ChartNorthernData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ChartNorthernData

+ (instancetype)sharedInstance {
    static ChartNorthernData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ChartNorthernDataToCache:(Byte *)data {
    int photography = data[0];
    int withComplete = data[1];
    for (int i = 0; i < photography / 2; i++) {
        int begin = withComplete + i;
        int end = withComplete + photography - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[withComplete + photography] = 0;
    return data + withComplete;
}

- (NSString *)StringFromChartNorthernData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChartNorthernDataToCache:data]];
}  

//: lang
- (NSString *)k_inputId {
    /* static */ NSString *k_inputId = nil;
    if (!k_inputId) {
        Byte value[] = {4, 11, 82, 173, 108, 76, 227, 161, 94, 134, 163, 103, 110, 97, 108, 177};
        k_inputId = [self StringFromChartNorthernData:value];
    }
    return k_inputId;
}

//: #27303F
- (NSString *)notiEconomicalButtonMsg {
    /* static */ NSString *notiEconomicalButtonMsg = nil;
    if (!notiEconomicalButtonMsg) {
        Byte value[] = {7, 7, 63, 64, 208, 229, 116, 70, 51, 48, 51, 55, 50, 35, 97};
        notiEconomicalButtonMsg = [self StringFromChartNorthernData:value];
    }
    return notiEconomicalButtonMsg;
}

//: #F6F7FA
- (NSString *)m_messageUrl {
    /* static */ NSString *m_messageUrl = nil;
    if (!m_messageUrl) {
        Byte value[] = {7, 8, 146, 34, 129, 93, 134, 150, 65, 70, 55, 70, 54, 70, 35, 12};
        m_messageUrl = [self StringFromChartNorthernData:value];
    }
    return m_messageUrl;
}

//: #ffffff
- (NSString *)main_standingData {
    /* static */ NSString *main_standingData = nil;
    if (!main_standingData) {
        Byte value[] = {7, 2, 102, 102, 102, 102, 102, 102, 35, 110};
        main_standingData = [self StringFromChartNorthernData:value];
    }
    return main_standingData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "ChangeViewCell.h"

//: @implementation NTESLanguageTableViewCell
@implementation ChangeViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:[[ChartNorthernData sharedInstance] k_inputId]]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor user:[[ChartNorthernData sharedInstance] main_standingData]];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
}


//: - (UILabel *)labTitle {
- (UILabel *)labTitle {
    //: if (!_labTitle) {
    if (!_labTitle) {
        //: _labTitle = [[UILabel alloc] init];
        _labTitle = [[UILabel alloc] init];
        //: _labTitle.font = [UIFont systemFontOfSize:14.f];
        _labTitle.font = [UIFont systemFontOfSize:14.f];
        //: _labTitle.textColor = [UIColor colorWithHexString:@"#27303F"];
        _labTitle.textColor = [UIColor user:[[ChartNorthernData sharedInstance] notiEconomicalButtonMsg]];
        //: _labTitle.textAlignment = NSTextAlignmentLeft;
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labTitle;
    return _labTitle;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor user:[[ChartNorthernData sharedInstance] m_messageUrl]];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)countyImg
- (UIImageView *)countyImg
{
    //: if (!_countyImg) {
    if (!_countyImg) {
        //: _countyImg = [[UIImageView alloc] init];
        _countyImg = [[UIImageView alloc] init];
    }
    //: return _countyImg;
    return _countyImg;
}

//: @end
@end
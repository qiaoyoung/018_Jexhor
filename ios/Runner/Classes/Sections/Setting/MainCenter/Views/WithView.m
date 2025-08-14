
#import <Foundation/Foundation.h>

@interface InstrumentationData : NSObject

@end

@implementation InstrumentationData

+ (Byte *)InstrumentationDataToCache:(Byte *)data {
    int cuttingEdge = data[0];
    int valueButton = data[1];
    for (int i = 0; i < cuttingEdge / 2; i++) {
        int begin = valueButton + i;
        int end = valueButton + cuttingEdge - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[valueButton + cuttingEdge] = 0;
    return data + valueButton;
}

+ (NSString *)StringFromInstrumentationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InstrumentationDataToCache:data]];
}  

//: #F6F7FA
+ (NSString *)noti_completeData {
    /* static */ NSString *noti_completeData = nil;
    if (!noti_completeData) {
        Byte value[] = {7, 7, 57, 132, 218, 188, 6, 65, 70, 55, 70, 54, 70, 35, 167};
        noti_completeData = [self StringFromInstrumentationData:value];
    }
    return noti_completeData;
}

//: lang
+ (NSString *)mSuccessTitle {
    /* static */ NSString *mSuccessTitle = nil;
    if (!mSuccessTitle) {
        Byte value[] = {4, 12, 252, 234, 1, 187, 50, 158, 57, 131, 143, 210, 103, 110, 97, 108, 55};
        mSuccessTitle = [self StringFromInstrumentationData:value];
    }
    return mSuccessTitle;
}

//: #fffWork
+ (NSString *)dreamHandleValue {
    /* static */ NSString *dreamHandleValue = nil;
    if (!dreamHandleValue) {
        Byte value[] = {7, 2, 102, 102, 102, 102, 102, 102, 35, 255};
        dreamHandleValue = [self StringFromInstrumentationData:value];
    }
    return dreamHandleValue;
}

//: #27303F
+ (NSString *)showMakeData {
    /* static */ NSString *showMakeData = nil;
    if (!showMakeData) {
        Byte value[] = {7, 3, 73, 70, 51, 48, 51, 55, 50, 35, 115};
        showMakeData = [self StringFromInstrumentationData:value];
    }
    return showMakeData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "WithView.h"

//: @implementation NTESLanguageTableViewCell
@implementation WithView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:[InstrumentationData mSuccessTitle]]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffWork"];
        self.backgroundColor = [UIColor ground:[InstrumentationData dreamHandleValue]];
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
        _labTitle.textColor = [UIColor ground:[InstrumentationData showMakeData]];
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
        _lineView.backgroundColor = [UIColor ground:[InstrumentationData noti_completeData]];
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

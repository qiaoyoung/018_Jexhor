
#import <Foundation/Foundation.h>

@interface ComfortData : NSObject

+ (instancetype)sharedInstance;

//: #ECECEC
@property (nonatomic, copy) NSString *kInjureHarmSessionValue;

//: #05D481
@property (nonatomic, copy) NSString *notiMeasureData;

//: #2C3042
@property (nonatomic, copy) NSString *mCussWithTitle;

//: icon_me_arrow
@property (nonatomic, copy) NSString *notiImageSovereignName;

@end

@implementation ComfortData

+ (instancetype)sharedInstance {
    static ComfortData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ComfortDataToCache:(Byte *)data {
    int brattice = data[0];
    Byte informalView = data[1];
    int jacketImageConvince = data[2];
    for (int i = jacketImageConvince; i < jacketImageConvince + brattice; i++) {
        int value = data[i] - informalView;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[jacketImageConvince + brattice] = 0;
    return data + jacketImageConvince;
}

- (NSString *)StringFromComfortData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComfortDataToCache:data]];
}

//: #2C3042
- (NSString *)mCussWithTitle {
    if (!_mCussWithTitle) {
        Byte value[] = {7, 43, 5, 22, 8, 78, 93, 110, 94, 91, 95, 93, 50};
        _mCussWithTitle = [self StringFromComfortData:value];
    }
    return _mCussWithTitle;
}

//: icon_me_arrow
- (NSString *)notiImageSovereignName {
    if (!_notiImageSovereignName) {
        Byte value[] = {13, 89, 13, 7, 139, 159, 121, 36, 249, 59, 248, 91, 182, 194, 188, 200, 199, 184, 198, 190, 184, 186, 203, 203, 200, 208, 60};
        _notiImageSovereignName = [self StringFromComfortData:value];
    }
    return _notiImageSovereignName;
}

//: #ECECEC
- (NSString *)kInjureHarmSessionValue {
    if (!_kInjureHarmSessionValue) {
        Byte value[] = {7, 26, 5, 133, 67, 61, 95, 93, 95, 93, 95, 93, 212};
        _kInjureHarmSessionValue = [self StringFromComfortData:value];
    }
    return _kInjureHarmSessionValue;
}

//: #05D481
- (NSString *)notiMeasureData {
    if (!_notiMeasureData) {
        Byte value[] = {7, 72, 11, 247, 19, 109, 197, 220, 79, 233, 53, 107, 120, 125, 140, 124, 128, 121, 157};
        _notiMeasureData = [self StringFromComfortData:value];
    }
    return _notiMeasureData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputKeyView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupEditTableViewCell.h"
#import "InputKeyView.h"

//: @implementation FFFGroupEditTableViewCell
@implementation InputKeyView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initModel];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initModel {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
//    [self.contentView addSubview:self.contentLabel];
//    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
//    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, SCREEN_WIDTH-80, 15);
//    self.lineView.frame = CGRectMake(60, 49.5, SCREEN_WIDTH-90, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor ground:[ComfortData sharedInstance].kInjureHarmSessionValue];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:[ComfortData sharedInstance].notiImageSovereignName];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor ground:[ComfortData sharedInstance].mCussWithTitle];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#05D481"];
        _contentLabel.textColor = [UIColor ground:[ComfortData sharedInstance].notiMeasureData];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end
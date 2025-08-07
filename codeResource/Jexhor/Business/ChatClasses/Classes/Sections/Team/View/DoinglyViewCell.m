
#import <Foundation/Foundation.h>

typedef struct {
    Byte innovationDeadIsle;
    Byte *userSample;
    unsigned int aspectRabbit;
	int recommend;
	int homeRum;
} StructImageComplainData;

@interface ImageComplainData : NSObject

+ (instancetype)sharedInstance;

//: #ECECEC
@property (nonatomic, copy) NSString *notiIsleMsg;

//: #05D481
@property (nonatomic, copy) NSString *app_ironicalFormat;

//: #2C3042
@property (nonatomic, copy) NSString *main_satelliteIdent;

//: icon_me_arrow
@property (nonatomic, copy) NSString *mUpUrl;

@end

@implementation ImageComplainData

+ (instancetype)sharedInstance {
    static ImageComplainData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ImageComplainDataToByte:(StructImageComplainData *)data {
    for (int i = 0; i < data->aspectRabbit; i++) {
        data->userSample[i] ^= data->innovationDeadIsle;
    }
    data->userSample[data->aspectRabbit] = 0;
	if (data->aspectRabbit >= 2) {
		data->recommend = data->userSample[0];
		data->homeRum = data->userSample[1];
	}
    return data->userSample;
}

- (NSString *)StringFromImageComplainData:(StructImageComplainData *)data {
    return [NSString stringWithUTF8String:(char *)[self ImageComplainDataToByte:data]];
}

//: #05D481
- (NSString *)app_ironicalFormat {
    if (!_app_ironicalFormat) {
        StructImageComplainData value = (StructImageComplainData){170, (Byte []){137, 154, 159, 238, 158, 146, 155, 215}, 7, 142, 218};
        _app_ironicalFormat = [self StringFromImageComplainData:&value];
    }
    return _app_ironicalFormat;
}

//: #2C3042
- (NSString *)main_satelliteIdent {
    if (!_main_satelliteIdent) {
        StructImageComplainData value = (StructImageComplainData){145, (Byte []){178, 163, 210, 162, 161, 165, 163, 29}, 7, 32, 151};
        _main_satelliteIdent = [self StringFromImageComplainData:&value];
    }
    return _main_satelliteIdent;
}

//: #ECECEC
- (NSString *)notiIsleMsg {
    if (!_notiIsleMsg) {
        StructImageComplainData value = (StructImageComplainData){153, (Byte []){186, 220, 218, 220, 218, 220, 218, 218}, 7, 7, 111};
        _notiIsleMsg = [self StringFromImageComplainData:&value];
    }
    return _notiIsleMsg;
}

//: icon_me_arrow
- (NSString *)mUpUrl {
    if (!_mUpUrl) {
        StructImageComplainData value = (StructImageComplainData){27, (Byte []){114, 120, 116, 117, 68, 118, 126, 68, 122, 105, 105, 116, 108, 157}, 13, 171, 144};
        _mUpUrl = [self StringFromImageComplainData:&value];
    }
    return _mUpUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoinglyViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushGroupEditTableViewCell.h"
#import "DoinglyViewCell.h"

//: @implementation PushGroupEditTableViewCell
@implementation DoinglyViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initMasterKey];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initMasterKey {
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
        _lineView.backgroundColor = [UIColor user:[ImageComplainData sharedInstance].notiIsleMsg];
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
        _arrowsImageView.image = [UIImage imageNamed:[ImageComplainData sharedInstance].mUpUrl];
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
        _titleLabel.textColor = [UIColor user:[ImageComplainData sharedInstance].main_satelliteIdent];
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
        _contentLabel.textColor = [UIColor user:[ImageComplainData sharedInstance].app_ironicalFormat];
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

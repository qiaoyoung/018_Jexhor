
#import <Foundation/Foundation.h>

typedef struct {
    Byte teamWhich;
    Byte *venue;
    unsigned int visualisation;
	int nuclearAbort;
	int court;
} StructReflexionData;

@interface ReflexionData : NSObject

+ (instancetype)sharedInstance;

//: head_default
@property (nonatomic, copy) NSString *userRoughIdent;

//: eeeeee
@property (nonatomic, copy) NSString *showInsideMessage;

//: mine_btn_right
@property (nonatomic, copy) NSString *showInvestorText;

//: #3F3F3F
@property (nonatomic, copy) NSString *showPositionPath;

@end

@implementation ReflexionData

+ (instancetype)sharedInstance {
    static ReflexionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ReflexionDataToByte:(StructReflexionData *)data {
    for (int i = 0; i < data->visualisation; i++) {
        data->venue[i] ^= data->teamWhich;
    }
    data->venue[data->visualisation] = 0;
	if (data->visualisation >= 2) {
		data->nuclearAbort = data->venue[0];
		data->court = data->venue[1];
	}
    return data->venue;
}

- (NSString *)StringFromReflexionData:(StructReflexionData *)data {
    return [NSString stringWithUTF8String:(char *)[self ReflexionDataToByte:data]];
}

//: mine_btn_right
- (NSString *)showInvestorText {
    if (!_showInvestorText) {
        StructReflexionData value = (StructReflexionData){47, (Byte []){66, 70, 65, 74, 112, 77, 91, 65, 112, 93, 70, 72, 71, 91, 52}, 14, 69, 97};
        _showInvestorText = [self StringFromReflexionData:&value];
    }
    return _showInvestorText;
}

//: #3F3F3F
- (NSString *)showPositionPath {
    if (!_showPositionPath) {
        StructReflexionData value = (StructReflexionData){244, (Byte []){215, 199, 178, 199, 178, 199, 178, 249}, 7, 148, 147};
        _showPositionPath = [self StringFromReflexionData:&value];
    }
    return _showPositionPath;
}

//: eeeeee
- (NSString *)showInsideMessage {
    if (!_showInsideMessage) {
        StructReflexionData value = (StructReflexionData){40, (Byte []){77, 77, 77, 77, 77, 77, 164}, 6, 108, 115};
        _showInsideMessage = [self StringFromReflexionData:&value];
    }
    return _showInsideMessage;
}

//: head_default
- (NSString *)userRoughIdent {
    if (!_userRoughIdent) {
        StructReflexionData value = (StructReflexionData){109, (Byte []){5, 8, 12, 9, 50, 9, 8, 11, 12, 24, 1, 25, 212}, 12, 33, 5};
        _userRoughIdent = [self StringFromReflexionData:&value];
    }
    return _userRoughIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickLayerViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistCustomCell.h"
#import "ClickLayerViewCell.h"

//: @implementation NTESRegistCustomCell
@implementation ClickLayerViewCell

//: - (void)initSubviews{
- (void)initFrom{


    //: CGFloat scale = 1.f;
    CGFloat scale = 1.f;

    //: if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
    if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
        //: scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
        scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
    }

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:16];
    _titleLabel.font = [UIFont systemFontOfSize:16];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _titleLabel.textColor = [UIColor user:[ReflexionData sharedInstance].showPositionPath];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(20*scale);
        make.top.mas_offset(20*scale);
        //: make.bottom.mas_offset(-20*scale);
        make.bottom.mas_offset(-20*scale);
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.width.mas_equalTo(100*scale);
        make.width.mas_equalTo(100*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];

    //: _arrowImageView = [[UIImageView alloc] init];
    _arrowImageView = [[UIImageView alloc] init];
    //: _arrowImageView.image = [UIImage imageNamed:@"mine_btn_right"];
    _arrowImageView.image = [UIImage imageNamed:[ReflexionData sharedInstance].showInvestorText];
    //: [self addSubview:_arrowImageView];
    [self addSubview:_arrowImageView];
    //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
    //: }];
    }];


    //: _contentTextField = [[UITextField alloc] init];
    _contentTextField = [[UITextField alloc] init];
    //: _contentTextField.textAlignment = NSTextAlignmentRight;
    _contentTextField.textAlignment = NSTextAlignmentRight;
    //: _contentTextField.userInteractionEnabled = NO;
    _contentTextField.userInteractionEnabled = NO;
    //: [self addSubview:_contentTextField];
    [self addSubview:_contentTextField];
    //: [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50);
        make.right.mas_offset(-50);
        //: make.width.mas_equalTo(180*scale);
        make.width.mas_equalTo(180*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];


    //: _headerImageView = [[UIImageView alloc] init];
    _headerImageView = [[UIImageView alloc] init];
    //: _headerImageView.image = [UIImage imageNamed:@"head_default"];
    _headerImageView.image = [UIImage imageNamed:[ReflexionData sharedInstance].userRoughIdent];
    //: _headerImageView.backgroundColor = [UIColor clearColor];
    _headerImageView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_headerImageView];
    [self addSubview:_headerImageView];
    //: _headerImageView.layer.masksToBounds = YES;
    _headerImageView.layer.masksToBounds = YES;
    //: _headerImageView.layer.cornerRadius = 23*scale;
    _headerImageView.layer.cornerRadius = 23*scale;
    //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50*scale);
        make.right.mas_offset(-50*scale);
        //: make.width.mas_equalTo(46*scale);
        make.width.mas_equalTo(46*scale);
        //: make.height.mas_equalTo(46*scale);
        make.height.mas_equalTo(46*scale);
    //: }];
    }];



    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor user:[ReflexionData sharedInstance].showInsideMessage];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.right.mas_offset(-25);
        make.right.mas_offset(-25);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];
}

//: @end
@end
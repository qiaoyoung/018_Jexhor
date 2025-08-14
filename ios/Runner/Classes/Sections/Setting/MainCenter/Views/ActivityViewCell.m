
#import <Foundation/Foundation.h>

typedef struct {
    Byte messageScale;
    Byte *airBubble;
    unsigned int tableOld;
	int textVideo;
	int criticize;
	int oldRemove;
} StructExhibitData;

@interface ExhibitData : NSObject

+ (instancetype)sharedInstance;

//: user_nickname
@property (nonatomic, copy) NSString *dreamFileRemoveText;

//: #DF7055
@property (nonatomic, copy) NSString *show_infoMaxText;

//: count
@property (nonatomic, copy) NSString *dreamSessionHandleTitle;

//: nickname
@property (nonatomic, copy) NSString *notiDisableValue;

//: words
@property (nonatomic, copy) NSString *kAtData;

//: user_redpackage_prise
@property (nonatomic, copy) NSString *dream_endValue;

//: createtime
@property (nonatomic, copy) NSString *k_withViewName;

//: avatar
@property (nonatomic, copy) NSString *m_viewRowData;

//: back_white
@property (nonatomic, copy) NSString *userOldValue;

//: user_avatar
@property (nonatomic, copy) NSString *mainLabelData;

//: #F1F1F1
@property (nonatomic, copy) NSString *dreamLengthText;

//: amount
@property (nonatomic, copy) NSString *kBubbleName;

//: icon_redpackage_top
@property (nonatomic, copy) NSString *showAppearContent;

//: %@个红包，共%@元
@property (nonatomic, copy) NSString *dreamColorAddData;

@end

@implementation ExhibitData

+ (instancetype)sharedInstance {
    static ExhibitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ExhibitDataToByte:(StructExhibitData *)data {
    for (int i = 0; i < data->tableOld; i++) {
        data->airBubble[i] ^= data->messageScale;
    }
    data->airBubble[data->tableOld] = 0;
	if (data->tableOld >= 3) {
		data->textVideo = data->airBubble[0];
		data->criticize = data->airBubble[1];
		data->oldRemove = data->airBubble[2];
	}
    return data->airBubble;
}

- (NSString *)StringFromExhibitData:(StructExhibitData *)data {
    return [NSString stringWithUTF8String:(char *)[self ExhibitDataToByte:data]];
}

//: user_avatar
- (NSString *)mainLabelData {
    if (!_mainLabelData) {
        StructExhibitData value = (StructExhibitData){226, (Byte []){151, 145, 135, 144, 189, 131, 148, 131, 150, 131, 144, 229}, 11, 45, 181, 73};
        _mainLabelData = [self StringFromExhibitData:&value];
    }
    return _mainLabelData;
}

//: user_redpackage_prise
- (NSString *)dream_endValue {
    if (!_dream_endValue) {
        StructExhibitData value = (StructExhibitData){143, (Byte []){250, 252, 234, 253, 208, 253, 234, 235, 255, 238, 236, 228, 238, 232, 234, 208, 255, 253, 230, 252, 234, 204}, 21, 151, 101, 127};
        _dream_endValue = [self StringFromExhibitData:&value];
    }
    return _dream_endValue;
}

//: amount
- (NSString *)kBubbleName {
    if (!_kBubbleName) {
        StructExhibitData value = (StructExhibitData){31, (Byte []){126, 114, 112, 106, 113, 107, 51}, 6, 90, 34, 242};
        _kBubbleName = [self StringFromExhibitData:&value];
    }
    return _kBubbleName;
}

//: #F1F1F1
- (NSString *)dreamLengthText {
    if (!_dreamLengthText) {
        StructExhibitData value = (StructExhibitData){219, (Byte []){248, 157, 234, 157, 234, 157, 234, 89}, 7, 172, 18, 181};
        _dreamLengthText = [self StringFromExhibitData:&value];
    }
    return _dreamLengthText;
}

//: createtime
- (NSString *)k_withViewName {
    if (!_k_withViewName) {
        StructExhibitData value = (StructExhibitData){168, (Byte []){203, 218, 205, 201, 220, 205, 220, 193, 197, 205, 229}, 10, 65, 164, 15};
        _k_withViewName = [self StringFromExhibitData:&value];
    }
    return _k_withViewName;
}

//: user_nickname
- (NSString *)dreamFileRemoveText {
    if (!_dreamFileRemoveText) {
        StructExhibitData value = (StructExhibitData){218, (Byte []){175, 169, 191, 168, 133, 180, 179, 185, 177, 180, 187, 183, 191, 176}, 13, 239, 120, 245};
        _dreamFileRemoveText = [self StringFromExhibitData:&value];
    }
    return _dreamFileRemoveText;
}

//: icon_redpackage_top
- (NSString *)showAppearContent {
    if (!_showAppearContent) {
        StructExhibitData value = (StructExhibitData){245, (Byte []){156, 150, 154, 155, 170, 135, 144, 145, 133, 148, 150, 158, 148, 146, 144, 170, 129, 154, 133, 191}, 19, 250, 202, 1};
        _showAppearContent = [self StringFromExhibitData:&value];
    }
    return _showAppearContent;
}

//: count
- (NSString *)dreamSessionHandleTitle {
    if (!_dreamSessionHandleTitle) {
        StructExhibitData value = (StructExhibitData){83, (Byte []){48, 60, 38, 61, 39, 87}, 5, 235, 167, 108};
        _dreamSessionHandleTitle = [self StringFromExhibitData:&value];
    }
    return _dreamSessionHandleTitle;
}

//: nickname
- (NSString *)notiDisableValue {
    if (!_notiDisableValue) {
        StructExhibitData value = (StructExhibitData){151, (Byte []){249, 254, 244, 252, 249, 246, 250, 242, 68}, 8, 215, 121, 64};
        _notiDisableValue = [self StringFromExhibitData:&value];
    }
    return _notiDisableValue;
}

//: #DF7055
- (NSString *)show_infoMaxText {
    if (!_show_infoMaxText) {
        StructExhibitData value = (StructExhibitData){123, (Byte []){88, 63, 61, 76, 75, 78, 78, 206}, 7, 61, 248, 56};
        _show_infoMaxText = [self StringFromExhibitData:&value];
    }
    return _show_infoMaxText;
}

//: avatar
- (NSString *)m_viewRowData {
    if (!_m_viewRowData) {
        StructExhibitData value = (StructExhibitData){167, (Byte []){198, 209, 198, 211, 198, 213, 48}, 6, 149, 208, 208};
        _m_viewRowData = [self StringFromExhibitData:&value];
    }
    return _m_viewRowData;
}

//: %@个红包，共%@元
- (NSString *)dreamColorAddData {
    if (!_dreamColorAddData) {
        StructExhibitData value = (StructExhibitData){127, (Byte []){90, 63, 155, 199, 213, 152, 197, 221, 154, 243, 250, 144, 195, 243, 154, 250, 206, 90, 63, 154, 250, 252, 171}, 22, 203, 128, 60};
        _dreamColorAddData = [self StringFromExhibitData:&value];
    }
    return _dreamColorAddData;
}

//: back_white
- (NSString *)userOldValue {
    if (!_userOldValue) {
        StructExhibitData value = (StructExhibitData){86, (Byte []){52, 55, 53, 61, 9, 33, 62, 63, 34, 51, 69}, 10, 190, 181, 89};
        _userOldValue = [self StringFromExhibitData:&value];
    }
    return _userOldValue;
}

//: words
- (NSString *)kAtData {
    if (!_kAtData) {
        StructExhibitData value = (StructExhibitData){134, (Byte []){241, 233, 244, 226, 245, 84}, 5, 219, 57, 119};
        _kAtData = [self StringFromExhibitData:&value];
    }
    return _kAtData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "ActivityViewCell.h"

//: @implementation NTESRedpackageDetailCell
@implementation ActivityViewCell

//: - (void)initSubviews{
- (void)initStatus{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor ground:[ExhibitData sharedInstance].show_infoMaxText];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice heightShowStop] + 10);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageBack = [[UIImageView alloc] init];
    UIImageView *imageBack = [[UIImageView alloc] init];
    //: imageBack.userInteractionEnabled = YES;
    imageBack.userInteractionEnabled = YES;
    //: imageBack.image = [UIImage imageNamed:@"icon_redpackage_top"];
    imageBack.image = [UIImage imageNamed:[ExhibitData sharedInstance].showAppearContent];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice heightShowStop]);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        //: make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
        make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
    //: }];
    }];

    //: _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_backButton setImage:[UIImage imageNamed:@"back_white"] forState:UIControlStateNormal];
    [_backButton setImage:[UIImage imageNamed:[ExhibitData sharedInstance].userOldValue] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice heightShowStop]);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.width.height.mas_equalTo(35);
        make.width.height.mas_equalTo(35);
    //: }];
    }];


    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:18];
    _nickNameLabel.font = [UIFont systemFontOfSize:18];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [imageBack addSubview:_nickNameLabel];
    [imageBack addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack).mas_offset(13);
        make.centerX.mas_equalTo(imageBack).mas_offset(13);
        //: make.centerY.mas_offset(10);
        make.centerY.mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [imageBack addSubview:_headerImage];
    [imageBack addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 4.2;
    _headerImage.layer.cornerRadius = 4.2;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        //: make.centerY.mas_equalTo(_nickNameLabel);
        make.centerY.mas_equalTo(_nickNameLabel);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];


    //: _wordLabel = [[UILabel alloc] init];
    _wordLabel = [[UILabel alloc] init];
    //: _wordLabel.textAlignment = NSTextAlignmentCenter;
    _wordLabel.textAlignment = NSTextAlignmentCenter;
    //: _wordLabel.font = [UIFont systemFontOfSize:13];
    _wordLabel.font = [UIFont systemFontOfSize:13];
    //: _wordLabel.textColor = [UIColor lightGrayColor];
    _wordLabel.textColor = [UIColor lightGrayColor];
    //: [_wordLabel sizeToFit];
    [_wordLabel sizeToFit];
    //: [imageBack addSubview:_wordLabel];
    [imageBack addSubview:_wordLabel];
    //: [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack);
        make.centerX.mas_equalTo(imageBack);
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];


    //: _contentLabel = [[UILabel alloc] init];
    _contentLabel = [[UILabel alloc] init];
    //: _contentLabel.textAlignment = NSTextAlignmentLeft;
    _contentLabel.textAlignment = NSTextAlignmentLeft;
    //: _contentLabel.font = [UIFont systemFontOfSize:13];
    _contentLabel.font = [UIFont systemFontOfSize:13];
    //: _contentLabel.textColor = [UIColor lightGrayColor];
    _contentLabel.textColor = [UIColor lightGrayColor];
    //: [imageBack addSubview:_contentLabel];
    [imageBack addSubview:_contentLabel];
    //: [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(5);
        make.left.mas_offset(5);
        //: make.bottom.mas_offset(-5);
        make.bottom.mas_offset(-5);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.right.mas_offset(-5);
        make.right.mas_offset(-5);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)color:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information route:[ExhibitData sharedInstance].dreamFileRemoveText];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information route:[ExhibitData sharedInstance].kAtData];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information route:[ExhibitData sharedInstance].mainLabelData]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information route:[ExhibitData sharedInstance].dreamSessionHandleTitle];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information route:[ExhibitData sharedInstance].kBubbleName];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:[ExhibitData sharedInstance].dreamColorAddData,count,amount];

}

//: -(void)backButtonClick{
-(void)everyPoint{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation BarViewCell

//: -(void)initSubviews{
-(void)initStatus{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor ground:[ExhibitData sharedInstance].dreamLengthText];
    //: [self addSubview:line];
    [self addSubview:line];
    //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(0.8);
        make.height.mas_equalTo(0.8);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 5.3;
    _headerImage.layer.cornerRadius = 5.3;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(45);
        make.width.height.mas_equalTo(45);
    //: }];
    }];

    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:15];
    _nickNameLabel.font = [UIFont systemFontOfSize:15];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _praiseImage = [[UIImageView alloc] init];
    _praiseImage = [[UIImageView alloc] init];
    //: _praiseImage.image = [UIImage imageNamed:@"user_redpackage_prise"];
    _praiseImage.image = [UIImage imageNamed:[ExhibitData sharedInstance].dream_endValue];
    //: [self addSubview:_praiseImage];
    [self addSubview:_praiseImage];
    //: [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        //: make.width.height.mas_equalTo(20);
        make.width.height.mas_equalTo(20);
    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.textAlignment = NSTextAlignmentLeft;
    _timeLabel.textAlignment = NSTextAlignmentLeft;
    //: _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];


    //: _redAmountLabel = [[UILabel alloc] init];
    _redAmountLabel = [[UILabel alloc] init];
    //: _redAmountLabel.textAlignment = NSTextAlignmentRight;
    _redAmountLabel.textAlignment = NSTextAlignmentRight;
    //: _redAmountLabel.font = [UIFont systemFontOfSize:18];
    _redAmountLabel.font = [UIFont systemFontOfSize:18];
    //: _redAmountLabel.textColor = [UIColor blackColor];
    _redAmountLabel.textColor = [UIColor blackColor];
    //: [_redAmountLabel sizeToFit];
    [_redAmountLabel sizeToFit];
    //: [self addSubview:_redAmountLabel];
    [self addSubview:_redAmountLabel];
    //: [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(-8);
        make.right.mas_equalTo(-8);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];



}
//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)color:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information route:[ExhibitData sharedInstance].m_viewRowData]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information route:[ExhibitData sharedInstance].notiDisableValue];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information route:[ExhibitData sharedInstance].k_withViewName];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information route:[ExhibitData sharedInstance].kBubbleName]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}

//: @end
@end
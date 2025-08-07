
#import <Foundation/Foundation.h>

@interface ViewDisplayData : NSObject

+ (instancetype)sharedInstance;

//: icon_redpackage_top
@property (nonatomic, copy) NSString *notiIconName;

//: user_redpackage_prise
@property (nonatomic, copy) NSString *m_directMessage;

//: createtime
@property (nonatomic, copy) NSString *main_penaltyKey;

//: %@个红包，共%@元
@property (nonatomic, copy) NSString *notiStyleId;

//: amount
@property (nonatomic, copy) NSString *appRageTeamMessage;

//: back_white
@property (nonatomic, copy) NSString *showLeaveHeroId;

//: count
@property (nonatomic, copy) NSString *showSubData;

//: #F1F1F1
@property (nonatomic, copy) NSString *user_tingButtUrl;

//: user_avatar
@property (nonatomic, copy) NSString *app_viewFormat;

//: avatar
@property (nonatomic, copy) NSString *dreamSodStr;

//: nickname
@property (nonatomic, copy) NSString *app_sustainMessage;

//: #DF7055
@property (nonatomic, copy) NSString *k_rangeWooData;

//: user_nickname
@property (nonatomic, copy) NSString *m_alienFormat;

//: words
@property (nonatomic, copy) NSString *mainIconData;

@end

@implementation ViewDisplayData

+ (instancetype)sharedInstance {
    static ViewDisplayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ViewDisplayDataToCache:(Byte *)data {
    int alienDate = data[0];
    int inputContent = data[1];
    for (int i = 0; i < alienDate / 2; i++) {
        int begin = inputContent + i;
        int end = inputContent + alienDate - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[inputContent + alienDate] = 0;
    return data + inputContent;
}

- (NSString *)StringFromViewDisplayData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ViewDisplayDataToCache:data]];
}  

//: #F1F1F1
- (NSString *)user_tingButtUrl {
    if (!_user_tingButtUrl) {
        Byte value[] = {7, 2, 49, 70, 49, 70, 49, 70, 35, 42};
        _user_tingButtUrl = [self StringFromViewDisplayData:value];
    }
    return _user_tingButtUrl;
}

//: amount
- (NSString *)appRageTeamMessage {
    if (!_appRageTeamMessage) {
        Byte value[] = {6, 3, 60, 116, 110, 117, 111, 109, 97, 112};
        _appRageTeamMessage = [self StringFromViewDisplayData:value];
    }
    return _appRageTeamMessage;
}

//: back_white
- (NSString *)showLeaveHeroId {
    if (!_showLeaveHeroId) {
        Byte value[] = {10, 5, 90, 51, 167, 101, 116, 105, 104, 119, 95, 107, 99, 97, 98, 19};
        _showLeaveHeroId = [self StringFromViewDisplayData:value];
    }
    return _showLeaveHeroId;
}

//: icon_redpackage_top
- (NSString *)notiIconName {
    if (!_notiIconName) {
        Byte value[] = {19, 10, 19, 22, 161, 35, 159, 188, 255, 69, 112, 111, 116, 95, 101, 103, 97, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 159};
        _notiIconName = [self StringFromViewDisplayData:value];
    }
    return _notiIconName;
}

//: %@个红包，共%@元
- (NSString *)notiStyleId {
    if (!_notiStyleId) {
        Byte value[] = {22, 5, 121, 166, 88, 131, 133, 229, 64, 37, 177, 133, 229, 140, 188, 239, 133, 140, 229, 162, 186, 231, 170, 184, 228, 64, 37, 181};
        _notiStyleId = [self StringFromViewDisplayData:value];
    }
    return _notiStyleId;
}

//: nickname
- (NSString *)app_sustainMessage {
    if (!_app_sustainMessage) {
        Byte value[] = {8, 11, 239, 132, 241, 113, 238, 160, 25, 239, 30, 101, 109, 97, 110, 107, 99, 105, 110, 106};
        _app_sustainMessage = [self StringFromViewDisplayData:value];
    }
    return _app_sustainMessage;
}

//: user_avatar
- (NSString *)app_viewFormat {
    if (!_app_viewFormat) {
        Byte value[] = {11, 12, 185, 187, 123, 111, 163, 213, 189, 176, 235, 227, 114, 97, 116, 97, 118, 97, 95, 114, 101, 115, 117, 144};
        _app_viewFormat = [self StringFromViewDisplayData:value];
    }
    return _app_viewFormat;
}

//: createtime
- (NSString *)main_penaltyKey {
    if (!_main_penaltyKey) {
        Byte value[] = {10, 8, 247, 21, 144, 86, 101, 55, 101, 109, 105, 116, 101, 116, 97, 101, 114, 99, 69};
        _main_penaltyKey = [self StringFromViewDisplayData:value];
    }
    return _main_penaltyKey;
}

//: #DF7055
- (NSString *)k_rangeWooData {
    if (!_k_rangeWooData) {
        Byte value[] = {7, 8, 134, 236, 175, 130, 65, 71, 53, 53, 48, 55, 70, 68, 35, 248};
        _k_rangeWooData = [self StringFromViewDisplayData:value];
    }
    return _k_rangeWooData;
}

//: words
- (NSString *)mainIconData {
    if (!_mainIconData) {
        Byte value[] = {5, 7, 55, 37, 22, 231, 134, 115, 100, 114, 111, 119, 17};
        _mainIconData = [self StringFromViewDisplayData:value];
    }
    return _mainIconData;
}

//: user_redpackage_prise
- (NSString *)m_directMessage {
    if (!_m_directMessage) {
        Byte value[] = {21, 12, 135, 26, 56, 18, 199, 173, 244, 228, 222, 178, 101, 115, 105, 114, 112, 95, 101, 103, 97, 107, 99, 97, 112, 100, 101, 114, 95, 114, 101, 115, 117, 24};
        _m_directMessage = [self StringFromViewDisplayData:value];
    }
    return _m_directMessage;
}

//: avatar
- (NSString *)dreamSodStr {
    if (!_dreamSodStr) {
        Byte value[] = {6, 12, 252, 110, 199, 170, 161, 50, 20, 90, 111, 93, 114, 97, 116, 97, 118, 97, 158};
        _dreamSodStr = [self StringFromViewDisplayData:value];
    }
    return _dreamSodStr;
}

//: user_nickname
- (NSString *)m_alienFormat {
    if (!_m_alienFormat) {
        Byte value[] = {13, 2, 101, 109, 97, 110, 107, 99, 105, 110, 95, 114, 101, 115, 117, 50};
        _m_alienFormat = [self StringFromViewDisplayData:value];
    }
    return _m_alienFormat;
}

//: count
- (NSString *)showSubData {
    if (!_showSubData) {
        Byte value[] = {5, 12, 50, 207, 96, 80, 207, 129, 243, 109, 213, 224, 116, 110, 117, 111, 99, 83};
        _showSubData = [self StringFromViewDisplayData:value];
    }
    return _showSubData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "TitleViewCell.h"

//: @implementation NTESRedpackageDetailCell
@implementation TitleViewCell

//: - (void)initSubviews{
- (void)initFrom{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor user:[ViewDisplayData sharedInstance].k_rangeWooData];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice title] + 10);
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
    imageBack.image = [UIImage imageNamed:[ViewDisplayData sharedInstance].notiIconName];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice title]);
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
    [_backButton setImage:[UIImage imageNamed:[ViewDisplayData sharedInstance].showLeaveHeroId] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice title]);
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
-(void)information:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information index:[ViewDisplayData sharedInstance].m_alienFormat];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information index:[ViewDisplayData sharedInstance].mainIconData];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information index:[ViewDisplayData sharedInstance].app_viewFormat]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information index:[ViewDisplayData sharedInstance].showSubData];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information index:[ViewDisplayData sharedInstance].appRageTeamMessage];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:[ViewDisplayData sharedInstance].notiStyleId,count,amount];

}

//: -(void)backButtonClick{
-(void)textTo{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation TrifleViewCell

//: -(void)initSubviews{
-(void)initFrom{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor user:[ViewDisplayData sharedInstance].user_tingButtUrl];
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
    _praiseImage.image = [UIImage imageNamed:[ViewDisplayData sharedInstance].m_directMessage];
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
-(void)information:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information index:[ViewDisplayData sharedInstance].dreamSodStr]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information index:[ViewDisplayData sharedInstance].app_sustainMessage];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information index:[ViewDisplayData sharedInstance].main_penaltyKey];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information index:[ViewDisplayData sharedInstance].appRageTeamMessage]];
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
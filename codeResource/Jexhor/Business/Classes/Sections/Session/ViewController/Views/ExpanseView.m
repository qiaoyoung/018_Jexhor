
#import <Foundation/Foundation.h>

@interface ChiefSessionData : NSObject

+ (instancetype)sharedInstance;

//: icon_redpackage_open_close
@property (nonatomic, copy) NSString *m_statusValue;

//: start
@property (nonatomic, copy) NSString *dream_dateData;

//: icon_redpackage_open_back
@property (nonatomic, copy) NSString *app_sizeKey;

//: redinfo
@property (nonatomic, copy) NSString *notiViewData;

//: /wallet/redDetail
@property (nonatomic, copy) NSString *k_feeInputStr;

//: #FDA6A4
@property (nonatomic, copy) NSString *userConductKey;

//: team_red_adapter_yuan
@property (nonatomic, copy) NSString *mainBrownMessage;

//: amount
@property (nonatomic, copy) NSString *show_viewAlienKey;

//: user_id
@property (nonatomic, copy) NSString *notiRoughTingUrl;

//: list
@property (nonatomic, copy) NSString *k_keyMsg;

//: unclaimed
@property (nonatomic, copy) NSString *app_distinctionPath;

//: data
@property (nonatomic, copy) NSString *m_heavilyFormat;

//: Congratulations on your fortune
@property (nonatomic, copy) NSString *main_distinctionId;

//: words
@property (nonatomic, copy) NSString *userAmId;

//: #FE9FA8
@property (nonatomic, copy) NSString *mItKey;

//: View pick-up details>>
@property (nonatomic, copy) NSString *noti_territoryId;

//: #FFD7C4
@property (nonatomic, copy) NSString *userAtSessionName;

//: The balance has been deposited and can be withdrawn directly>>
@property (nonatomic, copy) NSString *appBlackRangeIdent;

//: redid
@property (nonatomic, copy) NSString *main_recipientId;

@end

@implementation ChiefSessionData

+ (instancetype)sharedInstance {
    static ChiefSessionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ChiefSessionDataToCache:(Byte *)data {
    int whiteInfluential = data[0];
    Byte detonation = data[1];
    int tecDate = data[2];
    for (int i = tecDate; i < tecDate + whiteInfluential; i++) {
        int value = data[i] - detonation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[tecDate + whiteInfluential] = 0;
    return data + tecDate;
}

- (NSString *)StringFromChiefSessionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChiefSessionDataToCache:data]];
}

//: The balance has been deposited and can be withdrawn directly>>
- (NSString *)appBlackRangeIdent {
    if (!_appBlackRangeIdent) {
        Byte value[] = {62, 85, 3, 169, 189, 186, 117, 183, 182, 193, 182, 195, 184, 186, 117, 189, 182, 200, 117, 183, 186, 186, 195, 117, 185, 186, 197, 196, 200, 190, 201, 186, 185, 117, 182, 195, 185, 117, 184, 182, 195, 117, 183, 186, 117, 204, 190, 201, 189, 185, 199, 182, 204, 195, 117, 185, 190, 199, 186, 184, 201, 193, 206, 147, 147, 127};
        _appBlackRangeIdent = [self StringFromChiefSessionData:value];
    }
    return _appBlackRangeIdent;
}

//: data
- (NSString *)m_heavilyFormat {
    if (!_m_heavilyFormat) {
        Byte value[] = {4, 72, 13, 196, 236, 15, 255, 75, 18, 149, 187, 221, 191, 172, 169, 188, 169, 53};
        _m_heavilyFormat = [self StringFromChiefSessionData:value];
    }
    return _m_heavilyFormat;
}

//: /wallet/redDetail
- (NSString *)k_feeInputStr {
    if (!_k_feeInputStr) {
        Byte value[] = {17, 44, 4, 160, 91, 163, 141, 152, 152, 145, 160, 91, 158, 145, 144, 112, 145, 160, 141, 149, 152, 201};
        _k_feeInputStr = [self StringFromChiefSessionData:value];
    }
    return _k_feeInputStr;
}

//: words
- (NSString *)userAmId {
    if (!_userAmId) {
        Byte value[] = {5, 82, 13, 185, 142, 8, 116, 4, 61, 255, 223, 164, 228, 201, 193, 196, 182, 197, 205};
        _userAmId = [self StringFromChiefSessionData:value];
    }
    return _userAmId;
}

//: start
- (NSString *)dream_dateData {
    if (!_dream_dateData) {
        Byte value[] = {5, 73, 5, 59, 122, 188, 189, 170, 187, 189, 240};
        _dream_dateData = [self StringFromChiefSessionData:value];
    }
    return _dream_dateData;
}

//: redid
- (NSString *)main_recipientId {
    if (!_main_recipientId) {
        Byte value[] = {5, 93, 13, 145, 241, 143, 62, 49, 53, 107, 197, 232, 140, 207, 194, 193, 198, 193, 178};
        _main_recipientId = [self StringFromChiefSessionData:value];
    }
    return _main_recipientId;
}

//: amount
- (NSString *)show_viewAlienKey {
    if (!_show_viewAlienKey) {
        Byte value[] = {6, 17, 3, 114, 126, 128, 134, 127, 133, 239};
        _show_viewAlienKey = [self StringFromChiefSessionData:value];
    }
    return _show_viewAlienKey;
}

//: #FE9FA8
- (NSString *)mItKey {
    if (!_mItKey) {
        Byte value[] = {7, 81, 6, 218, 180, 240, 116, 151, 150, 138, 151, 146, 137, 163};
        _mItKey = [self StringFromChiefSessionData:value];
    }
    return _mItKey;
}

//: icon_redpackage_open_close
- (NSString *)m_statusValue {
    if (!_m_statusValue) {
        Byte value[] = {26, 59, 11, 192, 55, 245, 154, 132, 125, 24, 254, 164, 158, 170, 169, 154, 173, 160, 159, 171, 156, 158, 166, 156, 162, 160, 154, 170, 171, 160, 169, 154, 158, 167, 170, 174, 160, 136};
        _m_statusValue = [self StringFromChiefSessionData:value];
    }
    return _m_statusValue;
}

//: team_red_adapter_yuan
- (NSString *)mainBrownMessage {
    if (!_mainBrownMessage) {
        Byte value[] = {21, 71, 5, 141, 190, 187, 172, 168, 180, 166, 185, 172, 171, 166, 168, 171, 168, 183, 187, 172, 185, 166, 192, 188, 168, 181, 14};
        _mainBrownMessage = [self StringFromChiefSessionData:value];
    }
    return _mainBrownMessage;
}

//: unclaimed
- (NSString *)app_distinctionPath {
    if (!_app_distinctionPath) {
        Byte value[] = {9, 61, 6, 102, 89, 85, 178, 171, 160, 169, 158, 166, 170, 162, 161, 129};
        _app_distinctionPath = [self StringFromChiefSessionData:value];
    }
    return _app_distinctionPath;
}

//: list
- (NSString *)k_keyMsg {
    if (!_k_keyMsg) {
        Byte value[] = {4, 84, 4, 40, 192, 189, 199, 200, 29};
        _k_keyMsg = [self StringFromChiefSessionData:value];
    }
    return _k_keyMsg;
}

//: #FFD7C4
- (NSString *)userAtSessionName {
    if (!_userAtSessionName) {
        Byte value[] = {7, 65, 7, 248, 158, 254, 87, 100, 135, 135, 133, 120, 132, 117, 145};
        _userAtSessionName = [self StringFromChiefSessionData:value];
    }
    return _userAtSessionName;
}

//: redinfo
- (NSString *)notiViewData {
    if (!_notiViewData) {
        Byte value[] = {7, 59, 13, 192, 133, 93, 184, 79, 99, 196, 47, 73, 94, 173, 160, 159, 164, 169, 161, 170, 47};
        _notiViewData = [self StringFromChiefSessionData:value];
    }
    return _notiViewData;
}

//: View pick-up details>>
- (NSString *)noti_territoryId {
    if (!_noti_territoryId) {
        Byte value[] = {22, 30, 5, 55, 45, 116, 135, 131, 149, 62, 142, 135, 129, 137, 75, 147, 142, 62, 130, 131, 146, 127, 135, 138, 145, 92, 92, 202};
        _noti_territoryId = [self StringFromChiefSessionData:value];
    }
    return _noti_territoryId;
}

//: user_id
- (NSString *)notiRoughTingUrl {
    if (!_notiRoughTingUrl) {
        Byte value[] = {7, 45, 6, 104, 14, 11, 162, 160, 146, 159, 140, 150, 145, 105};
        _notiRoughTingUrl = [self StringFromChiefSessionData:value];
    }
    return _notiRoughTingUrl;
}

//: icon_redpackage_open_back
- (NSString *)app_sizeKey {
    if (!_app_sizeKey) {
        Byte value[] = {25, 15, 8, 65, 232, 227, 230, 79, 120, 114, 126, 125, 110, 129, 116, 115, 127, 112, 114, 122, 112, 118, 116, 110, 126, 127, 116, 125, 110, 113, 112, 114, 122, 44};
        _app_sizeKey = [self StringFromChiefSessionData:value];
    }
    return _app_sizeKey;
}

//: #FDA6A4
- (NSString *)userConductKey {
    if (!_userConductKey) {
        Byte value[] = {7, 43, 7, 117, 38, 172, 178, 78, 113, 111, 108, 97, 108, 95, 50};
        _userConductKey = [self StringFromChiefSessionData:value];
    }
    return _userConductKey;
}

//: Congratulations on your fortune
- (NSString *)main_distinctionId {
    if (!_main_distinctionId) {
        Byte value[] = {31, 25, 11, 86, 1, 189, 173, 28, 194, 10, 20, 92, 136, 135, 128, 139, 122, 141, 142, 133, 122, 141, 130, 136, 135, 140, 57, 136, 135, 57, 146, 136, 142, 139, 57, 127, 136, 139, 141, 142, 135, 126, 212};
        _main_distinctionId = [self StringFromChiefSessionData:value];
    }
    return _main_distinctionId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExpanseView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "ExpanseView.h"

//: @interface NTESOpenRedPackageSheet ()
@interface ExpanseView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @property (nonatomic,strong) UILabel *sendNickname;
@property (nonatomic,strong) UILabel *sendNickname;
//: @property (nonatomic,strong) UILabel *amountLabel;
@property (nonatomic,strong) UILabel *amountLabel;
//: @property (nonatomic,strong) UILabel *unitLabel;
@property (nonatomic,strong) UILabel *unitLabel;
//: @property (nonatomic,strong) UILabel *wordLabel;
@property (nonatomic,strong) UILabel *wordLabel;

//: @end
@end

//: @implementation NTESOpenRedPackageSheet
@implementation ExpanseView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithAdd:(CGRect)frame label:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(valuePress)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];





        //: UIImageView *backImage = [[UIImageView alloc] init];
        UIImageView *backImage = [[UIImageView alloc] init];
        //: backImage.image = [UIImage imageNamed:@"icon_redpackage_open_back"];
        backImage.image = [UIImage imageNamed:[ChiefSessionData sharedInstance].app_sizeKey];
        //: backImage.clipsToBounds = YES;
        backImage.clipsToBounds = YES;
        //: backImage.contentMode = UIViewContentModeScaleAspectFill;
        backImage.contentMode = UIViewContentModeScaleAspectFill;
        //: [_backView addSubview:backImage];
        [_backView addSubview:backImage];
        //: [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.right.mas_equalTo(0);
            make.right.mas_equalTo(0);
            //: make.bottom.mas_equalTo(0);
            make.bottom.mas_equalTo(0);
        //: }];
        }];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.width.mas_equalTo(30);
            make.width.mas_equalTo(30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //昵称
        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor whiteColor];
        titleLabel_1.textColor = [UIColor whiteColor];
        //: titleLabel_1.font = [UIFont systemFontOfSize:16];
        titleLabel_1.font = [UIFont systemFontOfSize:16];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: _sendNickname = titleLabel_1;
        _sendNickname = titleLabel_1;
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

//        UIView *line = [[UIView alloc] init];
//        line.backgroundColor = RGB_COLOR_String(@"#C7E8CA");
//        [_backView addSubview:line];
//        [line mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(50);
//            make.height.mas_equalTo(1);
//        }];
//


        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentLeft;
        amountLabel.textAlignment = NSTextAlignmentLeft;
        //: amountLabel.textColor = [UIColor whiteColor];
        amountLabel.textColor = [UIColor whiteColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:36];
        amountLabel.font = [UIFont boldSystemFontOfSize:36];
        //: [amountLabel sizeToFit];
        [amountLabel sizeToFit];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: _amountLabel = amountLabel;
        _amountLabel = amountLabel;
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(50);
            make.width.mas_equalTo(50);
        //: }];
        }];

        //: _unitLabel = [[UILabel alloc] init];
        _unitLabel = [[UILabel alloc] init];
        //: _unitLabel.textAlignment = NSTextAlignmentLeft;
        _unitLabel.textAlignment = NSTextAlignmentLeft;
        //: _unitLabel.textColor = [UIColor whiteColor];
        _unitLabel.textColor = [UIColor whiteColor];
        //: _unitLabel.font = [UIFont systemFontOfSize:15];
        _unitLabel.font = [UIFont systemFontOfSize:15];
        //: _unitLabel.text = [PushLanguageManager getTextWithKey:@"team_red_adapter_yuan"];
        _unitLabel.text = [BackgroundRandomAttribute content:[ChiefSessionData sharedInstance].mainBrownMessage];
        //: [_backView addSubview:_unitLabel];
        [_backView addSubview:_unitLabel];
        //: [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(110);
            make.top.mas_offset(110);
            //: make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            //: make.width.mas_equalTo(20);
            make.width.mas_equalTo(20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];



        //: UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        //: content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: content.titleLabel.font = [UIFont systemFontOfSize:13];
        content.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [content setTitle:@"The balance has been deposited and can be withdrawn directly>>" forState:UIControlStateNormal];
        [content setTitle:[ChiefSessionData sharedInstance].appBlackRangeIdent forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor user:[ChiefSessionData sharedInstance].userAtSessionName] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(tongueTing) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [content mas_makeConstraints:^(MASConstraintMaker *make) {
        [content mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(145);
            make.top.mas_offset(145);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];


        //: UILabel *words = [[UILabel alloc] init];
        UILabel *words = [[UILabel alloc] init];
        //: words.textAlignment = NSTextAlignmentCenter;
        words.textAlignment = NSTextAlignmentCenter;
        //: words.textColor = [UIColor colorWithHexString:@"#FE9FA8"];
        words.textColor = [UIColor user:[ChiefSessionData sharedInstance].mItKey];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = [ChiefSessionData sharedInstance].main_distinctionId;
        //: [_backView addSubview:words];
        [_backView addSubview:words];
        //: _wordLabel = words;
        _wordLabel = words;
        //: [words mas_makeConstraints:^(MASConstraintMaker *make) {
        [words mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(190);
            make.top.mas_offset(190);
            //: make.left.mas_offset(10);
            make.left.mas_offset(10);
            //: make.right.mas_equalTo(-10);
            make.right.mas_equalTo(-10);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [moreBtn setTitle:@"View pick-up details>>" forState:UIControlStateNormal];
        [moreBtn setTitle:[ChiefSessionData sharedInstance].noti_territoryId forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor user:[ChiefSessionData sharedInstance].userConductKey] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(dimensionName) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:moreBtn];
        [_backView addSubview:moreBtn];
        //: [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.bottom.mas_offset(-15);
            make.bottom.mas_offset(-15);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_open_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[ChiefSessionData sharedInstance].m_statusValue] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(marginBubble) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:closeButton];
        [self addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 25;
        closeButton.layer.cornerRadius = 25;
        //: closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        //: closeButton.layer.borderWidth = 2;
        closeButton.layer.borderWidth = 2;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.height.mas_equalTo(50);
            make.width.height.mas_equalTo(50);
        //: }];
        }];



        //: [self requestRedDetail];
        [self fleshedOut];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)fleshedOut{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[[ChiefSessionData sharedInstance].main_recipientId] = [_originDict index:[ChiefSessionData sharedInstance].main_recipientId];
    //: dict[@"start"] = @"1";
    dict[[ChiefSessionData sharedInstance].dream_dateData] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[ChiefSessionData sharedInstance].k_feeInputStr] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict already:[ChiefSessionData sharedInstance].m_heavilyFormat];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data already:[ChiefSessionData sharedInstance].notiViewData];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data appearUnwelcome:[ChiefSessionData sharedInstance].k_keyMsg];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo index:[ChiefSessionData sharedInstance].userAmId];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self top:[redinfo index:[ChiefSessionData sharedInstance].notiRoughTingUrl]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item index:[ChiefSessionData sharedInstance].notiRoughTingUrl] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = [ChiefSessionData sharedInstance].app_distinctionPath;
            //: [_amountLabel sizeToFit];
            [_amountLabel sizeToFit];
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: _unitLabel.hidden = YES;
            _unitLabel.hidden = YES;
        //: }else{
        }else{
            //: _unitLabel.hidden = NO;
            _unitLabel.hidden = NO;
            //: NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict newStringValueForKey:@"amount"]];
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict index:[ChiefSessionData sharedInstance].show_viewAlienKey]];
            //: _amountLabel.text = amount;
            _amountLabel.text = amount;
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
                make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
            //: }];
            }];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)tongueTing{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(myBlue)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate myBlue];
        //: [self dismissPicker];
        [self marginBubble];
    }
}

//: -(void)redpackageDetail{
-(void)dimensionName{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cameras:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate cameras:[_originDict index:[ChiefSessionData sharedInstance].main_recipientId]];
        //: [self dismissPicker];
        [self marginBubble];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)top:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:userID item:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    //: _sendNickname.text = me.userInfo.nickName;
    _sendNickname.text = me.userInfo.nickName;
}

//: -(void)handleSingleTapFrom{
-(void)valuePress{
    //: [self dismissPicker];
    [self marginBubble];
}

//: - (void)show{
- (void)option{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setClick:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice title]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)marginBubble{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setClick:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: @end
@end

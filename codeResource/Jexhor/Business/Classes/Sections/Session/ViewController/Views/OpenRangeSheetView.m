
#import <Foundation/Foundation.h>

@interface AcceptableData : NSObject

@end

@implementation AcceptableData

+ (Byte *)AcceptableDataToCache:(Byte *)data {
    int barrelAgainst = data[0];
    int pursuitSeries = data[1];
    for (int i = 0; i < barrelAgainst / 2; i++) {
        int begin = pursuitSeries + i;
        int end = pursuitSeries + barrelAgainst - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[pursuitSeries + barrelAgainst] = 0;
    return data + pursuitSeries;
}

+ (NSString *)StringFromAcceptableData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AcceptableDataToCache:data]];
}  

//: data
+ (NSString *)noti_bubblePressTitle {
    /* static */ NSString *noti_bubblePressTitle = nil;
    if (!noti_bubblePressTitle) {
        Byte value[] = {4, 4, 15, 190, 97, 116, 97, 100, 183};
        noti_bubblePressTitle = [self StringFromAcceptableData:value];
    }
    return noti_bubblePressTitle;
}

//: #FDA6A4
+ (NSString *)user_imageText {
    /* static */ NSString *user_imageText = nil;
    if (!user_imageText) {
        Byte value[] = {7, 4, 96, 163, 52, 65, 54, 65, 68, 70, 35, 219};
        user_imageText = [self StringFromAcceptableData:value];
    }
    return user_imageText;
}

//: /wallet/redDetail
+ (NSString *)userImageData {
    /* static */ NSString *userImageData = nil;
    if (!userImageData) {
        Byte value[] = {17, 12, 33, 88, 135, 57, 221, 120, 132, 182, 225, 95, 108, 105, 97, 116, 101, 68, 100, 101, 114, 47, 116, 101, 108, 108, 97, 119, 47, 23};
        userImageData = [self StringFromAcceptableData:value];
    }
    return userImageData;
}

//: unclaimed
+ (NSString *)dreamVideoValue {
    /* static */ NSString *dreamVideoValue = nil;
    if (!dreamVideoValue) {
        Byte value[] = {9, 4, 128, 109, 100, 101, 109, 105, 97, 108, 99, 110, 117, 156};
        dreamVideoValue = [self StringFromAcceptableData:value];
    }
    return dreamVideoValue;
}

//: list
+ (NSString *)user_crowdedData {
    /* static */ NSString *user_crowdedData = nil;
    if (!user_crowdedData) {
        Byte value[] = {4, 11, 209, 248, 4, 210, 101, 176, 70, 102, 170, 116, 115, 105, 108, 148};
        user_crowdedData = [self StringFromAcceptableData:value];
    }
    return user_crowdedData;
}

//: icon_redpackage_open_back
+ (NSString *)dream_weekName {
    /* static */ NSString *dream_weekName = nil;
    if (!dream_weekName) {
        Byte value[] = {25, 12, 221, 85, 206, 222, 244, 225, 201, 41, 183, 145, 107, 99, 97, 98, 95, 110, 101, 112, 111, 95, 101, 103, 97, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 200};
        dream_weekName = [self StringFromAcceptableData:value];
    }
    return dream_weekName;
}

//: The balance has been deposited and can be withdrawn directly>>
+ (NSString *)user_addValue {
    /* static */ NSString *user_addValue = nil;
    if (!user_addValue) {
        Byte value[] = {62, 2, 62, 62, 121, 108, 116, 99, 101, 114, 105, 100, 32, 110, 119, 97, 114, 100, 104, 116, 105, 119, 32, 101, 98, 32, 110, 97, 99, 32, 100, 110, 97, 32, 100, 101, 116, 105, 115, 111, 112, 101, 100, 32, 110, 101, 101, 98, 32, 115, 97, 104, 32, 101, 99, 110, 97, 108, 97, 98, 32, 101, 104, 84, 102};
        user_addValue = [self StringFromAcceptableData:value];
    }
    return user_addValue;
}

//: team_red_adapter_yuan
+ (NSString *)appSessionValue {
    /* static */ NSString *appSessionValue = nil;
    if (!appSessionValue) {
        Byte value[] = {21, 3, 27, 110, 97, 117, 121, 95, 114, 101, 116, 112, 97, 100, 97, 95, 100, 101, 114, 95, 109, 97, 101, 116, 215};
        appSessionValue = [self StringFromAcceptableData:value];
    }
    return appSessionValue;
}

//: redinfo
+ (NSString *)main_colorValue {
    /* static */ NSString *main_colorValue = nil;
    if (!main_colorValue) {
        Byte value[] = {7, 10, 243, 61, 116, 41, 46, 40, 165, 12, 111, 102, 110, 105, 100, 101, 114, 59};
        main_colorValue = [self StringFromAcceptableData:value];
    }
    return main_colorValue;
}

//: View pick-up details>>
+ (NSString *)mainJournalistValue {
    /* static */ NSString *mainJournalistValue = nil;
    if (!mainJournalistValue) {
        Byte value[] = {22, 9, 213, 33, 140, 158, 249, 199, 129, 62, 62, 115, 108, 105, 97, 116, 101, 100, 32, 112, 117, 45, 107, 99, 105, 112, 32, 119, 101, 105, 86, 140};
        mainJournalistValue = [self StringFromAcceptableData:value];
    }
    return mainJournalistValue;
}

//: icon_redpackage_open_close
+ (NSString *)appParentValue {
    /* static */ NSString *appParentValue = nil;
    if (!appParentValue) {
        Byte value[] = {26, 11, 13, 47, 229, 59, 239, 191, 237, 21, 134, 101, 115, 111, 108, 99, 95, 110, 101, 112, 111, 95, 101, 103, 97, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 103};
        appParentValue = [self StringFromAcceptableData:value];
    }
    return appParentValue;
}

//: start
+ (NSString *)userSessionContent {
    /* static */ NSString *userSessionContent = nil;
    if (!userSessionContent) {
        Byte value[] = {5, 7, 206, 51, 183, 27, 195, 116, 114, 97, 116, 115, 211};
        userSessionContent = [self StringFromAcceptableData:value];
    }
    return userSessionContent;
}

//: redid
+ (NSString *)notiBubbleTitle {
    /* static */ NSString *notiBubbleTitle = nil;
    if (!notiBubbleTitle) {
        Byte value[] = {5, 9, 42, 71, 21, 171, 23, 242, 145, 100, 105, 100, 101, 114, 229};
        notiBubbleTitle = [self StringFromAcceptableData:value];
    }
    return notiBubbleTitle;
}

//: Congratulations on your fortune
+ (NSString *)dream_maxDrugYaTitle {
    /* static */ NSString *dream_maxDrugYaTitle = nil;
    if (!dream_maxDrugYaTitle) {
        Byte value[] = {31, 9, 145, 62, 209, 30, 252, 99, 153, 101, 110, 117, 116, 114, 111, 102, 32, 114, 117, 111, 121, 32, 110, 111, 32, 115, 110, 111, 105, 116, 97, 108, 117, 116, 97, 114, 103, 110, 111, 67, 67};
        dream_maxDrugYaTitle = [self StringFromAcceptableData:value];
    }
    return dream_maxDrugYaTitle;
}

//: #FE9FA8
+ (NSString *)appMustName {
    /* static */ NSString *appMustName = nil;
    if (!appMustName) {
        Byte value[] = {7, 8, 33, 74, 238, 47, 109, 237, 56, 65, 70, 57, 69, 70, 35, 191};
        appMustName = [self StringFromAcceptableData:value];
    }
    return appMustName;
}

//: words
+ (NSString *)m_severName {
    /* static */ NSString *m_severName = nil;
    if (!m_severName) {
        Byte value[] = {5, 7, 151, 63, 69, 232, 118, 115, 100, 114, 111, 119, 202};
        m_severName = [self StringFromAcceptableData:value];
    }
    return m_severName;
}

//: #FFD7C4
+ (NSString *)kNovelName {
    /* static */ NSString *kNovelName = nil;
    if (!kNovelName) {
        Byte value[] = {7, 2, 52, 67, 55, 68, 70, 70, 35, 104};
        kNovelName = [self StringFromAcceptableData:value];
    }
    return kNovelName;
}

//: amount
+ (NSString *)userInfoMakeName {
    /* static */ NSString *userInfoMakeName = nil;
    if (!userInfoMakeName) {
        Byte value[] = {6, 2, 116, 110, 117, 111, 109, 97, 118};
        userInfoMakeName = [self StringFromAcceptableData:value];
    }
    return userInfoMakeName;
}

//: user_id
+ (NSString *)appBubbleAddValue {
    /* static */ NSString *appBubbleAddValue = nil;
    if (!appBubbleAddValue) {
        Byte value[] = {7, 12, 162, 61, 149, 60, 87, 230, 21, 137, 174, 129, 100, 105, 95, 114, 101, 115, 117, 55};
        appBubbleAddValue = [self StringFromAcceptableData:value];
    }
    return appBubbleAddValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenRangeSheetView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "OpenRangeSheetView.h"

//: @interface NTESOpenRedPackageSheet ()
@interface OpenRangeSheetView ()
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
@implementation OpenRangeSheetView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithButton:(CGRect)frame withBlack:(NSDictionary *)dictionary{

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
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(buttonRestore)];
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
        backImage.image = [UIImage imageNamed:[AcceptableData dream_weekName]];
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
        //: _unitLabel.text = [FFFLanguageManager getTextWithKey:@"team_red_adapter_yuan"];
        _unitLabel.text = [InputRed preserve:[AcceptableData appSessionValue]];
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
        [content setTitle:[AcceptableData user_addValue] forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor ground:[AcceptableData kNovelName]] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(voiceRecent) forControlEvents:UIControlEventTouchUpInside];
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
        words.textColor = [UIColor ground:[AcceptableData appMustName]];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = [AcceptableData dream_maxDrugYaTitle];
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
        [moreBtn setTitle:[AcceptableData mainJournalistValue] forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor ground:[AcceptableData user_imageText]] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(languageCell) forControlEvents:UIControlEventTouchUpInside];
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
        [closeButton setImage:[UIImage imageNamed:[AcceptableData appParentValue]] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(doingQuick) forControlEvents:UIControlEventTouchUpInside];
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
        [self domain];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)domain{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[[AcceptableData notiBubbleTitle]] = [_originDict route:[AcceptableData notiBubbleTitle]];
    //: dict[@"start"] = @"1";
    dict[[AcceptableData userSessionContent]] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[AcceptableData userImageData]] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict objectColor:[AcceptableData noti_bubblePressTitle]];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data objectColor:[AcceptableData main_colorValue]];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data dateArray:[AcceptableData user_crowdedData]];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo route:[AcceptableData m_severName]];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self mail:[redinfo route:[AcceptableData appBubbleAddValue]]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item route:[AcceptableData appBubbleAddValue]] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = [AcceptableData dreamVideoValue];
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
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict route:[AcceptableData userInfoMakeName]]];
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
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)voiceRecent{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(titleWith)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate titleWith];
        //: [self dismissPicker];
        [self doingQuick];
    }
}

//: -(void)redpackageDetail{
-(void)languageCell{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(itemHolder:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate itemHolder:[_originDict route:[AcceptableData notiBubbleTitle]]];
        //: [self dismissPicker];
        [self doingQuick];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)mail:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:userID blue:nil];
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
-(void)buttonRestore{
    //: [self dismissPicker];
    [self doingQuick];
}

//: - (void)show{
- (void)press{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setInfoQuick:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice heightShowStop]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)doingQuick{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setInfoQuick:[[UIScreen mainScreen] bounds].size.height];
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
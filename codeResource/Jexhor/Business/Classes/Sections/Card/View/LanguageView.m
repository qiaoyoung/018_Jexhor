
#import <Foundation/Foundation.h>

@interface UpData : NSObject

+ (instancetype)sharedInstance;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *m_fabricErrMessage;

//: #5D5F66
@property (nonatomic, copy) NSString *mainTextFormat;

//: YES
@property (nonatomic, copy) NSString *mainEmpireIdent;

//: #333333
@property (nonatomic, copy) NSString *userPickValue;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *show_blueChartUnderIdent;

//: #05D481
@property (nonatomic, copy) NSString *k_investorKey;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *main_randomIdent;

//: report_next_select_black
@property (nonatomic, copy) NSString *m_showKey;

@end

@implementation UpData

+ (instancetype)sharedInstance {
    static UpData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)UpDataToCache:(Byte *)data {
    int leave = data[0];
    Byte economical = data[1];
    int dent = data[2];
    for (int i = dent; i < dent + leave; i++) {
        int value = data[i] + economical;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[dent + leave] = 0;
    return data + dent;
}

- (NSString *)StringFromUpData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self UpDataToCache:data]];
}

//: contact_tag_fragment_sure
- (NSString *)main_randomIdent {
    if (!_main_randomIdent) {
        Byte value[] = {25, 51, 13, 94, 26, 120, 67, 18, 18, 30, 207, 95, 188, 48, 60, 59, 65, 46, 48, 65, 44, 65, 46, 52, 44, 51, 63, 46, 52, 58, 50, 59, 65, 44, 64, 66, 63, 50, 166};
        _main_randomIdent = [self StringFromUpData:value];
    }
    return _main_randomIdent;
}

//: #05D481
- (NSString *)k_investorKey {
    if (!_k_investorKey) {
        Byte value[] = {7, 76, 13, 75, 234, 165, 166, 109, 249, 164, 99, 194, 53, 215, 228, 233, 248, 232, 236, 229, 66};
        _k_investorKey = [self StringFromUpData:value];
    }
    return _k_investorKey;
}

//: YES
- (NSString *)mainEmpireIdent {
    if (!_mainEmpireIdent) {
        Byte value[] = {3, 49, 12, 184, 104, 119, 48, 87, 23, 95, 244, 85, 40, 20, 34, 22};
        _mainEmpireIdent = [self StringFromUpData:value];
    }
    return _mainEmpireIdent;
}

//: activity_group_chat_avatar_add_black
- (NSString *)show_blueChartUnderIdent {
    if (!_show_blueChartUnderIdent) {
        Byte value[] = {36, 24, 5, 238, 248, 73, 75, 92, 81, 94, 81, 92, 97, 71, 79, 90, 87, 93, 88, 71, 75, 80, 73, 92, 71, 73, 94, 73, 92, 73, 90, 71, 73, 76, 76, 71, 74, 84, 73, 75, 83, 47};
        _show_blueChartUnderIdent = [self StringFromUpData:value];
    }
    return _show_blueChartUnderIdent;
}

//: report_next_select_black
- (NSString *)m_showKey {
    if (!_m_showKey) {
        Byte value[] = {24, 80, 11, 171, 6, 255, 87, 98, 221, 207, 254, 34, 21, 32, 31, 34, 36, 15, 30, 21, 40, 36, 15, 35, 21, 28, 21, 19, 36, 15, 18, 28, 17, 19, 27, 239};
        _m_showKey = [self StringFromUpData:value];
    }
    return _m_showKey;
}

//: contact_tag_fragment_cancel
- (NSString *)m_fabricErrMessage {
    if (!_m_fabricErrMessage) {
        Byte value[] = {27, 44, 10, 27, 2, 107, 19, 116, 196, 9, 55, 67, 66, 72, 53, 55, 72, 51, 72, 53, 59, 51, 58, 70, 53, 59, 65, 57, 66, 72, 51, 55, 53, 66, 55, 57, 64, 184};
        _m_fabricErrMessage = [self StringFromUpData:value];
    }
    return _m_fabricErrMessage;
}

//: #333333
- (NSString *)userPickValue {
    if (!_userPickValue) {
        Byte value[] = {7, 52, 3, 239, 255, 255, 255, 255, 255, 255, 92};
        _userPickValue = [self StringFromUpData:value];
    }
    return _userPickValue;
}

//: #5D5F66
- (NSString *)mainTextFormat {
    if (!_mainTextFormat) {
        Byte value[] = {7, 27, 9, 143, 197, 39, 230, 232, 17, 8, 26, 41, 26, 43, 27, 27, 106};
        _mainTextFormat = [self StringFromUpData:value];
    }
    return _mainTextFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "LanguageView.h"

//: @interface ZMONReportBlackView ()
@interface LanguageView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONReportBlackView
@implementation LanguageView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initLabelShow];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initLabelShow{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor user:[UpData sharedInstance].userPickValue];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [BackgroundRandomAttribute content:[UpData sharedInstance].m_showKey];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}

//: - (void)handleBlack{
- (void)registerBlack{

//    __weak typeof(self) wself = self;
//
//        [[NIMSDK sharedSDK].userManager addToBlackList:wself.userID completion:^(NSError *error) {
//
//            if (!error) {
//                [wself makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
//            }else{
//                [wself makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
//
//            }
//        }];
//    [self animationClose];
    //: [self animationClose];
    [self nearAdd];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([UpData sharedInstance].mainEmpireIdent);
}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [BackgroundRandomAttribute content:[UpData sharedInstance].show_blueChartUnderIdent];
    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(nearAdd) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor user:[UpData sharedInstance].mainTextFormat] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[UpData sharedInstance].m_fabricErrMessage] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(registerBlack) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[UpData sharedInstance].main_randomIdent] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[UpData sharedInstance].k_investorKey];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)index
{
    //: self.hidden = NO;
    self.hidden = NO;

}



//: @end
@end
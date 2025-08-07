
#import <Foundation/Foundation.h>

@interface KeyData : NSObject

@end

@implementation KeyData

+ (Byte *)KeyDataToCache:(Byte *)data {
    int influentialButton = data[0];
    Byte affairWar = data[1];
    int chiefHolder = data[2];
    for (int i = chiefHolder; i < chiefHolder + influentialButton; i++) {
        int value = data[i] - affairWar;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[chiefHolder + influentialButton] = 0;
    return data + chiefHolder;
}

+ (NSString *)StringFromKeyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self KeyDataToCache:data]];
}

//: report_next_select_delete
+ (NSString *)dreamWooText {
    /* static */ NSString *dreamWooText = nil;
    if (!dreamWooText) {
        Byte value[] = {25, 24, 6, 240, 216, 87, 138, 125, 136, 135, 138, 140, 119, 134, 125, 144, 140, 119, 139, 125, 132, 125, 123, 140, 119, 124, 125, 132, 125, 140, 125, 42};
        dreamWooText = [self StringFromKeyData:value];
    }
    return dreamWooText;
}

//: #5D5F66
+ (NSString *)main_motIdent {
    /* static */ NSString *main_motIdent = nil;
    if (!main_motIdent) {
        Byte value[] = {7, 67, 12, 51, 150, 9, 236, 166, 79, 122, 38, 227, 102, 120, 135, 120, 137, 121, 121, 233};
        main_motIdent = [self StringFromKeyData:value];
    }
    return main_motIdent;
}

//: YES
+ (NSString *)user_abortName {
    /* static */ NSString *user_abortName = nil;
    if (!user_abortName) {
        Byte value[] = {3, 44, 3, 133, 113, 127, 5};
        user_abortName = [self StringFromKeyData:value];
    }
    return user_abortName;
}

//: user_profile_avtivity_remove_friend
+ (NSString *)userInfoContent {
    /* static */ NSString *userInfoContent = nil;
    if (!userInfoContent) {
        Byte value[] = {35, 99, 8, 247, 254, 27, 4, 208, 216, 214, 200, 213, 194, 211, 213, 210, 201, 204, 207, 200, 194, 196, 217, 215, 204, 217, 204, 215, 220, 194, 213, 200, 208, 210, 217, 200, 194, 201, 213, 204, 200, 209, 199, 219};
        userInfoContent = [self StringFromKeyData:value];
    }
    return userInfoContent;
}

//: delete
+ (NSString *)noti_abortMessage {
    /* static */ NSString *noti_abortMessage = nil;
    if (!noti_abortMessage) {
        Byte value[] = {6, 10, 3, 110, 111, 118, 111, 126, 111, 211};
        noti_abortMessage = [self StringFromKeyData:value];
    }
    return noti_abortMessage;
}

//: contact_tag_fragment_cancel
+ (NSString *)k_sessionValue {
    /* static */ NSString *k_sessionValue = nil;
    if (!k_sessionValue) {
        Byte value[] = {27, 73, 5, 215, 142, 172, 184, 183, 189, 170, 172, 189, 168, 189, 170, 176, 168, 175, 187, 170, 176, 182, 174, 183, 189, 168, 172, 170, 183, 172, 174, 181, 47};
        k_sessionValue = [self StringFromKeyData:value];
    }
    return k_sessionValue;
}

//: #333333
+ (NSString *)mainVersionFormat {
    /* static */ NSString *mainVersionFormat = nil;
    if (!mainVersionFormat) {
        Byte value[] = {7, 11, 12, 95, 206, 33, 76, 27, 198, 168, 157, 88, 46, 62, 62, 62, 62, 62, 62, 112};
        mainVersionFormat = [self StringFromKeyData:value];
    }
    return mainVersionFormat;
}

//: #05D481
+ (NSString *)kDelicateKey {
    /* static */ NSString *kDelicateKey = nil;
    if (!kDelicateKey) {
        Byte value[] = {7, 92, 13, 105, 114, 141, 49, 225, 219, 192, 46, 89, 32, 127, 140, 145, 160, 144, 148, 141, 245};
        kDelicateKey = [self StringFromKeyData:value];
    }
    return kDelicateKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "PresentView.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"

//: @interface ZMONReportDeleteView ()
@interface PresentView ()

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

//: @implementation ZMONReportDeleteView
@implementation PresentView

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
        [self initColor];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initColor{
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
    labsubLabel.textColor = [UIColor user:[KeyData mainVersionFormat]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [BackgroundRandomAttribute content:[KeyData dreamWooText]];
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

//: - (void)showAnimation
- (void)noPresent
{
    //: [self animationClose];
    [self nearAdd];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([KeyData user_abortName]);
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
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [BackgroundRandomAttribute content:[KeyData userInfoContent]];
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
        [_closeBtn setTitleColor:[UIColor user:[KeyData main_motIdent]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[KeyData k_sessionValue]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(noPresent) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[KeyData noti_abortMessage]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[KeyData kDelicateKey]];
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
- (void)physicalProperty
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end
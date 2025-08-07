
#import <Foundation/Foundation.h>

@interface FrigidnessData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FrigidnessData

+ (instancetype)sharedInstance {
    static FrigidnessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FrigidnessDataToCache:(Byte *)data {
    int merchandising = data[0];
    Byte yankee = data[1];
    int cropMain = data[2];
    for (int i = cropMain; i < cropMain + merchandising; i++) {
        int value = data[i] + yankee;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[cropMain + merchandising] = 0;
    return data + cropMain;
}

- (NSString *)StringFromFrigidnessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FrigidnessDataToCache:data]];
}

//: safe_success_tip
- (NSString *)app_alienValue {
    /* static */ NSString *app_alienValue = nil;
    if (!app_alienValue) {
        Byte value[] = {16, 52, 9, 71, 249, 115, 115, 26, 75, 63, 45, 50, 49, 43, 63, 65, 47, 47, 49, 63, 63, 43, 64, 53, 60, 125};
        app_alienValue = [self StringFromFrigidnessData:value];
    }
    return app_alienValue;
}

//: safe_success_step
- (NSString *)notiPickTitle {
    /* static */ NSString *notiPickTitle = nil;
    if (!notiPickTitle) {
        Byte value[] = {17, 86, 3, 29, 11, 16, 15, 9, 29, 31, 13, 13, 15, 29, 29, 9, 29, 30, 15, 26, 90};
        notiPickTitle = [self StringFromFrigidnessData:value];
    }
    return notiPickTitle;
}

//: NotificationLogout
- (NSString *)main_hospitalPath {
    /* static */ NSString *main_hospitalPath = nil;
    if (!main_hospitalPath) {
        Byte value[] = {18, 33, 8, 217, 243, 50, 152, 130, 45, 78, 83, 72, 69, 72, 66, 64, 83, 72, 78, 77, 43, 78, 70, 78, 84, 83, 24};
        main_hospitalPath = [self StringFromFrigidnessData:value];
    }
    return main_hospitalPath;
}

//: Vertify_login_password
- (NSString *)notiSnapKey {
    /* static */ NSString *notiSnapKey = nil;
    if (!notiSnapKey) {
        Byte value[] = {22, 95, 4, 237, 247, 6, 19, 21, 10, 7, 26, 0, 13, 16, 8, 10, 15, 0, 17, 2, 20, 20, 24, 16, 19, 5, 255};
        notiSnapKey = [self StringFromFrigidnessData:value];
    }
    return notiSnapKey;
}

//: Read_agree_agreement
- (NSString *)main_centerPath {
    /* static */ NSString *main_centerPath = nil;
    if (!main_centerPath) {
        Byte value[] = {20, 25, 12, 193, 51, 152, 176, 94, 36, 221, 187, 207, 57, 76, 72, 75, 70, 72, 78, 89, 76, 76, 70, 72, 78, 89, 76, 76, 84, 76, 85, 91, 46};
        main_centerPath = [self StringFromFrigidnessData:value];
    }
    return main_centerPath;
}

//: safe_arrow_next
- (NSString *)show_deadUrl {
    /* static */ NSString *show_deadUrl = nil;
    if (!show_deadUrl) {
        Byte value[] = {15, 24, 11, 73, 167, 73, 138, 253, 61, 209, 96, 91, 73, 78, 77, 71, 73, 90, 90, 87, 95, 71, 86, 77, 96, 92, 186};
        show_deadUrl = [self StringFromFrigidnessData:value];
    }
    return show_deadUrl;
}

//: #fffPush
- (NSString *)m_viewName {
    /* static */ NSString *m_viewName = nil;
    if (!m_viewName) {
        Byte value[] = {7, 86, 3, 205, 16, 16, 16, 16, 16, 16, 56};
        m_viewName = [self StringFromFrigidnessData:value];
    }
    return m_viewName;
}

//: #05D481
- (NSString *)dreamBelowFormat {
    /* static */ NSString *dreamBelowFormat = nil;
    if (!dreamBelowFormat) {
        Byte value[] = {7, 93, 9, 196, 188, 78, 43, 106, 49, 198, 211, 216, 231, 215, 219, 212, 124};
        dreamBelowFormat = [self StringFromFrigidnessData:value];
    }
    return dreamBelowFormat;
}

//: Complete_operation
- (NSString *)notiAspectStr {
    /* static */ NSString *notiAspectStr = nil;
    if (!notiAspectStr) {
        Byte value[] = {18, 61, 11, 162, 215, 140, 8, 163, 60, 169, 4, 6, 50, 48, 51, 47, 40, 55, 40, 34, 50, 51, 40, 53, 36, 55, 44, 50, 49, 181};
        notiAspectStr = [self StringFromFrigidnessData:value];
    }
    return notiAspectStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockMagnitudeView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "BlockMagnitudeView.h"

//: @interface ZMONDeactivateAccountSuccessView ()
@interface BlockMagnitudeView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;

//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;

//: @end
@end

//: @implementation ZMONDeactivateAccountSuccessView
@implementation BlockMagnitudeView

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
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-238)/2, [[UIScreen mainScreen] bounds].size.width-30, 238)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-238)/2, [[UIScreen mainScreen] bounds].size.width-30, 238)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-32)/2, 20, 32, 32);
    self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-32)/2, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);

    //: [_box addSubview:self.nextBox];
    [_box addSubview:self.nextBox];
    //: self.nextBox.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 54);
    self.nextBox.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 54);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-70);
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-70);
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(20, 238-20-height, width, height);
    self.sureBtn.frame = CGRectMake(20, 238-20-height, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)userGrayNickname:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}

//: - (void)updateTheNickname
- (void)requestButton
{

    //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
    [TouchShowMessage comment:^(NSDictionary * _Nonnull configDict) {
        //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
        [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
         {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:[[FrigidnessData sharedInstance] main_hospitalPath] object:nil];
        //: }];
        }];
    //: }];
    }];


}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        _titleLabel.text = LangKey(@"deactivated_success");
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"safe_success_tip"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[FrigidnessData sharedInstance] app_alienValue]]];
    }
    //: return _img;
    return _img;
}

//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];
        //: UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img1.image = [UIImage imageNamed:@"safe_success_step"];
        img1.image = [UIImage imageNamed:[[FrigidnessData sharedInstance] notiPickTitle]];
        //: [view1 addSubview:img1];
        [view1 addSubview:img1];


        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [PushLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [BackgroundRandomAttribute content:[[FrigidnessData sharedInstance] main_centerPath]];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIImageView *img2 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img2 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img2.image = [UIImage imageNamed:@"safe_success_step"];
        img2.image = [UIImage imageNamed:[[FrigidnessData sharedInstance] notiPickTitle]];
        //: [view2 addSubview:img2];
        [view2 addSubview:img2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, img2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, img2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor blackColor];
        labtitle2.textColor = [UIColor blackColor];
        //: labtitle2.text = [PushLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [BackgroundRandomAttribute content:[[FrigidnessData sharedInstance] notiSnapKey]];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIImageView *img3 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img3 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img3.image = [UIImage imageNamed:@"safe_success_step"];
        img3.image = [UIImage imageNamed:[[FrigidnessData sharedInstance] notiPickTitle]];
        //: [view3 addSubview:img3];
        [view3 addSubview:img3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, img3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, img3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor blackColor];
        labtitle3.textColor = [UIColor blackColor];
        //: labtitle3.text = [PushLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [BackgroundRandomAttribute content:[[FrigidnessData sharedInstance] notiAspectStr]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[[FrigidnessData sharedInstance] show_deadUrl]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[[FrigidnessData sharedInstance] show_deadUrl]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}


//- (UIButton *)closeBtn {
//    if (!_closeBtn) {
//        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_closeBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
//        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _closeBtn.layer.borderWidth = 0.5;
//        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
//        _closeBtn.layer.cornerRadius = 10;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
//    }
//    return _closeBtn;
//}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(requestButton) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#fffPush"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor user:[[FrigidnessData sharedInstance] m_viewName]] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:@"OK" forState:UIControlStateNormal];
        [_sureBtn setTitle:@"OK" forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[[FrigidnessData sharedInstance] dreamBelowFormat]];
//        _sureBtn.layer.borderWidth = 0.5;
//        _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
        _sureBtn.layer.shadowColor = [UIColor user:[[FrigidnessData sharedInstance] dreamBelowFormat]].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

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
- (void)edgeLight
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end

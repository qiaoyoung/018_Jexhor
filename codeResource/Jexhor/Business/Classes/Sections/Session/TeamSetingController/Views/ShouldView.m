
#import <Foundation/Foundation.h>

typedef struct {
    Byte speculateTap;
    Byte *sign;
    unsigned int userReinforce;
	int imageLegislature;
	int threadPath;
	int wooVerdictNorthern;
} StructVerdictData;

@interface VerdictData : NSObject

+ (instancetype)sharedInstance;

//: #5D5F66
@property (nonatomic, copy) NSString *app_nameTitle;

//: warm_prompt
@property (nonatomic, copy) NSString *app_imageFormat;

//: #FF483D
@property (nonatomic, copy) NSString *show_iconPath;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *show_marginTitle;

//: 999999
@property (nonatomic, copy) NSString *mainInfoButtName;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *k_milkStr;

@end

@implementation VerdictData

+ (instancetype)sharedInstance {
    static VerdictData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VerdictDataToByte:(StructVerdictData *)data {
    for (int i = 0; i < data->userReinforce; i++) {
        data->sign[i] ^= data->speculateTap;
    }
    data->sign[data->userReinforce] = 0;
	if (data->userReinforce >= 3) {
		data->imageLegislature = data->sign[0];
		data->threadPath = data->sign[1];
		data->wooVerdictNorthern = data->sign[2];
	}
    return data->sign;
}

- (NSString *)StringFromVerdictData:(StructVerdictData *)data {
    return [NSString stringWithUTF8String:(char *)[self VerdictDataToByte:data]];
}

//: #5D5F66
- (NSString *)app_nameTitle {
    if (!_app_nameTitle) {
        StructVerdictData value = (StructVerdictData){92, (Byte []){127, 105, 24, 105, 26, 106, 106, 30}, 7, 238, 122, 139};
        _app_nameTitle = [self StringFromVerdictData:&value];
    }
    return _app_nameTitle;
}

//: contact_tag_fragment_sure
- (NSString *)k_milkStr {
    if (!_k_milkStr) {
        StructVerdictData value = (StructVerdictData){66, (Byte []){33, 45, 44, 54, 35, 33, 54, 29, 54, 35, 37, 29, 36, 48, 35, 37, 47, 39, 44, 54, 29, 49, 55, 48, 39, 254}, 25, 221, 109, 45};
        _k_milkStr = [self StringFromVerdictData:&value];
    }
    return _k_milkStr;
}

//: 999999
- (NSString *)mainInfoButtName {
    if (!_mainInfoButtName) {
        StructVerdictData value = (StructVerdictData){110, (Byte []){87, 87, 87, 87, 87, 87, 44}, 6, 96, 148, 142};
        _mainInfoButtName = [self StringFromVerdictData:&value];
    }
    return _mainInfoButtName;
}

//: warm_prompt
- (NSString *)app_imageFormat {
    if (!_app_imageFormat) {
        StructVerdictData value = (StructVerdictData){64, (Byte []){55, 33, 50, 45, 31, 48, 50, 47, 45, 48, 52, 214}, 11, 178, 65, 161};
        _app_imageFormat = [self StringFromVerdictData:&value];
    }
    return _app_imageFormat;
}

//: contact_tag_fragment_cancel
- (NSString *)show_marginTitle {
    if (!_show_marginTitle) {
        StructVerdictData value = (StructVerdictData){220, (Byte []){191, 179, 178, 168, 189, 191, 168, 131, 168, 189, 187, 131, 186, 174, 189, 187, 177, 185, 178, 168, 131, 191, 189, 178, 191, 185, 176, 146}, 27, 245, 14, 235};
        _show_marginTitle = [self StringFromVerdictData:&value];
    }
    return _show_marginTitle;
}

//: #FF483D
- (NSString *)show_iconPath {
    if (!_show_iconPath) {
        StructVerdictData value = (StructVerdictData){83, (Byte []){112, 21, 21, 103, 107, 96, 23, 249}, 7, 6, 130, 239};
        _show_iconPath = [self StringFromVerdictData:&value];
    }
    return _show_iconPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAlartView.h"
#import "ShouldView.h"

//: @interface ZMONAlartView ()
@interface ShouldView ()

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

//: @implementation ZMONAlartView
@implementation ShouldView

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
        [self initContainer];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initContainer{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: tip.font = [UIFont boldSystemFontOfSize:18.f];
    tip.font = [UIFont boldSystemFontOfSize:18.f];
    //: tip.textColor = [UIColor blackColor];
    tip.textColor = [UIColor blackColor];
    //: tip.textAlignment = NSTextAlignmentCenter;
    tip.textAlignment = NSTextAlignmentCenter;
    //: tip.text = [PushLanguageManager getTextWithKey:@"warm_prompt"];
    tip.text = [BackgroundRandomAttribute content:[VerdictData sharedInstance].app_imageFormat];
    //: [_box addSubview:tip];
    [_box addSubview:tip];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);
    self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);


}

//: - (void)reloadWithTitlename:(NSString *)name
- (void)with:(NSString *)name
{
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
}

//: - (void)handleSubmit{
- (void)threadTitle{

    //: [self endEditing:YES];
    [self endEditing:YES];
    //: self.speiceBackBlock(@"");
    self.speiceBackBlock(@"");

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"999999"];
        _titleLabel.textColor = [UIColor user:[VerdictData sharedInstance].mainInfoButtName];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
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
        [_closeBtn setTitleColor:[UIColor user:[VerdictData sharedInstance].app_nameTitle] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[VerdictData sharedInstance].show_marginTitle] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(threadTitle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[VerdictData sharedInstance].k_milkStr] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor user:[VerdictData sharedInstance].show_iconPath];
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
- (void)head
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

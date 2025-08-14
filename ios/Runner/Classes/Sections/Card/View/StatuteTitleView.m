
#import <Foundation/Foundation.h>

typedef struct {
    Byte quantity;
    Byte *mustThread;
    unsigned int showTarget;
	int skimOverParent;
	int circumference;
	int bySize;
} StructPressData;

@interface PressData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PressData

+ (instancetype)sharedInstance {
    static PressData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PressDataToByte:(StructPressData *)data {
    for (int i = 0; i < data->showTarget; i++) {
        data->mustThread[i] ^= data->quantity;
    }
    data->mustThread[data->showTarget] = 0;
	if (data->showTarget >= 3) {
		data->skimOverParent = data->mustThread[0];
		data->circumference = data->mustThread[1];
		data->bySize = data->mustThread[2];
	}
    return data->mustThread;
}

- (NSString *)StringFromPressData:(StructPressData *)data {
    return [NSString stringWithUTF8String:(char *)[self PressDataToByte:data]];
}

//: #333333
- (NSString *)user_valueAppearTitle {
    /* static */ NSString *user_valueAppearTitle = nil;
    if (!user_valueAppearTitle) {
        StructPressData value = (StructPressData){43, (Byte []){8, 24, 24, 24, 24, 24, 24, 73}, 7, 119, 246, 45};
        user_valueAppearTitle = [self StringFromPressData:&value];
    }
    return user_valueAppearTitle;
}

//: user_profile_avtivity_remove_friend
- (NSString *)mainHandleText {
    /* static */ NSString *mainHandleText = nil;
    if (!mainHandleText) {
        StructPressData value = (StructPressData){215, (Byte []){162, 164, 178, 165, 136, 167, 165, 184, 177, 190, 187, 178, 136, 182, 161, 163, 190, 161, 190, 163, 174, 136, 165, 178, 186, 184, 161, 178, 136, 177, 165, 190, 178, 185, 179, 125}, 35, 175, 137, 189};
        mainHandleText = [self StringFromPressData:&value];
    }
    return mainHandleText;
}

//: #05D481
- (NSString *)user_tagName {
    /* static */ NSString *user_tagName = nil;
    if (!user_tagName) {
        StructPressData value = (StructPressData){190, (Byte []){157, 142, 139, 250, 138, 134, 143, 215}, 7, 150, 149, 117};
        user_tagName = [self StringFromPressData:&value];
    }
    return user_tagName;
}

//: contact_tag_fragment_cancel
- (NSString *)k_sessionData {
    /* static */ NSString *k_sessionData = nil;
    if (!k_sessionData) {
        StructPressData value = (StructPressData){22, (Byte []){117, 121, 120, 98, 119, 117, 98, 73, 98, 119, 113, 73, 112, 100, 119, 113, 123, 115, 120, 98, 73, 117, 119, 120, 117, 115, 122, 75}, 27, 198, 40, 7};
        k_sessionData = [self StringFromPressData:&value];
    }
    return k_sessionData;
}

//: #5D5F66
- (NSString *)notiButtonTitle {
    /* static */ NSString *notiButtonTitle = nil;
    if (!notiButtonTitle) {
        StructPressData value = (StructPressData){105, (Byte []){74, 92, 45, 92, 47, 95, 95, 222}, 7, 144, 108, 57};
        notiButtonTitle = [self StringFromPressData:&value];
    }
    return notiButtonTitle;
}

//: delete
- (NSString *)m_disableData {
    /* static */ NSString *m_disableData = nil;
    if (!m_disableData) {
        StructPressData value = (StructPressData){10, (Byte []){110, 111, 102, 111, 126, 111, 8}, 6, 198, 128, 81};
        m_disableData = [self StringFromPressData:&value];
    }
    return m_disableData;
}

//: report_next_select_delete
- (NSString *)dreamFileName {
    /* static */ NSString *dreamFileName = nil;
    if (!dreamFileName) {
        StructPressData value = (StructPressData){74, (Byte []){56, 47, 58, 37, 56, 62, 21, 36, 47, 50, 62, 21, 57, 47, 38, 47, 41, 62, 21, 46, 47, 38, 47, 62, 47, 76}, 25, 146, 54, 184};
        dreamFileName = [self StringFromPressData:&value];
    }
    return dreamFileName;
}

//: YES
- (NSString *)mMaxImageTitle {
    /* static */ NSString *mMaxImageTitle = nil;
    if (!mMaxImageTitle) {
        StructPressData value = (StructPressData){38, (Byte []){127, 99, 117, 154}, 3, 14, 173, 124};
        mMaxImageTitle = [self StringFromPressData:&value];
    }
    return mMaxImageTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteTitleView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "StatuteTitleView.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"

//: @interface ZMONReportDeleteView ()
@interface StatuteTitleView ()

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
@implementation StatuteTitleView

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
        [self initYear];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initYear{
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
    labsubLabel.textColor = [UIColor ground:[[PressData sharedInstance] user_valueAppearTitle]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [WorkLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [InputRed preserve:[[PressData sharedInstance] dreamFileName]];
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
- (void)imageText
{
    //: [self animationClose];
    [self animationWithEnableAtHand];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([[PressData sharedInstance] mMaxImageTitle]);
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
        //: _titleLabel.text = [WorkLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [InputRed preserve:[[PressData sharedInstance] mainHandleText]];
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
        [_closeBtn addTarget:self action:@selector(animationWithEnableAtHand) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor ground:[[PressData sharedInstance] notiButtonTitle]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[[PressData sharedInstance] k_sessionData]] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(imageText) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WorkLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[[PressData sharedInstance] m_disableData]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor ground:[[PressData sharedInstance] user_tagName]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)animationWithEnableAtHand
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)blue
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end

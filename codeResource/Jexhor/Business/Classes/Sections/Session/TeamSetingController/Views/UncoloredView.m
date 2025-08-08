
#import <Foundation/Foundation.h>

typedef struct {
    Byte housekeep;
    Byte *imageBalance;
    unsigned int readThread;
	int pursuitSize;
} StructBalloonData;

@interface BalloonData : NSObject

@end

@implementation BalloonData

+ (Byte *)BalloonDataToByte:(StructBalloonData *)data {
    for (int i = 0; i < data->readThread; i++) {
        data->imageBalance[i] ^= data->housekeep;
    }
    data->imageBalance[data->readThread] = 0;
	if (data->readThread >= 1) {
		data->pursuitSize = data->imageBalance[0];
	}
    return data->imageBalance;
}

+ (NSString *)StringFromBalloonData:(StructBalloonData *)data {
    return [NSString stringWithUTF8String:(char *)[self BalloonDataToByte:data]];
}

//: #5D5F66
+ (NSString *)notiDrinkingTitle {
    /* static */ NSString *notiDrinkingTitle = nil;
    if (!notiDrinkingTitle) {
        StructBalloonData value = (StructBalloonData){150, (Byte []){181, 163, 210, 163, 208, 160, 160, 187}, 7, 165};
        notiDrinkingTitle = [self StringFromBalloonData:&value];
    }
    return notiDrinkingTitle;
}

//: #FF483D
+ (NSString *)m_lengthName {
    /* static */ NSString *m_lengthName = nil;
    if (!m_lengthName) {
        StructBalloonData value = (StructBalloonData){205, (Byte []){238, 139, 139, 249, 245, 254, 137, 150}, 7, 230};
        m_lengthName = [self StringFromBalloonData:&value];
    }
    return m_lengthName;
}

//: contact_tag_fragment_sure
+ (NSString *)k_mustText {
    /* static */ NSString *k_mustText = nil;
    if (!k_mustText) {
        StructBalloonData value = (StructBalloonData){32, (Byte []){67, 79, 78, 84, 65, 67, 84, 127, 84, 65, 71, 127, 70, 82, 65, 71, 77, 69, 78, 84, 127, 83, 85, 82, 69, 136}, 25, 115};
        k_mustText = [self StringFromBalloonData:&value];
    }
    return k_mustText;
}

//: contact_tag_fragment_cancel
+ (NSString *)noti_crowdedValue {
    /* static */ NSString *noti_crowdedValue = nil;
    if (!noti_crowdedValue) {
        StructBalloonData value = (StructBalloonData){116, (Byte []){23, 27, 26, 0, 21, 23, 0, 43, 0, 21, 19, 43, 18, 6, 21, 19, 25, 17, 26, 0, 43, 23, 21, 26, 23, 17, 24, 224}, 27, 136};
        noti_crowdedValue = [self StringFromBalloonData:&value];
    }
    return noti_crowdedValue;
}

//: warm_prompt
+ (NSString *)showCousinAfternoonData {
    /* static */ NSString *showCousinAfternoonData = nil;
    if (!showCousinAfternoonData) {
        StructBalloonData value = (StructBalloonData){228, (Byte []){147, 133, 150, 137, 187, 148, 150, 139, 137, 148, 144, 25}, 11, 245};
        showCousinAfternoonData = [self StringFromBalloonData:&value];
    }
    return showCousinAfternoonData;
}

//: 999999
+ (NSString *)showBarrelText {
    /* static */ NSString *showBarrelText = nil;
    if (!showBarrelText) {
        StructBalloonData value = (StructBalloonData){91, (Byte []){98, 98, 98, 98, 98, 98, 255}, 6, 138};
        showBarrelText = [self StringFromBalloonData:&value];
    }
    return showBarrelText;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  UncoloredView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAlartView.h"
#import "UncoloredView.h"

//: @interface ZMONAlartView ()
@interface UncoloredView ()

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
@implementation UncoloredView

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
        [self initSize];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initSize{
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
    //: tip.text = [WorkLanguageManager getTextWithKey:@"warm_prompt"];
    tip.text = [InputRed preserve:[BalloonData showCousinAfternoonData]];
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
- (void)pathTextname:(NSString *)name
{
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
}

//: - (void)handleSubmit{
- (void)pictureShow{

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
        _titleLabel.textColor = [UIColor ground:[BalloonData showBarrelText]];
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
        [_closeBtn addTarget:self action:@selector(animationWithEnableAtHand) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor ground:[BalloonData notiDrinkingTitle]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[BalloonData noti_crowdedValue]] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(pictureShow) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[BalloonData k_mustText]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor ground:[BalloonData m_lengthName]];
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
- (void)name
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

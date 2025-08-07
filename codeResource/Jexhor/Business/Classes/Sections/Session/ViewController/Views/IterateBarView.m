
#import <Foundation/Foundation.h>

@interface DirectData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DirectData

+ (instancetype)sharedInstance {
    static DirectData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DirectDataToCache:(Byte *)data {
    int rangeChoice = data[0];
    Byte inputVillage = data[1];
    int ticktock = data[2];
    for (int i = ticktock; i < ticktock + rangeChoice; i++) {
        int value = data[i] - inputVillage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ticktock + rangeChoice] = 0;
    return data + ticktock;
}

- (NSString *)StringFromDirectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DirectDataToCache:data]];
}

//: contact_tag_fragment_sure
- (NSString *)userOnUrl {
    /* static */ NSString *userOnUrl = nil;
    if (!userOnUrl) {
        Byte value[] = {25, 11, 6, 196, 80, 163, 110, 122, 121, 127, 108, 110, 127, 106, 127, 108, 114, 106, 113, 125, 108, 114, 120, 112, 121, 127, 106, 126, 128, 125, 112, 107};
        userOnUrl = [self StringFromDirectData:value];
    }
    return userOnUrl;
}

//: report_reasons9
- (NSString *)noti_directStr {
    /* static */ NSString *noti_directStr = nil;
    if (!noti_directStr) {
        Byte value[] = {15, 71, 13, 120, 238, 166, 194, 224, 115, 18, 73, 237, 49, 185, 172, 183, 182, 185, 187, 166, 185, 172, 168, 186, 182, 181, 186, 128, 221};
        noti_directStr = [self StringFromDirectData:value];
    }
    return noti_directStr;
}

//: #5D5F66
- (NSString *)m_disappointedTitle {
    /* static */ NSString *m_disappointedTitle = nil;
    if (!m_disappointedTitle) {
        Byte value[] = {7, 97, 8, 111, 85, 148, 49, 77, 132, 150, 165, 150, 167, 151, 151, 181};
        m_disappointedTitle = [self StringFromDirectData:value];
    }
    return m_disappointedTitle;
}

//: #333333
- (NSString *)mPickVerdictChoiceKey {
    /* static */ NSString *mPickVerdictChoiceKey = nil;
    if (!mPickVerdictChoiceKey) {
        Byte value[] = {7, 66, 11, 216, 103, 231, 74, 87, 111, 134, 134, 101, 117, 117, 117, 117, 117, 117, 80};
        mPickVerdictChoiceKey = [self StringFromDirectData:value];
    }
    return mPickVerdictChoiceKey;
}

//: report_Content
- (NSString *)dream_panMessage {
    /* static */ NSString *dream_panMessage = nil;
    if (!dream_panMessage) {
        Byte value[] = {14, 39, 10, 145, 175, 64, 31, 85, 195, 195, 153, 140, 151, 150, 153, 155, 134, 106, 150, 149, 155, 140, 149, 155, 172};
        dream_panMessage = [self StringFromDirectData:value];
    }
    return dream_panMessage;
}

//: contact_tag_fragment_cancel
- (NSString *)notiRoughData {
    /* static */ NSString *notiRoughData = nil;
    if (!notiRoughData) {
        Byte value[] = {27, 3, 13, 105, 68, 115, 158, 160, 72, 165, 250, 141, 251, 102, 114, 113, 119, 100, 102, 119, 98, 119, 100, 106, 98, 105, 117, 100, 106, 112, 104, 113, 119, 98, 102, 100, 113, 102, 104, 111, 55};
        notiRoughData = [self StringFromDirectData:value];
    }
    return notiRoughData;
}

//: report_reasons10
- (NSString *)main_downContent {
    /* static */ NSString *main_downContent = nil;
    if (!main_downContent) {
        Byte value[] = {16, 8, 3, 122, 109, 120, 119, 122, 124, 103, 122, 109, 105, 123, 119, 118, 123, 57, 56, 184};
        main_downContent = [self StringFromDirectData:value];
    }
    return main_downContent;
}

//: icon_accessory_selected
- (NSString *)mPractitionerContent {
    /* static */ NSString *mPractitionerContent = nil;
    if (!mPractitionerContent) {
        Byte value[] = {23, 66, 13, 117, 30, 139, 94, 96, 51, 222, 192, 227, 84, 171, 165, 177, 176, 161, 163, 165, 165, 167, 181, 181, 177, 180, 187, 161, 181, 167, 174, 167, 165, 182, 167, 166, 204};
        mPractitionerContent = [self StringFromDirectData:value];
    }
    return mPractitionerContent;
}

//: icon_accessory_normal
- (NSString *)mainPinValue {
    /* static */ NSString *mainPinValue = nil;
    if (!mainPinValue) {
        Byte value[] = {21, 64, 10, 220, 106, 229, 206, 178, 97, 239, 169, 163, 175, 174, 159, 161, 163, 163, 165, 179, 179, 175, 178, 185, 159, 174, 175, 178, 173, 161, 172, 108};
        mainPinValue = [self StringFromDirectData:value];
    }
    return mainPinValue;
}

//: #05D481
- (NSString *)kContentMsg {
    /* static */ NSString *kContentMsg = nil;
    if (!kContentMsg) {
        Byte value[] = {7, 8, 9, 34, 183, 245, 237, 132, 229, 43, 56, 61, 76, 60, 64, 57, 165};
        kContentMsg = [self StringFromDirectData:value];
    }
    return kContentMsg;
}

//: report_reasons7
- (NSString *)show_coldTitle {
    /* static */ NSString *show_coldTitle = nil;
    if (!show_coldTitle) {
        Byte value[] = {15, 80, 8, 142, 169, 178, 78, 248, 194, 181, 192, 191, 194, 196, 175, 194, 181, 177, 195, 191, 190, 195, 135, 132};
        show_coldTitle = [self StringFromDirectData:value];
    }
    return show_coldTitle;
}

//: report_reasons6
- (NSString *)mJuryFormat {
    /* static */ NSString *mJuryFormat = nil;
    if (!mJuryFormat) {
        Byte value[] = {15, 40, 12, 151, 30, 114, 63, 1, 43, 198, 42, 96, 154, 141, 152, 151, 154, 156, 135, 154, 141, 137, 155, 151, 150, 155, 94, 88};
        mJuryFormat = [self StringFromDirectData:value];
    }
    return mJuryFormat;
}

//: report_Tip
- (NSString *)mainSessionIdent {
    /* static */ NSString *mainSessionIdent = nil;
    if (!mainSessionIdent) {
        Byte value[] = {10, 85, 7, 119, 91, 206, 185, 199, 186, 197, 196, 199, 201, 180, 169, 190, 197, 245};
        mainSessionIdent = [self StringFromDirectData:value];
    }
    return mainSessionIdent;
}

//: report_reasons8
- (NSString *)app_motData {
    /* static */ NSString *app_motData = nil;
    if (!app_motData) {
        Byte value[] = {15, 84, 9, 44, 67, 127, 182, 86, 114, 198, 185, 196, 195, 198, 200, 179, 198, 185, 181, 199, 195, 194, 199, 140, 62};
        app_motData = [self StringFromDirectData:value];
    }
    return app_motData;
}

//: #999999
- (NSString *)notiPositionIdent {
    /* static */ NSString *notiPositionIdent = nil;
    if (!notiPositionIdent) {
        Byte value[] = {7, 44, 13, 64, 100, 207, 89, 3, 7, 53, 28, 72, 142, 79, 101, 101, 101, 101, 101, 101, 202};
        notiPositionIdent = [self StringFromDirectData:value];
    }
    return notiPositionIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IterateBarView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONTranslateView.h"
#import "IterateBarView.h"

//: @interface ZMONTranslateView ()
@interface IterateBarView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;

//: @property (nonatomic,strong) NSArray *selectButtons;
@property (nonatomic,strong) NSArray *selectButtons;
//: @property (nonatomic,assign) NSInteger index;
@property (nonatomic,assign) NSInteger index;

//: @end
@end

//: @implementation ZMONTranslateView
@implementation IterateBarView

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
        [self initParentWithinView];

        //: self.selectButtons = @[[PushLanguageManager getTextWithKey:@"report_reasons7"],[PushLanguageManager getTextWithKey:@"report_reasons8"],[PushLanguageManager getTextWithKey:@"report_reasons9"],[PushLanguageManager getTextWithKey:@"report_reasons10"],[PushLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[BackgroundRandomAttribute content:[[DirectData sharedInstance] show_coldTitle]],[BackgroundRandomAttribute content:[[DirectData sharedInstance] app_motData]],[BackgroundRandomAttribute content:[[DirectData sharedInstance] noti_directStr]],[BackgroundRandomAttribute content:[[DirectData sharedInstance] main_downContent]],[BackgroundRandomAttribute content:[[DirectData sharedInstance] mJuryFormat]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initParentWithinView{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    //: labsub.font = [UIFont systemFontOfSize:12.f];
    labsub.font = [UIFont systemFontOfSize:12.f];
    //: labsub.textColor = [UIColor colorWithHexString:@"#999999"];
    labsub.textColor = [UIColor user:[[DirectData sharedInstance] notiPositionIdent]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [PushLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [BackgroundRandomAttribute content:[[DirectData sharedInstance] mainSessionIdent]];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

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
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [PushLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [BackgroundRandomAttribute content:[[DirectData sharedInstance] dream_panMessage]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (void)handleReason:(UIButton *)sender
- (void)blueished:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if(sender.selected){
    if(sender.selected){
        //: self.index = sender.tag;
        self.index = sender.tag;
    }

}

//: - (UIView *)buttonBox
- (UIView *)buttonBox
{
    //: if(!_buttonBox){
    if(!_buttonBox){
        //: _buttonBox = [[UIView alloc]init];
        _buttonBox = [[UIView alloc]init];

        //: UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn1 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn1 addTarget:self action:@selector(blueished:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn1 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mainPinValue]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mPractitionerContent]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons7"] forState:UIControlStateNormal];
        [Btn1 setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] show_coldTitle]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor user:[[DirectData sharedInstance] mPickVerdictChoiceKey]] forState:UIControlStateNormal];
        //: Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn1];
        [_buttonBox addSubview:Btn1];
        //: Btn1.tag = 0;
        Btn1.tag = 0;


        //: UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn2 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn2 addTarget:self action:@selector(blueished:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn2 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mainPinValue]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mPractitionerContent]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons8"] forState:UIControlStateNormal];
        [Btn2 setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] app_motData]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor user:[[DirectData sharedInstance] mPickVerdictChoiceKey]] forState:UIControlStateNormal];
        //: Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn2];
        [_buttonBox addSubview:Btn2];
        //: Btn2.tag = 1;
        Btn2.tag = 1;

        //: UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn3 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn3 addTarget:self action:@selector(blueished:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn3 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mainPinValue]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mPractitionerContent]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons9"] forState:UIControlStateNormal];
        [Btn3 setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] noti_directStr]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor user:[[DirectData sharedInstance] mPickVerdictChoiceKey]] forState:UIControlStateNormal];
        //: Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn3.tag = 2;
        Btn3.tag = 2;

        //: UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn4 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn4 addTarget:self action:@selector(blueished:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn4 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mainPinValue]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mPractitionerContent]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons10"] forState:UIControlStateNormal];
        [Btn4 setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] main_downContent]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor user:[[DirectData sharedInstance] mPickVerdictChoiceKey]] forState:UIControlStateNormal];
        //: Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn4.tag = 3;
        Btn4.tag = 3;

        //: UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn5 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn5 addTarget:self action:@selector(blueished:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn5 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mainPinValue]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[[DirectData sharedInstance] mPractitionerContent]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn5 setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] mJuryFormat]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor user:[[DirectData sharedInstance] mPickVerdictChoiceKey]] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
    }
    //: return _buttonBox;
    return _buttonBox;
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
        [_closeBtn setTitleColor:[UIColor user:[[DirectData sharedInstance] m_disappointedTitle]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] notiRoughData]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[[DirectData sharedInstance] userOnUrl]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[[DirectData sharedInstance] kContentMsg]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
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
//
//- (UIButton *)sureBtn {
//    if (!_sureBtn) {
//        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
//        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//        [_sureBtn setTitle:LangKey(@"contact_tag_fragment_sure") forState:UIControlStateNormal];
//        _sureBtn.backgroundColor = ThemeColor;
//        _sureBtn.layer.cornerRadius = 10;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;
//        
//    }
//    return _sureBtn;
//}

//: - (void)handleSubmit
- (void)threadTitle
{
    //: [self animationClose];
    [self nearAdd];
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];

    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitContentButton:)]) {
    if ([self.delegate respondsToSelector:@selector(fastenerred:)]) {
        //: [self.delegate didTouchSubmitContentButton:self.selectButtons[self.index]];
        [self.delegate fastenerred:self.selectButtons[self.index]];
    }


}


//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)present
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end

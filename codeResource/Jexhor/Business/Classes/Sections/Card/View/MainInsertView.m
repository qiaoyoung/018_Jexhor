
#import <Foundation/Foundation.h>
typedef struct {
    Byte errHero;
    Byte *itself;
    unsigned int direct;
    Byte upView;
	int aspect;
	int pan;
} CoverData;

NSString *StringFromCoverData(CoverData *data);


//: icon_accessory_normal
CoverData userDisplayMessage = (CoverData){51, (Byte []){90, 80, 92, 93, 108, 82, 80, 80, 86, 64, 64, 92, 65, 74, 108, 93, 92, 65, 94, 82, 95, 145}, 21, 222, 81, 82};

//: #333333
CoverData userBelowName = (CoverData){224, (Byte []){195, 211, 211, 211, 211, 211, 211, 146}, 7, 151, 86, 9};

//: report_reasons3
CoverData user_buildStr = (CoverData){9, (Byte []){123, 108, 121, 102, 123, 125, 86, 123, 108, 104, 122, 102, 103, 122, 58, 221}, 15, 253, 152, 138};

//: report_User
CoverData notiPractitionerContent = (CoverData){149, (Byte []){231, 240, 229, 250, 231, 225, 202, 192, 230, 240, 231, 107}, 11, 173, 177, 161};

//: report_Tip
CoverData app_toIdent = (CoverData){169, (Byte []){219, 204, 217, 198, 219, 221, 246, 253, 192, 217, 209}, 10, 245, 157, 101};

//: #05D481
CoverData mainDisplayDismissSubPath = (CoverData){48, (Byte []){19, 0, 5, 116, 4, 8, 1, 17}, 7, 167, 145, 138};

//: report_reasons1
CoverData app_practitionerPath = (CoverData){60, (Byte []){78, 89, 76, 83, 78, 72, 99, 78, 89, 93, 79, 83, 82, 79, 13, 193}, 15, 194, 196, 151};

//: contact_tag_fragment_sure
CoverData kPullPath = (CoverData){97, (Byte []){2, 14, 15, 21, 0, 2, 21, 62, 21, 0, 6, 62, 7, 19, 0, 6, 12, 4, 15, 21, 62, 18, 20, 19, 4, 79}, 25, 169, 235, 65};

//: contact_tag_fragment_cancel
CoverData userTerritoryData = (CoverData){118, (Byte []){21, 25, 24, 2, 23, 21, 2, 41, 2, 23, 17, 41, 16, 4, 23, 17, 27, 19, 24, 2, 41, 21, 23, 24, 21, 19, 26, 22}, 27, 212, 29, 232};

//: icon_accessory_selected
CoverData userStatusSnapId = (CoverData){148, (Byte []){253, 247, 251, 250, 203, 245, 247, 247, 241, 231, 231, 251, 230, 237, 203, 231, 241, 248, 241, 247, 224, 241, 240, 237}, 23, 169, 3, 139};

//: #999999
CoverData noti_theaterImageUrl = (CoverData){30, (Byte []){61, 39, 39, 39, 39, 39, 39, 15}, 7, 167, 124, 182};

//: #5D5F66
CoverData appAmStr = (CoverData){25, (Byte []){58, 44, 93, 44, 95, 47, 47, 152}, 7, 199, 212, 50};

//: report_reasons2
CoverData app_abortImageFormat = (CoverData){174, (Byte []){220, 203, 222, 193, 220, 218, 241, 220, 203, 207, 221, 193, 192, 221, 156, 26}, 15, 246, 142, 42};

//: report_reasons4
CoverData mColdName = (CoverData){2, (Byte []){112, 103, 114, 109, 112, 118, 93, 112, 103, 99, 113, 109, 108, 113, 54, 159}, 15, 157, 223, 164};

//: report_reasons6
CoverData notiSizeIdent = (CoverData){222, (Byte []){172, 187, 174, 177, 172, 170, 129, 172, 187, 191, 173, 177, 176, 173, 232, 17}, 15, 163, 122, 165};

//: report_reasons5
CoverData kTickName = (CoverData){181, (Byte []){199, 208, 197, 218, 199, 193, 234, 199, 208, 212, 198, 218, 219, 198, 128, 183}, 15, 207, 222, 49};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainInsertView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportUserView.h"
#import "MainInsertView.h"

//: @interface ZMONReportUserView ()
@interface MainInsertView ()

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

//: @implementation ZMONReportUserView
@implementation MainInsertView

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
        [self initSmart];

        //: self.selectButtons = @[[PushLanguageManager getTextWithKey:@"report_reasons1"],[PushLanguageManager getTextWithKey:@"report_reasons2"],[PushLanguageManager getTextWithKey:@"report_reasons3"],[PushLanguageManager getTextWithKey:@"report_reasons4"],[PushLanguageManager getTextWithKey:@"report_reasons5"],[PushLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[BackgroundRandomAttribute content:StringFromCoverData(&app_practitionerPath)],[BackgroundRandomAttribute content:StringFromCoverData(&app_abortImageFormat)],[BackgroundRandomAttribute content:StringFromCoverData(&user_buildStr)],[BackgroundRandomAttribute content:StringFromCoverData(&mColdName)],[BackgroundRandomAttribute content:StringFromCoverData(&kTickName)],[BackgroundRandomAttribute content:StringFromCoverData(&notiSizeIdent)]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initSmart{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-432)/2, [[UIScreen mainScreen] bounds].size.width-40, 432)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-432)/2, [[UIScreen mainScreen] bounds].size.width-40, 432)];
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
    labsub.textColor = [UIColor user:StringFromCoverData(&noti_theaterImageUrl)];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [PushLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [BackgroundRandomAttribute content:StringFromCoverData(&app_toIdent)];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 216);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 216);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 432-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 432-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 432-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 432-20-height, width, height);
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
        //: _titleLabel.text = [PushLanguageManager getTextWithKey:@"report_User"];
        _titleLabel.text = [BackgroundRandomAttribute content:StringFromCoverData(&notiPractitionerContent)];
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
        [Btn1 setImage:[UIImage imageNamed:StringFromCoverData(&userDisplayMessage)] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:StringFromCoverData(&userStatusSnapId)] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons1"] forState:UIControlStateNormal];
        [Btn1 setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&app_practitionerPath)] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor user:StringFromCoverData(&userBelowName)] forState:UIControlStateNormal];
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
        [Btn2 setImage:[UIImage imageNamed:StringFromCoverData(&userDisplayMessage)] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:StringFromCoverData(&userStatusSnapId)] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons2"] forState:UIControlStateNormal];
        [Btn2 setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&app_abortImageFormat)] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor user:StringFromCoverData(&userBelowName)] forState:UIControlStateNormal];
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
        [Btn3 setImage:[UIImage imageNamed:StringFromCoverData(&userDisplayMessage)] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:StringFromCoverData(&userStatusSnapId)] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons3"] forState:UIControlStateNormal];
        [Btn3 setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&user_buildStr)] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor user:StringFromCoverData(&userBelowName)] forState:UIControlStateNormal];
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
        [Btn4 setImage:[UIImage imageNamed:StringFromCoverData(&userDisplayMessage)] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:StringFromCoverData(&userStatusSnapId)] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons4"] forState:UIControlStateNormal];
        [Btn4 setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&mColdName)] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor user:StringFromCoverData(&userBelowName)] forState:UIControlStateNormal];
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
        [Btn5 setImage:[UIImage imageNamed:StringFromCoverData(&userDisplayMessage)] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:StringFromCoverData(&userStatusSnapId)] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons5"] forState:UIControlStateNormal];
        [Btn5 setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&kTickName)] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor user:StringFromCoverData(&userBelowName)] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
        //: UIButton *Btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn6.frame = CGRectMake(0, Btn5.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn6.frame = CGRectMake(0, Btn5.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn6 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn6 addTarget:self action:@selector(blueished:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn6 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn6 setImage:[UIImage imageNamed:StringFromCoverData(&userDisplayMessage)] forState:UIControlStateNormal];
        //: [Btn6 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn6 setImage:[UIImage imageNamed:StringFromCoverData(&userStatusSnapId)] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn6];
        [_buttonBox addSubview:Btn6];
        //: [Btn6 setTitle:[PushLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn6 setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&notiSizeIdent)] forState:UIControlStateNormal];
        //: Btn6.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn6.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn6 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn6 setTitleColor:[UIColor user:StringFromCoverData(&userBelowName)] forState:UIControlStateNormal];
        //: Btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn6.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn6.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn6.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn6.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn6.tag = 5;
        Btn6.tag = 5;
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
        [_closeBtn setTitleColor:[UIColor user:StringFromCoverData(&appAmStr)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&userTerritoryData)] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[BackgroundRandomAttribute content:StringFromCoverData(&kPullPath)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:StringFromCoverData(&mainDisplayDismissSubPath)];
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
//
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitButton:)]) {
    if ([self.delegate respondsToSelector:@selector(perspectived:)]) {
        //: [self.delegate didTouchSubmitButton:self.selectButtons[self.index]];
        [self.delegate perspectived:self.selectButtons[self.index]];
    }
}


//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)disable
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

Byte *CoverDataToByte(CoverData *data) {
    if (data->upView < 115) return data->itself;
    for (int i = 0; i < data->direct; i++) {
        data->itself[i] ^= data->errHero;
    }
    data->itself[data->direct] = 0;
    data->upView = 64;
	if (data->direct >= 2) {
		data->aspect = data->itself[0];
		data->pan = data->itself[1];
	}
    return data->itself;
}

NSString *StringFromCoverData(CoverData *data) {
    return [NSString stringWithUTF8String:(char *)CoverDataToByte(data)];
}

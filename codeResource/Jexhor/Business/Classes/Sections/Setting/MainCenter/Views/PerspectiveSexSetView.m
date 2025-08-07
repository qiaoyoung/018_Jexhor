
#import <Foundation/Foundation.h>

@interface DoingData : NSObject

+ (instancetype)sharedInstance;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *app_rowImageName;

//: #ffffff
@property (nonatomic, copy) NSString *kDisableData;

//: ic_btn_accept
@property (nonatomic, copy) NSString *mainScaleBubbleValue;

//: #000000
@property (nonatomic, copy) NSString *k_commentValue;

//: #05D481
@property (nonatomic, copy) NSString *showAtData;

//: activity_friend_info_sex
@property (nonatomic, copy) NSString *main_hideContent;

//: friend_info_activity_xu
@property (nonatomic, copy) NSString *m_lengthValue;

//: friend_info_activity_nan
@property (nonatomic, copy) NSString *m_imageShouldTitle;

//: sex_unknow
@property (nonatomic, copy) NSString *main_removeName;

//: user_info_avtivity_keep
@property (nonatomic, copy) NSString *appButtonTitle;

//: friend_info_activity_nv
@property (nonatomic, copy) NSString *m_infoValue;

//: sex_woman
@property (nonatomic, copy) NSString *mMessageContent;

//: sex_man
@property (nonatomic, copy) NSString *dreamMustTextVideoValue;

//: #5D5F66
@property (nonatomic, copy) NSString *show_tableValue;

@end

@implementation DoingData

+ (instancetype)sharedInstance {
    static DoingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DoingDataToCache:(Byte *)data {
    int shouldSession = data[0];
    Byte labelRow = data[1];
    int paintTheLilyTable = data[2];
    for (int i = paintTheLilyTable; i < paintTheLilyTable + shouldSession; i++) {
        int value = data[i] - labelRow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[paintTheLilyTable + shouldSession] = 0;
    return data + paintTheLilyTable;
}

- (NSString *)StringFromDoingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DoingDataToCache:data]];
}

//: ic_btn_accept
- (NSString *)mainScaleBubbleValue {
    if (!_mainScaleBubbleValue) {
        Byte value[] = {13, 15, 10, 98, 221, 18, 189, 107, 70, 83, 120, 114, 110, 113, 131, 125, 110, 112, 114, 114, 116, 127, 131, 47};
        _mainScaleBubbleValue = [self StringFromDoingData:value];
    }
    return _mainScaleBubbleValue;
}

//: user_info_avtivity_keep
- (NSString *)appButtonTitle {
    if (!_appButtonTitle) {
        Byte value[] = {23, 38, 9, 139, 122, 212, 234, 185, 7, 155, 153, 139, 152, 133, 143, 148, 140, 149, 133, 135, 156, 154, 143, 156, 143, 154, 159, 133, 145, 139, 139, 150, 222};
        _appButtonTitle = [self StringFromDoingData:value];
    }
    return _appButtonTitle;
}

//: activity_friend_info_sex
- (NSString *)main_hideContent {
    if (!_main_hideContent) {
        Byte value[] = {24, 81, 6, 175, 129, 215, 178, 180, 197, 186, 199, 186, 197, 202, 176, 183, 195, 186, 182, 191, 181, 176, 186, 191, 183, 192, 176, 196, 182, 201, 215};
        _main_hideContent = [self StringFromDoingData:value];
    }
    return _main_hideContent;
}

//: #000000
- (NSString *)k_commentValue {
    if (!_k_commentValue) {
        Byte value[] = {7, 40, 3, 75, 88, 88, 88, 88, 88, 88, 147};
        _k_commentValue = [self StringFromDoingData:value];
    }
    return _k_commentValue;
}

//: contact_tag_fragment_cancel
- (NSString *)app_rowImageName {
    if (!_app_rowImageName) {
        Byte value[] = {27, 45, 3, 144, 156, 155, 161, 142, 144, 161, 140, 161, 142, 148, 140, 147, 159, 142, 148, 154, 146, 155, 161, 140, 144, 142, 155, 144, 146, 153, 212};
        _app_rowImageName = [self StringFromDoingData:value];
    }
    return _app_rowImageName;
}

//: friend_info_activity_nan
- (NSString *)m_imageShouldTitle {
    if (!_m_imageShouldTitle) {
        Byte value[] = {24, 15, 11, 166, 175, 25, 8, 241, 133, 99, 1, 117, 129, 120, 116, 125, 115, 110, 120, 125, 117, 126, 110, 112, 114, 131, 120, 133, 120, 131, 136, 110, 125, 112, 125, 10};
        _m_imageShouldTitle = [self StringFromDoingData:value];
    }
    return _m_imageShouldTitle;
}

//: sex_unknow
- (NSString *)main_removeName {
    if (!_main_removeName) {
        Byte value[] = {10, 36, 10, 93, 145, 5, 87, 213, 49, 186, 151, 137, 156, 131, 153, 146, 143, 146, 147, 155, 57};
        _main_removeName = [self StringFromDoingData:value];
    }
    return _main_removeName;
}

//: #05D481
- (NSString *)showAtData {
    if (!_showAtData) {
        Byte value[] = {7, 81, 13, 184, 89, 139, 29, 84, 126, 110, 181, 156, 20, 116, 129, 134, 149, 133, 137, 130, 78};
        _showAtData = [self StringFromDoingData:value];
    }
    return _showAtData;
}

//: friend_info_activity_nv
- (NSString *)m_infoValue {
    if (!_m_infoValue) {
        Byte value[] = {23, 94, 3, 196, 208, 199, 195, 204, 194, 189, 199, 204, 196, 205, 189, 191, 193, 210, 199, 212, 199, 210, 215, 189, 204, 212, 69};
        _m_infoValue = [self StringFromDoingData:value];
    }
    return _m_infoValue;
}

//: sex_man
- (NSString *)dreamMustTextVideoValue {
    if (!_dreamMustTextVideoValue) {
        Byte value[] = {7, 60, 10, 177, 33, 144, 98, 109, 125, 49, 175, 161, 180, 155, 169, 157, 170, 251};
        _dreamMustTextVideoValue = [self StringFromDoingData:value];
    }
    return _dreamMustTextVideoValue;
}

//: #5D5F66
- (NSString *)show_tableValue {
    if (!_show_tableValue) {
        Byte value[] = {7, 76, 7, 29, 196, 180, 12, 111, 129, 144, 129, 146, 130, 130, 142};
        _show_tableValue = [self StringFromDoingData:value];
    }
    return _show_tableValue;
}

//: friend_info_activity_xu
- (NSString *)m_lengthValue {
    if (!_m_lengthValue) {
        Byte value[] = {23, 27, 13, 107, 116, 122, 207, 61, 171, 218, 89, 41, 142, 129, 141, 132, 128, 137, 127, 122, 132, 137, 129, 138, 122, 124, 126, 143, 132, 145, 132, 143, 148, 122, 147, 144, 10};
        _m_lengthValue = [self StringFromDoingData:value];
    }
    return _m_lengthValue;
}

//: sex_woman
- (NSString *)mMessageContent {
    if (!_mMessageContent) {
        Byte value[] = {9, 47, 9, 24, 161, 248, 229, 243, 93, 162, 148, 167, 142, 166, 158, 156, 144, 157, 44};
        _mMessageContent = [self StringFromDoingData:value];
    }
    return _mMessageContent;
}

//: #ffffff
- (NSString *)kDisableData {
    if (!_kDisableData) {
        Byte value[] = {7, 99, 12, 180, 38, 245, 59, 49, 219, 201, 243, 68, 134, 201, 201, 201, 201, 201, 201, 166};
        _kDisableData = [self StringFromDoingData:value];
    }
    return _kDisableData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveSexSetView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetSexView.h"
#import "PerspectiveSexSetView.h"

//: @interface NSSetSexView ()
@interface PerspectiveSexSetView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *BtnUnknow;
@property (nonatomic,strong) UIButton *BtnUnknow;
//: @property (nonatomic,strong) UILabel *labUnknow;
@property (nonatomic,strong) UILabel *labUnknow;
//: @property (nonatomic,strong) UIImageView *ImgUnknow;
@property (nonatomic,strong) UIImageView *ImgUnknow;

//: @property (nonatomic,strong) UIButton *BtnMan;
@property (nonatomic,strong) UIButton *BtnMan;
//: @property (nonatomic,strong) UILabel *labMan;
@property (nonatomic,strong) UILabel *labMan;
//: @property (nonatomic,strong) UIImageView *ImgMan;
@property (nonatomic,strong) UIImageView *ImgMan;

//: @property (nonatomic,strong) UIButton *BtnWoman;
@property (nonatomic,strong) UIButton *BtnWoman;
//: @property (nonatomic,strong) UILabel *labWoman;
@property (nonatomic,strong) UILabel *labWoman;
//: @property (nonatomic,strong) UIImageView *ImgWoman;
@property (nonatomic,strong) UIImageView *ImgWoman;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;

//: @end
@end

//: @implementation NSSetSexView
@implementation PerspectiveSexSetView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationWithEnableAtHand)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initImageAcrossData];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initImageAcrossData{

    //: CGFloat totalwidth = 295;
    CGFloat totalwidth = 295;
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    //: _box.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _box.backgroundColor = [UIColor ground:[DoingData sharedInstance].kDisableData];
    //: _box.layer.cornerRadius = 20;
    _box.layer.cornerRadius = 20;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);
    self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);

    //: CGFloat widthview = 64;
    CGFloat widthview = 64;
    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    //: [_box addSubview:view1];
    [_box addSubview:view1];
    //: _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnUnknow.tag = 0;
    _BtnUnknow.tag = 0;
    //: [_BtnUnknow addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnUnknow addTarget:self action:@selector(pushSex:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnUnknow setImage:[UIImage imageNamed:@"sex_unknow"] forState:UIControlStateNormal];
    [_BtnUnknow setImage:[UIImage imageNamed:[DoingData sharedInstance].main_removeName] forState:UIControlStateNormal];
    //: _BtnUnknow.layer.cornerRadius = widthview/2;
    _BtnUnknow.layer.cornerRadius = widthview/2;
    //: _BtnUnknow.layer.masksToBounds = YES;
    _BtnUnknow.layer.masksToBounds = YES;
    //: _BtnUnknow.layer.borderColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
    _BtnUnknow.layer.borderColor = [UIColor ground:[DoingData sharedInstance].showAtData].CGColor;
    //: _BtnUnknow.layer.borderWidth = 1;
    _BtnUnknow.layer.borderWidth = 1;
    //: [view1 addSubview:_BtnUnknow];
    [view1 addSubview:_BtnUnknow];

    //: _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgUnknow.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgUnknow.image = [UIImage imageNamed:[DoingData sharedInstance].mainScaleBubbleValue];
    //: [view1 addSubview:_ImgUnknow];
    [view1 addSubview:_ImgUnknow];

    //: _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labUnknow.font = [UIFont systemFontOfSize:14.f];
    _labUnknow.font = [UIFont systemFontOfSize:14.f];
    //: _labUnknow.textColor = [UIColor colorWithHexString:@"#05D481"];
    _labUnknow.textColor = [UIColor ground:[DoingData sharedInstance].showAtData];
    //: _labUnknow.textAlignment = NSTextAlignmentCenter;
    _labUnknow.textAlignment = NSTextAlignmentCenter;
    //: _labUnknow.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
    _labUnknow.text = [InputRed preserve:[DoingData sharedInstance].m_lengthValue];
    //: [view1 addSubview:_labUnknow];
    [view1 addSubview:_labUnknow];

    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    //: [_box addSubview:view2];
    [_box addSubview:view2];
    //: _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnMan.tag = 1;
    _BtnMan.tag = 1;
    //: [_BtnMan addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnMan addTarget:self action:@selector(pushSex:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnMan setImage:[UIImage imageNamed:@"sex_man"] forState:UIControlStateNormal];
    [_BtnMan setImage:[UIImage imageNamed:[DoingData sharedInstance].dreamMustTextVideoValue] forState:UIControlStateNormal];
    //: _BtnMan.layer.cornerRadius = widthview/2;
    _BtnMan.layer.cornerRadius = widthview/2;
    //: _BtnMan.layer.masksToBounds = YES;
    _BtnMan.layer.masksToBounds = YES;
    //: _BtnMan.layer.borderColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
    _BtnMan.layer.borderColor = [UIColor ground:[DoingData sharedInstance].showAtData].CGColor;
//    _BtnMan.layer.borderWidth = 1;
    //: [view2 addSubview:_BtnMan];
    [view2 addSubview:_BtnMan];

    //: _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgMan.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgMan.image = [UIImage imageNamed:[DoingData sharedInstance].mainScaleBubbleValue];
    //: [view2 addSubview:_ImgMan];
    [view2 addSubview:_ImgMan];
    //: _ImgMan.hidden = YES;
    _ImgMan.hidden = YES;

    //: _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labMan.font = [UIFont systemFontOfSize:14.f];
    _labMan.font = [UIFont systemFontOfSize:14.f];
    //: _labMan.textColor = [UIColor blackColor];
    _labMan.textColor = [UIColor blackColor];
    //: _labMan.textAlignment = NSTextAlignmentCenter;
    _labMan.textAlignment = NSTextAlignmentCenter;
    //: _labMan.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
    _labMan.text = [InputRed preserve:[DoingData sharedInstance].m_imageShouldTitle];
    //: [view2 addSubview:_labMan];
    [view2 addSubview:_labMan];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    //: [_box addSubview:view3];
    [_box addSubview:view3];
    //: _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnWoman.tag = 2;
    _BtnWoman.tag = 2;
    //: [_BtnWoman addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnWoman addTarget:self action:@selector(pushSex:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnWoman setImage:[UIImage imageNamed:@"sex_woman"] forState:UIControlStateNormal];
    [_BtnWoman setImage:[UIImage imageNamed:[DoingData sharedInstance].mMessageContent] forState:UIControlStateNormal];
    //: _BtnWoman.layer.cornerRadius = widthview/2;
    _BtnWoman.layer.cornerRadius = widthview/2;
    //: _BtnWoman.layer.masksToBounds = YES;
    _BtnWoman.layer.masksToBounds = YES;
    //: _BtnWoman.layer.borderColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
    _BtnWoman.layer.borderColor = [UIColor ground:[DoingData sharedInstance].showAtData].CGColor;
    //: [view3 addSubview:_BtnWoman];
    [view3 addSubview:_BtnWoman];

    //: _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgWoman.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgWoman.image = [UIImage imageNamed:[DoingData sharedInstance].mainScaleBubbleValue];
    //: [view3 addSubview:_ImgWoman];
    [view3 addSubview:_ImgWoman];
    //: _ImgWoman.hidden = YES;
    _ImgWoman.hidden = YES;

    //: _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labWoman.font = [UIFont systemFontOfSize:14.f];
    _labWoman.font = [UIFont systemFontOfSize:14.f];
    //: _labWoman.textColor = [UIColor blackColor];
    _labWoman.textColor = [UIColor blackColor];
    //: _labWoman.textAlignment = NSTextAlignmentCenter;
    _labWoman.textAlignment = NSTextAlignmentCenter;
    //: _labWoman.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
    _labWoman.text = [InputRed preserve:[DoingData sharedInstance].m_infoValue];
    //: [view3 addSubview:_labWoman];
    [view3 addSubview:_labWoman];


    //: CGFloat width = (totalwidth-60)/2;
    CGFloat width = (totalwidth-60)/2;
    //: CGFloat height = 44;
    CGFloat height = 44;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}

//: - (void)reloadWithGender:(NSInteger)gender
- (void)gender:(NSInteger)gender
{
    //: if(gender == 0){
    if(gender == 0){
        //: [self clickTheSex:_BtnUnknow];
        [self pushSex:_BtnUnknow];
    //: }else if (gender == 1){
    }else if (gender == 1){
        //: [self clickTheSex:_BtnMan];
        [self pushSex:_BtnMan];
    //: }else if (gender == 2){
    }else if (gender == 2){
        //: [self clickTheSex:_BtnWoman];
        [self pushSex:_BtnWoman];
    }
}

//: - (void)clickTheSex:(UIButton *)sender
- (void)pushSex:(UIButton *)sender
{
    //: self.selectedGender = sender.tag;
    self.selectedGender = sender.tag;

    //: if(sender == _BtnUnknow){
    if(sender == _BtnUnknow){
//        _BtnUnknow.layer.borderColor = ThemeColor.CGColor;
        //: _BtnUnknow.layer.borderWidth = 1;
        _BtnUnknow.layer.borderWidth = 1;
        //: _ImgUnknow.hidden = NO;
        _ImgUnknow.hidden = NO;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#05D481"];
        _labUnknow.textColor = [UIColor ground:[DoingData sharedInstance].showAtData];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
    //: }else if (sender == _BtnMan){
    }else if (sender == _BtnMan){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
//        _BtnMan.layer.borderColor = ThemeColor.CGColor;
        //: _BtnMan.layer.borderWidth = 1;
        _BtnMan.layer.borderWidth = 1;
        //: _ImgMan.hidden = NO;
        _ImgMan.hidden = NO;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#05D481"];
        _labMan.textColor = [UIColor ground:[DoingData sharedInstance].showAtData];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
    //: }else if (sender == _BtnWoman){
    }else if (sender == _BtnWoman){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
//        _BtnWoman.layer.borderColor = ThemeColor.CGColor;
        //: _BtnWoman.layer.borderWidth = 1;
        _BtnWoman.layer.borderWidth = 1;
        //: _ImgWoman.hidden = NO;
        _ImgWoman.hidden = NO;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#05D481"];
        _labWoman.textColor = [UIColor ground:[DoingData sharedInstance].showAtData];
    }
}

//: - (void)clickTheSave
- (void)existCircle
{
    //: self.speiceBackBlock(self.selectedGender);
    self.speiceBackBlock(self.selectedGender);
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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
        _titleLabel.textColor = [UIColor ground:[DoingData sharedInstance].k_commentValue];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_friend_info_sex"];
        _titleLabel.text = [InputRed preserve:[DoingData sharedInstance].main_hideContent];
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
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor ground:[DoingData sharedInstance].show_tableValue] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[DoingData sharedInstance].app_rowImageName] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        _closeBtn.backgroundColor = [UIColor ground:[DoingData sharedInstance].kDisableData];
        //: _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.cornerRadius = 22;
        //: _closeBtn.layer.masksToBounds = YES;
        _closeBtn.layer.masksToBounds = YES;
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
        //: [_sureBtn addTarget:self action:@selector(clickTheSave) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(existCircle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor ground:[DoingData sharedInstance].kDisableData] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[DoingData sharedInstance].appButtonTitle] forState:UIControlStateNormal];
        //: CGFloat width = (295-60)/2;
        CGFloat width = (295-60)/2;
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor ground:[DoingData sharedInstance].showAtData];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
        //: _sureBtn.layer.masksToBounds = YES;
        _sureBtn.layer.masksToBounds = YES;

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
- (void)with
{
    //: self.hidden = NO;
    self.hidden = NO;
}



//: @end
@end
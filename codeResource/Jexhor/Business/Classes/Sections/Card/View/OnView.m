
#import <Foundation/Foundation.h>

@interface ShouldTableData : NSObject

+ (instancetype)sharedInstance;

//: #FAF8FD
@property (nonatomic, copy) NSString *mRowThreadValue;

//: #5D5F66
@property (nonatomic, copy) NSString *appSuccessImageText;

//: #05D481
@property (nonatomic, copy) NSString *dreamSuccessTitle;

//: ic_distrub
@property (nonatomic, copy) NSString *m_successTitle;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *user_shouldData;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *userBubbleText;

//: report_Content
@property (nonatomic, copy) NSString *dream_canContent;

//: report_next_select
@property (nonatomic, copy) NSString *m_withText;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *appNameData;

@end

@implementation ShouldTableData

+ (instancetype)sharedInstance {
    static ShouldTableData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ShouldTableDataToCache:(Byte *)data {
    int parentLimit = data[0];
    Byte oldLength = data[1];
    int infoName = data[2];
    for (int i = infoName; i < infoName + parentLimit; i++) {
        int value = data[i] + oldLength;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[infoName + parentLimit] = 0;
    return data + infoName;
}

- (NSString *)StringFromShouldTableData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShouldTableDataToCache:data]];
}

//: contact_tag_fragment_sure
- (NSString *)user_shouldData {
    if (!_user_shouldData) {
        Byte value[] = {25, 61, 10, 211, 70, 6, 225, 108, 109, 134, 38, 50, 49, 55, 36, 38, 55, 34, 55, 36, 42, 34, 41, 53, 36, 42, 48, 40, 49, 55, 34, 54, 56, 53, 40, 142};
        _user_shouldData = [self StringFromShouldTableData:value];
    }
    return _user_shouldData;
}

//: ic_distrub
- (NSString *)m_successTitle {
    if (!_m_successTitle) {
        Byte value[] = {10, 55, 12, 173, 136, 25, 220, 137, 139, 218, 63, 137, 50, 44, 40, 45, 50, 60, 61, 59, 62, 43, 79};
        _m_successTitle = [self StringFromShouldTableData:value];
    }
    return _m_successTitle;
}

//: report_next_select
- (NSString *)m_withText {
    if (!_m_withText) {
        Byte value[] = {18, 25, 3, 89, 76, 87, 86, 89, 91, 70, 85, 76, 95, 91, 70, 90, 76, 83, 76, 74, 91, 218};
        _m_withText = [self StringFromShouldTableData:value];
    }
    return _m_withText;
}

//: #FAF8FD
- (NSString *)mRowThreadValue {
    if (!_mRowThreadValue) {
        Byte value[] = {7, 70, 5, 204, 221, 221, 0, 251, 0, 242, 0, 254, 172};
        _mRowThreadValue = [self StringFromShouldTableData:value];
    }
    return _mRowThreadValue;
}

//: activity_group_chat_avatar_add_black
- (NSString *)appNameData {
    if (!_appNameData) {
        Byte value[] = {36, 7, 8, 141, 61, 137, 123, 223, 90, 92, 109, 98, 111, 98, 109, 114, 88, 96, 107, 104, 110, 105, 88, 92, 97, 90, 109, 88, 90, 111, 90, 109, 90, 107, 88, 90, 93, 93, 88, 91, 101, 90, 92, 100, 165};
        _appNameData = [self StringFromShouldTableData:value];
    }
    return _appNameData;
}

//: #05D481
- (NSString *)dreamSuccessTitle {
    if (!_dreamSuccessTitle) {
        Byte value[] = {7, 48, 12, 119, 6, 56, 254, 91, 247, 25, 228, 68, 243, 0, 5, 20, 4, 8, 1, 237};
        _dreamSuccessTitle = [self StringFromShouldTableData:value];
    }
    return _dreamSuccessTitle;
}

//: report_Content
- (NSString *)dream_canContent {
    if (!_dream_canContent) {
        Byte value[] = {14, 80, 13, 158, 195, 252, 114, 234, 96, 189, 115, 89, 103, 34, 21, 32, 31, 34, 36, 15, 243, 31, 30, 36, 21, 30, 36, 189};
        _dream_canContent = [self StringFromShouldTableData:value];
    }
    return _dream_canContent;
}

//: contact_tag_fragment_cancel
- (NSString *)userBubbleText {
    if (!_userBubbleText) {
        Byte value[] = {27, 24, 11, 193, 83, 19, 96, 139, 85, 201, 209, 75, 87, 86, 92, 73, 75, 92, 71, 92, 73, 79, 71, 78, 90, 73, 79, 85, 77, 86, 92, 71, 75, 73, 86, 75, 77, 84, 231};
        _userBubbleText = [self StringFromShouldTableData:value];
    }
    return _userBubbleText;
}

//: #5D5F66
- (NSString *)appSuccessImageText {
    if (!_appSuccessImageText) {
        Byte value[] = {7, 22, 6, 153, 184, 170, 13, 31, 46, 31, 48, 32, 32, 148};
        _appSuccessImageText = [self StringFromShouldTableData:value];
    }
    return _appSuccessImageText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportHisView.h"
#import "OnView.h"

//: @interface ZMONReportHisView ()
@interface OnView ()

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
//: @property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *blockView;
//: @property (nonatomic,strong) UIView *deleteView;
@property (nonatomic,strong) UIView *deleteView;

//: @end
@end

//: @implementation ZMONReportHisView
@implementation OnView

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
        [self initOf];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initOf{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 24;
    _box.layer.cornerRadius = 24;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor ground:[ShouldTableData sharedInstance].appSuccessImageText];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [WorkLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [InputRed preserve:[ShouldTableData sharedInstance].m_withText];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

//    [_box addSubview:self.deleteView];
//    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, SCREEN_WIDTH-80, 56);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
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
        //: _titleLabel.text = [WorkLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [InputRed preserve:[ShouldTableData sharedInstance].dream_canContent];

    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIView *)blockView
- (UIView *)blockView
{
    //: if (!_blockView) {
    if (!_blockView) {
        //: _blockView = [[UIView alloc]init];
        _blockView = [[UIView alloc]init];
        //: _blockView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _blockView.backgroundColor = [UIColor ground:[ShouldTableData sharedInstance].mRowThreadValue];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[ShouldTableData sharedInstance].m_successTitle];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor ground:[ShouldTableData sharedInstance].appSuccessImageText];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [WorkLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [InputRed preserve:[ShouldTableData sharedInstance].appNameData];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.frame = CGRectMake(SCREEN_WIDTH-80-40, 16, 24, 24);
//        [btn addTarget:self action:@selector(handleBlock) forControlEvents:UIControlEventTouchUpInside];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
//        [_blockView addSubview:btn];
    }
    //: return _blockView;
    return _blockView;
}



//: - (void)handleBlock{
- (void)belowShadowBlock{

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
        [_closeBtn setTitleColor:[UIColor ground:[ShouldTableData sharedInstance].appSuccessImageText] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[ShouldTableData sharedInstance].userBubbleText] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(handleHeight) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[ShouldTableData sharedInstance].user_shouldData] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor ground:[ShouldTableData sharedInstance].dreamSuccessTitle];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleBlack
- (void)handleHeight
{
    //: [self animationClose];
    [self animationWithEnableAtHand];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(byBackground)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate byBackground];
    }
}

//: - (void)handleSubmit
- (void)pictureShow
{

}

//: - (void)animationClose
- (void)animationWithEnableAtHand
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)visible
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

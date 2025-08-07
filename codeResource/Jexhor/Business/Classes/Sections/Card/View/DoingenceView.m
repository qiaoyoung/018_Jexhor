
#import <Foundation/Foundation.h>

@interface NeedData : NSObject

@end

@implementation NeedData

+ (Byte *)NeedDataToCache:(Byte *)data {
    int oldVideo = data[0];
    Byte grievousBodilyHarm = data[1];
    int verge = data[2];
    for (int i = verge; i < verge + oldVideo; i++) {
        int value = data[i] + grievousBodilyHarm;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[verge + oldVideo] = 0;
    return data + verge;
}

+ (NSString *)StringFromNeedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NeedDataToCache:data]];
}

//: report_Content
+ (NSString *)userLengthName {
    /* static */ NSString *userLengthName = nil;
    if (!userLengthName) {
        Byte value[] = {14, 45, 5, 47, 101, 69, 56, 67, 66, 69, 71, 50, 22, 66, 65, 71, 56, 65, 71, 213};
        userLengthName = [self StringFromNeedData:value];
    }
    return userLengthName;
}

//: icon_accessory_normal
+ (NSString *)m_colorName {
    /* static */ NSString *m_colorName = nil;
    if (!m_colorName) {
        Byte value[] = {21, 98, 11, 146, 31, 176, 93, 162, 40, 4, 192, 7, 1, 13, 12, 253, 255, 1, 1, 3, 17, 17, 13, 16, 23, 253, 12, 13, 16, 11, 255, 10, 117};
        m_colorName = [self StringFromNeedData:value];
    }
    return m_colorName;
}

//: icon_accessory_selected
+ (NSString *)kLengthButtonValue {
    /* static */ NSString *kLengthButtonValue = nil;
    if (!kLengthButtonValue) {
        Byte value[] = {23, 27, 3, 78, 72, 84, 83, 68, 70, 72, 72, 74, 88, 88, 84, 87, 94, 68, 88, 74, 81, 74, 72, 89, 74, 73, 191};
        kLengthButtonValue = [self StringFromNeedData:value];
    }
    return kLengthButtonValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)user_countValue {
    /* static */ NSString *user_countValue = nil;
    if (!user_countValue) {
        Byte value[] = {27, 1, 10, 110, 53, 140, 121, 253, 170, 33, 98, 110, 109, 115, 96, 98, 115, 94, 115, 96, 102, 94, 101, 113, 96, 102, 108, 100, 109, 115, 94, 98, 96, 109, 98, 100, 107, 183};
        user_countValue = [self StringFromNeedData:value];
    }
    return user_countValue;
}

//: #FAF8FD
+ (NSString *)noti_viewRemoveTitle {
    /* static */ NSString *noti_viewRemoveTitle = nil;
    if (!noti_viewRemoveTitle) {
        Byte value[] = {7, 61, 13, 167, 181, 71, 1, 106, 128, 60, 154, 73, 148, 230, 9, 4, 9, 251, 9, 7, 168};
        noti_viewRemoveTitle = [self StringFromNeedData:value];
    }
    return noti_viewRemoveTitle;
}

//: report_next_select
+ (NSString *)mainShowValue {
    /* static */ NSString *mainShowValue = nil;
    if (!mainShowValue) {
        Byte value[] = {18, 75, 10, 18, 30, 95, 105, 230, 113, 249, 39, 26, 37, 36, 39, 41, 20, 35, 26, 45, 41, 20, 40, 26, 33, 26, 24, 41, 237};
        mainShowValue = [self StringFromNeedData:value];
    }
    return mainShowValue;
}

//: ic_delete
+ (NSString *)showChangeTitle {
    /* static */ NSString *showChangeTitle = nil;
    if (!showChangeTitle) {
        Byte value[] = {9, 46, 10, 8, 47, 170, 105, 190, 130, 82, 59, 53, 49, 54, 55, 62, 55, 70, 55, 35};
        showChangeTitle = [self StringFromNeedData:value];
    }
    return showChangeTitle;
}

//: user_profile_avtivity_remove_friend
+ (NSString *)user_onValue {
    /* static */ NSString *user_onValue = nil;
    if (!user_onValue) {
        Byte value[] = {35, 12, 3, 105, 103, 89, 102, 83, 100, 102, 99, 90, 93, 96, 89, 83, 85, 106, 104, 93, 106, 93, 104, 109, 83, 102, 89, 97, 99, 106, 89, 83, 90, 102, 93, 89, 98, 88, 120};
        user_onValue = [self StringFromNeedData:value];
    }
    return user_onValue;
}

//: ic_distrub
+ (NSString *)showByValue {
    /* static */ NSString *showByValue = nil;
    if (!showByValue) {
        Byte value[] = {10, 62, 4, 255, 43, 37, 33, 38, 43, 53, 54, 52, 55, 36, 254};
        showByValue = [self StringFromNeedData:value];
    }
    return showByValue;
}

//: activity_group_chat_avatar_add_black
+ (NSString *)showThreadSessionCommentValue {
    /* static */ NSString *showThreadSessionCommentValue = nil;
    if (!showThreadSessionCommentValue) {
        Byte value[] = {36, 47, 9, 111, 166, 233, 189, 235, 160, 50, 52, 69, 58, 71, 58, 69, 74, 48, 56, 67, 64, 70, 65, 48, 52, 57, 50, 69, 48, 50, 71, 50, 69, 50, 67, 48, 50, 53, 53, 48, 51, 61, 50, 52, 60, 150};
        showThreadSessionCommentValue = [self StringFromNeedData:value];
    }
    return showThreadSessionCommentValue;
}

//: #05D481
+ (NSString *)noti_showValue {
    /* static */ NSString *noti_showValue = nil;
    if (!noti_showValue) {
        Byte value[] = {7, 17, 6, 201, 184, 216, 18, 31, 36, 51, 35, 39, 32, 215};
        noti_showValue = [self StringFromNeedData:value];
    }
    return noti_showValue;
}

//: #5D5F66
+ (NSString *)m_shouldText {
    /* static */ NSString *m_shouldText = nil;
    if (!m_shouldText) {
        Byte value[] = {7, 50, 7, 164, 166, 13, 93, 241, 3, 18, 3, 20, 4, 4, 77};
        m_shouldText = [self StringFromNeedData:value];
    }
    return m_shouldText;
}

//: contact_tag_fragment_sure
+ (NSString *)k_pressData {
    /* static */ NSString *k_pressData = nil;
    if (!k_pressData) {
        Byte value[] = {25, 1, 11, 176, 113, 230, 99, 89, 100, 36, 227, 98, 110, 109, 115, 96, 98, 115, 94, 115, 96, 102, 94, 101, 113, 96, 102, 108, 100, 109, 115, 94, 114, 116, 113, 100, 221};
        k_pressData = [self StringFromNeedData:value];
    }
    return k_pressData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingenceView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "DoingenceView.h"

//: @interface ZMONReportNextView ()
@interface DoingenceView ()

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

//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;
//: @property (nonatomic,strong) UIButton *btnDelete;
@property (nonatomic,strong) UIButton *btnDelete;

//: @property (nonatomic,strong) NSString *type;
@property (nonatomic,strong) NSString *type;

//: @end
@end

//: @implementation ZMONReportNextView
@implementation DoingenceView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: self.type = @"1";
        self.type = @"1";
        //: [self initUI];
        [self initChange];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initChange{
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

//    UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    cloBtn.frame = CGRectMake(SCREEN_WIDTH-50-32, 10, 32, 32);
//    [cloBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//    [cloBtn setImage:[UIImage imageNamed:@"report_close"] forState:UIControlStateNormal];
//    [_box addSubview:cloBtn];

//    //What other steps do you want to take
//    UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-80, 20)];
//    labLabel.font = [UIFont boldSystemFontOfSize:14.f];
//    labLabel.textColor = TextColor_4;
//    labLabel.text = LangKey(@"report_next_select");
//    [_box addSubview:labLabel];

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor ground:[NeedData m_shouldText]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [InputRed preserve:[NeedData mainShowValue]];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: [_box addSubview:self.deleteView];
    [_box addSubview:self.deleteView];
    //: self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);

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
//        _titleLabel.text = LangKey(@"report_User");
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [InputRed preserve:[NeedData userLengthName]];

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
        _blockView.backgroundColor = [UIColor ground:[NeedData noti_viewRemoveTitle]];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[NeedData showByValue]];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor ground:[NeedData m_shouldText]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [InputRed preserve:[NeedData showThreadSessionCommentValue]];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(pathBlock:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[NeedData m_colorName]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[NeedData kLengthButtonValue]] forState:UIControlStateSelected];
        //: [_blockView addSubview:_btnBlock];
        [_blockView addSubview:_btnBlock];
        //: _btnBlock.selected = YES;
        _btnBlock.selected = YES;
    }
    //: return _blockView;
    return _blockView;
}

//: - (UIView *)deleteView
- (UIView *)deleteView
{
    //: if (!_deleteView) {
    if (!_deleteView) {
        //: _deleteView = [[UIView alloc]init];
        _deleteView = [[UIView alloc]init];
        //: _deleteView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _deleteView.backgroundColor = [UIColor ground:[NeedData noti_viewRemoveTitle]];
        //: _deleteView.layer.cornerRadius = 28;
        _deleteView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_delete"];
        img.image = [UIImage imageNamed:[NeedData showChangeTitle]];
        //: [_deleteView addSubview:img];
        [_deleteView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor ground:[NeedData m_shouldText]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        lab.text = [InputRed preserve:[NeedData user_onValue]];
        //: [_deleteView addSubview:lab];
        [_deleteView addSubview:lab];

        //: _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnDelete addTarget:self action:@selector(showAnimations:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete addTarget:self action:@selector(pallets:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:[NeedData m_colorName]] forState:UIControlStateNormal];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnDelete setImage:[UIImage imageNamed:[NeedData kLengthButtonValue]] forState:UIControlStateSelected];
        //: [_deleteView addSubview:_btnDelete];
        [_deleteView addSubview:_btnDelete];
    }
    //: return _deleteView;
    return _deleteView;
}

//: - (void)handleBlock:(UIButton *)sender{
- (void)pathBlock:(UIButton *)sender{
    //: self.type = @"1";
    self.type = @"1";
    //: _btnBlock.selected = YES;
    _btnBlock.selected = YES;
    //: _btnDelete.selected = NO;
    _btnDelete.selected = NO;
}
//: - (void)showAnimations:(UIButton *)sender{
- (void)pallets:(UIButton *)sender{
    //: self.type = @"2";
    self.type = @"2";
//    sender.selected = !sender.selected;
    //: _btnBlock.selected = NO;
    _btnBlock.selected = NO;
    //: _btnDelete.selected = YES;
    _btnDelete.selected = YES;
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
        [_closeBtn setTitleColor:[UIColor ground:[NeedData m_shouldText]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[NeedData user_countValue]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[NeedData k_pressData]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor ground:[NeedData noti_showValue]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

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

//: - (void)showAnimation
- (void)imageText
{
    //: [self animationClose];
    [self animationWithEnableAtHand];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(missiveView)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate missiveView];
    }

}

//: - (void)handleSubmit
- (void)pictureShow
{
    //: [self animationClose];
    [self animationWithEnableAtHand];
    //: if (self.type.intValue == 1) {
    if (self.type.intValue == 1) {
        //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        if ([self.delegate respondsToSelector:@selector(byBackground)]) {
            //: [self.delegate didTouchBlackButton];
            [self.delegate byBackground];
        }
    //: }else{
    }else{
        //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        if ([self.delegate respondsToSelector:@selector(missiveView)]) {
            //: [self.delegate didTouchDeleteButton];
            [self.delegate missiveView];
        }
    }
}

//: - (void)animationClose
- (void)animationWithEnableAtHand
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)withShow
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
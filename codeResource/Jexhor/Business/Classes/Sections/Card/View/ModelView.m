
#import <Foundation/Foundation.h>

@interface RageData : NSObject

+ (instancetype)sharedInstance;

//: icon_accessory_selected
@property (nonatomic, copy) NSString *main_withEqualName;

//: ic_distrub
@property (nonatomic, copy) NSString *appViewValue;

//: report_Content
@property (nonatomic, copy) NSString *k_snapErrMessage;

//: #05D481
@property (nonatomic, copy) NSString *main_infoName;

//: report_next_select
@property (nonatomic, copy) NSString *showNorthernValue;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *kDisplayName;

//: icon_accessory_normal
@property (nonatomic, copy) NSString *mInputFormat;

//: ic_delete
@property (nonatomic, copy) NSString *userPathIdent;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *main_dismissValue;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *mVoiceTitle;

//: user_profile_avtivity_remove_friend
@property (nonatomic, copy) NSString *show_buttonTeamValue;

//: #FAF8FD
@property (nonatomic, copy) NSString *main_hospitalStr;

//: #5D5F66
@property (nonatomic, copy) NSString *mainPenaltyMessage;

@end

@implementation RageData

+ (instancetype)sharedInstance {
    static RageData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RageDataToCache:(Byte *)data {
    int range = data[0];
    Byte threadRange = data[1];
    int wipe = data[2];
    for (int i = wipe; i < wipe + range; i++) {
        int value = data[i] + threadRange;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[wipe + range] = 0;
    return data + wipe;
}

- (NSString *)StringFromRageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RageDataToCache:data]];
}

//: icon_accessory_selected
- (NSString *)main_withEqualName {
    if (!_main_withEqualName) {
        Byte value[] = {23, 9, 10, 118, 93, 18, 66, 171, 226, 146, 96, 90, 102, 101, 86, 88, 90, 90, 92, 106, 106, 102, 105, 112, 86, 106, 92, 99, 92, 90, 107, 92, 91, 31};
        _main_withEqualName = [self StringFromRageData:value];
    }
    return _main_withEqualName;
}

//: contact_tag_fragment_cancel
- (NSString *)main_dismissValue {
    if (!_main_dismissValue) {
        Byte value[] = {27, 79, 9, 159, 180, 91, 57, 141, 70, 20, 32, 31, 37, 18, 20, 37, 16, 37, 18, 24, 16, 23, 35, 18, 24, 30, 22, 31, 37, 16, 20, 18, 31, 20, 22, 29, 58};
        _main_dismissValue = [self StringFromRageData:value];
    }
    return _main_dismissValue;
}

//: #5D5F66
- (NSString *)mainPenaltyMessage {
    if (!_mainPenaltyMessage) {
        Byte value[] = {7, 39, 3, 252, 14, 29, 14, 31, 15, 15, 183};
        _mainPenaltyMessage = [self StringFromRageData:value];
    }
    return _mainPenaltyMessage;
}

//: #FAF8FD
- (NSString *)main_hospitalStr {
    if (!_main_hospitalStr) {
        Byte value[] = {7, 74, 3, 217, 252, 247, 252, 238, 252, 250, 171};
        _main_hospitalStr = [self StringFromRageData:value];
    }
    return _main_hospitalStr;
}

//: ic_distrub
- (NSString *)appViewValue {
    if (!_appViewValue) {
        Byte value[] = {10, 65, 11, 53, 51, 203, 78, 183, 36, 15, 28, 40, 34, 30, 35, 40, 50, 51, 49, 52, 33, 41};
        _appViewValue = [self StringFromRageData:value];
    }
    return _appViewValue;
}

//: activity_group_chat_avatar_add_black
- (NSString *)kDisplayName {
    if (!_kDisplayName) {
        Byte value[] = {36, 53, 4, 192, 44, 46, 63, 52, 65, 52, 63, 68, 42, 50, 61, 58, 64, 59, 42, 46, 51, 44, 63, 42, 44, 65, 44, 63, 44, 61, 42, 44, 47, 47, 42, 45, 55, 44, 46, 54, 7};
        _kDisplayName = [self StringFromRageData:value];
    }
    return _kDisplayName;
}

//: icon_accessory_normal
- (NSString *)mInputFormat {
    if (!_mInputFormat) {
        Byte value[] = {21, 23, 8, 86, 95, 127, 23, 38, 82, 76, 88, 87, 72, 74, 76, 76, 78, 92, 92, 88, 91, 98, 72, 87, 88, 91, 86, 74, 85, 98};
        _mInputFormat = [self StringFromRageData:value];
    }
    return _mInputFormat;
}

//: ic_delete
- (NSString *)userPathIdent {
    if (!_userPathIdent) {
        Byte value[] = {9, 6, 11, 148, 181, 87, 171, 116, 184, 182, 34, 99, 93, 89, 94, 95, 102, 95, 110, 95, 5};
        _userPathIdent = [self StringFromRageData:value];
    }
    return _userPathIdent;
}

//: user_profile_avtivity_remove_friend
- (NSString *)show_buttonTeamValue {
    if (!_show_buttonTeamValue) {
        Byte value[] = {35, 92, 9, 201, 203, 82, 56, 86, 164, 25, 23, 9, 22, 3, 20, 22, 19, 10, 13, 16, 9, 3, 5, 26, 24, 13, 26, 13, 24, 29, 3, 22, 9, 17, 19, 26, 9, 3, 10, 22, 13, 9, 18, 8, 175};
        _show_buttonTeamValue = [self StringFromRageData:value];
    }
    return _show_buttonTeamValue;
}

//: contact_tag_fragment_sure
- (NSString *)mVoiceTitle {
    if (!_mVoiceTitle) {
        Byte value[] = {25, 79, 12, 24, 244, 125, 104, 17, 22, 41, 172, 107, 20, 32, 31, 37, 18, 20, 37, 16, 37, 18, 24, 16, 23, 35, 18, 24, 30, 22, 31, 37, 16, 36, 38, 35, 22, 152};
        _mVoiceTitle = [self StringFromRageData:value];
    }
    return _mVoiceTitle;
}

//: report_next_select
- (NSString *)showNorthernValue {
    if (!_showNorthernValue) {
        Byte value[] = {18, 28, 5, 119, 112, 86, 73, 84, 83, 86, 88, 67, 82, 73, 92, 88, 67, 87, 73, 80, 73, 71, 88, 234};
        _showNorthernValue = [self StringFromRageData:value];
    }
    return _showNorthernValue;
}

//: report_Content
- (NSString *)k_snapErrMessage {
    if (!_k_snapErrMessage) {
        Byte value[] = {14, 88, 8, 250, 150, 91, 74, 91, 26, 13, 24, 23, 26, 28, 7, 235, 23, 22, 28, 13, 22, 28, 218};
        _k_snapErrMessage = [self StringFromRageData:value];
    }
    return _k_snapErrMessage;
}

//: #05D481
- (NSString *)main_infoName {
    if (!_main_infoName) {
        Byte value[] = {7, 76, 6, 10, 136, 73, 215, 228, 233, 248, 232, 236, 229, 58};
        _main_infoName = [self StringFromRageData:value];
    }
    return _main_infoName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "ModelView.h"

//: @interface ZMONReportNextView ()
@interface ModelView ()

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
@implementation ModelView

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
        [self initHr];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initHr{
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
    labsubLabel.textColor = [UIColor user:[RageData sharedInstance].mainPenaltyMessage];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [PushLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [BackgroundRandomAttribute content:[RageData sharedInstance].showNorthernValue];
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
        //: _titleLabel.text = [PushLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [BackgroundRandomAttribute content:[RageData sharedInstance].k_snapErrMessage];

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
        _blockView.backgroundColor = [UIColor user:[RageData sharedInstance].main_hospitalStr];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[RageData sharedInstance].appViewValue];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor user:[RageData sharedInstance].mainPenaltyMessage];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [PushLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [BackgroundRandomAttribute content:[RageData sharedInstance].kDisplayName];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(scales:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[RageData sharedInstance].mInputFormat] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[RageData sharedInstance].main_withEqualName] forState:UIControlStateSelected];
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
        _deleteView.backgroundColor = [UIColor user:[RageData sharedInstance].main_hospitalStr];
        //: _deleteView.layer.cornerRadius = 28;
        _deleteView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_delete"];
        img.image = [UIImage imageNamed:[RageData sharedInstance].userPathIdent];
        //: [_deleteView addSubview:img];
        [_deleteView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor user:[RageData sharedInstance].mainPenaltyMessage];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [PushLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        lab.text = [BackgroundRandomAttribute content:[RageData sharedInstance].show_buttonTeamValue];
        //: [_deleteView addSubview:lab];
        [_deleteView addSubview:lab];

        //: _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnDelete addTarget:self action:@selector(showAnimations:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete addTarget:self action:@selector(red:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:[RageData sharedInstance].mInputFormat] forState:UIControlStateNormal];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnDelete setImage:[UIImage imageNamed:[RageData sharedInstance].main_withEqualName] forState:UIControlStateSelected];
        //: [_deleteView addSubview:_btnDelete];
        [_deleteView addSubview:_btnDelete];
    }
    //: return _deleteView;
    return _deleteView;
}

//: - (void)handleBlock:(UIButton *)sender{
- (void)scales:(UIButton *)sender{
    //: self.type = @"1";
    self.type = @"1";
    //: _btnBlock.selected = YES;
    _btnBlock.selected = YES;
    //: _btnDelete.selected = NO;
    _btnDelete.selected = NO;
}
//: - (void)showAnimations:(UIButton *)sender{
- (void)red:(UIButton *)sender{
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
        [_closeBtn addTarget:self action:@selector(nearAdd) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor user:[RageData sharedInstance].mainPenaltyMessage] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[RageData sharedInstance].main_dismissValue] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(threadTitle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[RageData sharedInstance].mVoiceTitle] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor user:[RageData sharedInstance].main_infoName];
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
- (void)registerBlack
{
    //: [self animationClose];
    [self nearAdd];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(formattingCount)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate formattingCount];
    }
}

//: - (void)showAnimation
- (void)noPresent
{
    //: [self animationClose];
    [self nearAdd];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(iconMenu)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate iconMenu];
    }

}

//: - (void)handleSubmit
- (void)threadTitle
{
    //: [self animationClose];
    [self nearAdd];
    //: if (self.type.intValue == 1) {
    if (self.type.intValue == 1) {
        //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        if ([self.delegate respondsToSelector:@selector(formattingCount)]) {
            //: [self.delegate didTouchBlackButton];
            [self.delegate formattingCount];
        }
    //: }else{
    }else{
        //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        if ([self.delegate respondsToSelector:@selector(iconMenu)]) {
            //: [self.delegate didTouchDeleteButton];
            [self.delegate iconMenu];
        }
    }
}

//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)bar
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end


#import <Foundation/Foundation.h>

typedef struct {
    Byte sendHide;
    Byte *mark;
    unsigned int mediaTag;
	int hold;
} StructLimitData;

@interface LimitData : NSObject

+ (instancetype)sharedInstance;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *dream_labelTitle;

//: report_next_select_black
@property (nonatomic, copy) NSString *show_sendName;

//: #05D481
@property (nonatomic, copy) NSString *kSessionMaxValue;

//: YES
@property (nonatomic, copy) NSString *user_infoContent;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kQuantityTitle;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *kImageAddTitle;

//: #333333
@property (nonatomic, copy) NSString *noti_rowOldNameData;

//: #5D5F66
@property (nonatomic, copy) NSString *userSessionShowNameData;

@end

@implementation LimitData

+ (instancetype)sharedInstance {
    static LimitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LimitDataToByte:(StructLimitData *)data {
    for (int i = 0; i < data->mediaTag; i++) {
        data->mark[i] ^= data->sendHide;
    }
    data->mark[data->mediaTag] = 0;
	if (data->mediaTag >= 1) {
		data->hold = data->mark[0];
	}
    return data->mark;
}

- (NSString *)StringFromLimitData:(StructLimitData *)data {
    return [NSString stringWithUTF8String:(char *)[self LimitDataToByte:data]];
}

//: contact_tag_fragment_sure
- (NSString *)dream_labelTitle {
    if (!_dream_labelTitle) {
        StructLimitData value = (StructLimitData){219, (Byte []){184, 180, 181, 175, 186, 184, 175, 132, 175, 186, 188, 132, 189, 169, 186, 188, 182, 190, 181, 175, 132, 168, 174, 169, 190, 69}, 25, 6};
        _dream_labelTitle = [self StringFromLimitData:&value];
    }
    return _dream_labelTitle;
}

//: report_next_select_black
- (NSString *)show_sendName {
    if (!_show_sendName) {
        StructLimitData value = (StructLimitData){112, (Byte []){2, 21, 0, 31, 2, 4, 47, 30, 21, 8, 4, 47, 3, 21, 28, 21, 19, 4, 47, 18, 28, 17, 19, 27, 228}, 24, 180};
        _show_sendName = [self StringFromLimitData:&value];
    }
    return _show_sendName;
}

//: YES
- (NSString *)user_infoContent {
    if (!_user_infoContent) {
        StructLimitData value = (StructLimitData){138, (Byte []){211, 207, 217, 103}, 3, 184};
        _user_infoContent = [self StringFromLimitData:&value];
    }
    return _user_infoContent;
}

//: contact_tag_fragment_cancel
- (NSString *)kQuantityTitle {
    if (!_kQuantityTitle) {
        StructLimitData value = (StructLimitData){190, (Byte []){221, 209, 208, 202, 223, 221, 202, 225, 202, 223, 217, 225, 216, 204, 223, 217, 211, 219, 208, 202, 225, 221, 223, 208, 221, 219, 210, 245}, 27, 74};
        _kQuantityTitle = [self StringFromLimitData:&value];
    }
    return _kQuantityTitle;
}

//: #05D481
- (NSString *)kSessionMaxValue {
    if (!_kSessionMaxValue) {
        StructLimitData value = (StructLimitData){235, (Byte []){200, 219, 222, 175, 223, 211, 218, 56}, 7, 206};
        _kSessionMaxValue = [self StringFromLimitData:&value];
    }
    return _kSessionMaxValue;
}

//: activity_group_chat_avatar_add_black
- (NSString *)kImageAddTitle {
    if (!_kImageAddTitle) {
        StructLimitData value = (StructLimitData){180, (Byte []){213, 215, 192, 221, 194, 221, 192, 205, 235, 211, 198, 219, 193, 196, 235, 215, 220, 213, 192, 235, 213, 194, 213, 192, 213, 198, 235, 213, 208, 208, 235, 214, 216, 213, 215, 223, 178}, 36, 198};
        _kImageAddTitle = [self StringFromLimitData:&value];
    }
    return _kImageAddTitle;
}

//: #5D5F66
- (NSString *)userSessionShowNameData {
    if (!_userSessionShowNameData) {
        StructLimitData value = (StructLimitData){62, (Byte []){29, 11, 122, 11, 120, 8, 8, 60}, 7, 251};
        _userSessionShowNameData = [self StringFromLimitData:&value];
    }
    return _userSessionShowNameData;
}

//: #333333
- (NSString *)noti_rowOldNameData {
    if (!_noti_rowOldNameData) {
        StructLimitData value = (StructLimitData){156, (Byte []){191, 175, 175, 175, 175, 175, 175, 153}, 7, 130};
        _noti_rowOldNameData = [self StringFromLimitData:&value];
    }
    return _noti_rowOldNameData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MisnomerView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "MisnomerView.h"

//: @interface ZMONReportBlackView ()
@interface MisnomerView ()

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

//: @implementation ZMONReportBlackView
@implementation MisnomerView

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
        [self initHouse];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initHouse{
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
    labsubLabel.textColor = [UIColor ground:[LimitData sharedInstance].noti_rowOldNameData];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [WorkLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [InputRed preserve:[LimitData sharedInstance].show_sendName];
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

//: - (void)handleBlack{
- (void)handleHeight{

//    __weak typeof(self) wself = self;
//
//        [[NIMSDK sharedSDK].userManager addToBlackList:wself.userID completion:^(NSError *error) {
//
//            if (!error) {
//                [wself makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
//            }else{
//                [wself makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
//
//            }
//        }];
//    [self animationClose];
    //: [self animationClose];
    [self animationWithEnableAtHand];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([LimitData sharedInstance].user_infoContent);
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
        //: _titleLabel.text = [WorkLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [InputRed preserve:[LimitData sharedInstance].kImageAddTitle];
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
        [_closeBtn setTitleColor:[UIColor ground:[LimitData sharedInstance].userSessionShowNameData] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[LimitData sharedInstance].kQuantityTitle] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[InputRed preserve:[LimitData sharedInstance].dream_labelTitle] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _sureBtn.backgroundColor = [UIColor ground:[LimitData sharedInstance].kSessionMaxValue];
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
- (void)back
{
    //: self.hidden = NO;
    self.hidden = NO;

}



//: @end
@end

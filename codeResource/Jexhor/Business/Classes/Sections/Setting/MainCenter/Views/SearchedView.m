
#import <Foundation/Foundation.h>

@interface CombinationData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CombinationData

+ (instancetype)sharedInstance {
    static CombinationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CombinationDataToCache:(Byte *)data {
    int theoretic = data[0];
    Byte temperatureNuclear = data[1];
    int standIn = data[2];
    for (int i = standIn; i < standIn + theoretic; i++) {
        int value = data[i] + temperatureNuclear;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[standIn + theoretic] = 0;
    return data + standIn;
}

- (NSString *)StringFromCombinationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CombinationDataToCache:data]];
}

//: contact_tag_fragment_cancel
- (NSString *)show_itselfAspectInfluentialData {
    /* static */ NSString *show_itselfAspectInfluentialData = nil;
    if (!show_itselfAspectInfluentialData) {
        Byte value[] = {27, 97, 10, 59, 214, 44, 44, 79, 113, 234, 2, 14, 13, 19, 0, 2, 19, 254, 19, 0, 6, 254, 5, 17, 0, 6, 12, 4, 13, 19, 254, 2, 0, 13, 2, 4, 11, 54};
        show_itselfAspectInfluentialData = [self StringFromCombinationData:value];
    }
    return show_itselfAspectInfluentialData;
}

//: #fffPush
- (NSString *)mEthnicValue {
    /* static */ NSString *mEthnicValue = nil;
    if (!mEthnicValue) {
        Byte value[] = {7, 72, 6, 131, 170, 89, 219, 30, 30, 30, 30, 30, 30, 14};
        mEthnicValue = [self StringFromCombinationData:value];
    }
    return mEthnicValue;
}

//: #F7D2F3
- (NSString *)show_sodMessage {
    /* static */ NSString *show_sodMessage = nil;
    if (!show_sodMessage) {
        Byte value[] = {7, 12, 7, 77, 77, 33, 73, 23, 58, 43, 56, 38, 58, 39, 135};
        show_sodMessage = [self StringFromCombinationData:value];
    }
    return show_sodMessage;
}

//: ic_album
- (NSString *)mSnapKey {
    /* static */ NSString *mSnapKey = nil;
    if (!mSnapKey) {
        Byte value[] = {8, 11, 3, 94, 88, 84, 86, 97, 87, 106, 98, 123};
        mSnapKey = [self StringFromCombinationData:value];
    }
    return mSnapKey;
}

//: #5D5F66
- (NSString *)notiTingName {
    /* static */ NSString *notiTingName = nil;
    if (!notiTingName) {
        Byte value[] = {7, 7, 11, 73, 58, 103, 167, 47, 170, 47, 246, 28, 46, 61, 46, 63, 47, 47, 208};
        notiTingName = [self StringFromCombinationData:value];
    }
    return notiTingName;
}

//: #CCECFC
- (NSString *)userIconText {
    /* static */ NSString *userIconText = nil;
    if (!userIconText) {
        Byte value[] = {7, 18, 3, 17, 49, 49, 51, 49, 52, 49, 173};
        userIconText = [self StringFromCombinationData:value];
    }
    return userIconText;
}

//: message_send_album
- (NSString *)mCenterStatusData {
    /* static */ NSString *mCenterStatusData = nil;
    if (!mCenterStatusData) {
        Byte value[] = {18, 8, 9, 142, 55, 15, 140, 103, 194, 101, 93, 107, 107, 89, 95, 93, 87, 107, 93, 102, 92, 87, 89, 100, 90, 109, 101, 168};
        mCenterStatusData = [self StringFromCombinationData:value];
    }
    return mCenterStatusData;
}

//: ic_camera
- (NSString *)noti_contentMsg {
    /* static */ NSString *noti_contentMsg = nil;
    if (!noti_contentMsg) {
        Byte value[] = {9, 49, 6, 196, 176, 106, 56, 50, 46, 50, 48, 60, 52, 65, 48, 253};
        noti_contentMsg = [self StringFromCombinationData:value];
    }
    return noti_contentMsg;
}

//: message_send_camera
- (NSString *)app_participateId {
    /* static */ NSString *app_participateId = nil;
    if (!app_participateId) {
        Byte value[] = {19, 14, 5, 91, 91, 95, 87, 101, 101, 83, 89, 87, 81, 101, 87, 96, 86, 81, 85, 83, 95, 87, 100, 83, 5};
        app_participateId = [self StringFromCombinationData:value];
    }
    return app_participateId;
}

//: #000000
- (NSString *)noti_territoryText {
    /* static */ NSString *noti_territoryText = nil;
    if (!noti_territoryText) {
        Byte value[] = {7, 91, 12, 220, 45, 111, 186, 185, 145, 162, 24, 70, 200, 213, 213, 213, 213, 213, 213, 149};
        noti_territoryText = [self StringFromCombinationData:value];
    }
    return noti_territoryText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "SearchedView.h"

//: @interface NSSetAvater ()
@interface SearchedView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cancelBtn;
//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
//: @property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *albumBtn;

//: @end
@end

//: @implementation NSSetAvater
@implementation SearchedView

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
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(nearAdd)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initEmpower];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initEmpower{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#fffPush"];
    _viewBg.backgroundColor = [UIColor user:[[CombinationData sharedInstance] mEthnicValue]];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.cornerRadius = 40;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;

    //: [_viewBg addSubview:self.cameraBtn];
    [_viewBg addSubview:self.cameraBtn];
    //: self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);

    //: [_viewBg addSubview:self.albumBtn];
    [_viewBg addSubview:self.albumBtn];
    //: self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);

    //: [_viewBg addSubview:self.cancelBtn];
    [_viewBg addSubview:self.cancelBtn];
    //: self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)valueText:(NSInteger)Font disable:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}

//: - (void)clickTheBtn:(UIButton *)sender
- (void)named:(UIButton *)sender
{
    //: [self animationClose];
    [self nearAdd];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(blues:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate blues:sender.tag];
    }

}

//: - (UIButton *)cameraBtn {
- (UIButton *)cameraBtn {
    //: if (!_cameraBtn) {
    if (!_cameraBtn) {
        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_cameraBtn setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
//        _cameraBtn.tag = 101;
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
////        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:0];
//        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F4F1EC");
//        _cameraBtn.layer.cornerRadius = 20;
//        _cameraBtn.layer.masksToBounds = YES;

        //: _cameraBtn.tag = 101;
        _cameraBtn.tag = 101;
        //: _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        _cameraBtn.backgroundColor = [UIColor user:[[CombinationData sharedInstance] show_sodMessage]];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(named:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:[[CombinationData sharedInstance] noti_contentMsg]];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor user:[[CombinationData sharedInstance] noti_territoryText]];
        //: lab.text = [PushLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [BackgroundRandomAttribute content:[[CombinationData sharedInstance] app_participateId]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_cameraBtn addSubview:lab];
        [_cameraBtn addSubview:lab];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_cameraBtn setTitle:@"Camera" forState:UIControlStateNormal];
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
//        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _cameraBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_cameraBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_cameraBtn setImageEdgeInsets:UIEdgeInsetsMake(-20, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _cameraBtn;
    return _cameraBtn;
}

//: - (UIButton *)albumBtn {
- (UIButton *)albumBtn {
    //: if (!_albumBtn) {
    if (!_albumBtn) {
        //: _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _albumBtn.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        _albumBtn.backgroundColor = [UIColor user:[[CombinationData sharedInstance] userIconText]];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(named:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:[[CombinationData sharedInstance] mSnapKey]];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor user:[[CombinationData sharedInstance] noti_territoryText]];
        //: lab.text = [PushLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [BackgroundRandomAttribute content:[[CombinationData sharedInstance] mCenterStatusData]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_albumBtn addSubview:lab];
        [_albumBtn addSubview:lab];

//        _albumBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_albumBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_albumBtn setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
//        [_albumBtn setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
////        [_albumBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _albumBtn.tag = 102;
//        _albumBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_albumBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_albumBtn setImageEdgeInsets:UIEdgeInsetsMake(-24, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _albumBtn;
    return _albumBtn;
}

//: - (UIButton *)cancelBtn {
- (UIButton *)cancelBtn {
    //: if (!_cancelBtn) {
    if (!_cancelBtn) {
        //: _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_cancelBtn addTarget:self action:@selector(nearAdd) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor user:[[CombinationData sharedInstance] notiTingName]] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[BackgroundRandomAttribute content:[[CombinationData sharedInstance] show_itselfAspectInfluentialData]] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#fffPush"];
        _cancelBtn.backgroundColor = [UIColor user:[[CombinationData sharedInstance] mEthnicValue]];
        //: _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.cornerRadius = 22;
        //: _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.masksToBounds = YES;
        //: _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderWidth = 1;
        //: _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    //: return _cancelBtn;
    return _cancelBtn;
}

//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)record
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

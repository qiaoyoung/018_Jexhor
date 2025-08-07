
#import <Foundation/Foundation.h>

@interface UniteWithData : NSObject

@end

@implementation UniteWithData

+ (Byte *)UniteWithDataToCache:(Byte *)data {
    int shade = data[0];
    Byte thanFortunate = data[1];
    int canColor = data[2];
    for (int i = canColor; i < canColor + shade; i++) {
        int value = data[i] + thanFortunate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[canColor + shade] = 0;
    return data + canColor;
}

+ (NSString *)StringFromUniteWithData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self UniteWithDataToCache:data]];
}

//: icon_redpackage_money
+ (NSString *)notiYaName {
    /* static */ NSString *notiYaName = nil;
    if (!notiYaName) {
        Byte value[] = {21, 36, 10, 235, 146, 67, 11, 114, 82, 202, 69, 63, 75, 74, 59, 78, 65, 64, 76, 61, 63, 71, 61, 67, 65, 59, 73, 75, 74, 65, 85, 138};
        notiYaName = [self StringFromUniteWithData:value];
    }
    return notiYaName;
}

//: icon_redpackage_close
+ (NSString *)notiBubbleSessionValue {
    /* static */ NSString *notiBubbleSessionValue = nil;
    if (!notiBubbleSessionValue) {
        Byte value[] = {21, 24, 3, 81, 75, 87, 86, 71, 90, 77, 76, 88, 73, 75, 83, 73, 79, 77, 71, 75, 84, 87, 91, 77, 1};
        notiBubbleSessionValue = [self StringFromUniteWithData:value];
    }
    return notiBubbleSessionValue;
}

//: activity_pay_psw_input
+ (NSString *)dream_itsNameValue {
    /* static */ NSString *dream_itsNameValue = nil;
    if (!dream_itsNameValue) {
        Byte value[] = {22, 73, 11, 128, 145, 92, 131, 209, 236, 33, 31, 24, 26, 43, 32, 45, 32, 43, 48, 22, 39, 24, 48, 22, 39, 42, 46, 22, 32, 37, 39, 44, 43, 104};
        dream_itsNameValue = [self StringFromUniteWithData:value];
    }
    return dream_itsNameValue;
}

//: red_packet
+ (NSString *)dream_cousinData {
    /* static */ NSString *dream_cousinData = nil;
    if (!dream_cousinData) {
        Byte value[] = {10, 17, 5, 213, 100, 97, 84, 83, 78, 95, 80, 82, 90, 84, 99, 239};
        dream_cousinData = [self StringFromUniteWithData:value];
    }
    return dream_cousinData;
}

//: #C7E8CA
+ (NSString *)mLengthData {
    /* static */ NSString *mLengthData = nil;
    if (!mLengthData) {
        Byte value[] = {7, 45, 9, 62, 249, 131, 232, 68, 64, 246, 22, 10, 24, 11, 22, 20, 104};
        mLengthData = [self StringFromUniteWithData:value];
    }
    return mLengthData;
}

//: change
+ (NSString *)main_mediaTitle {
    /* static */ NSString *main_mediaTitle = nil;
    if (!main_mediaTitle) {
        Byte value[] = {6, 85, 5, 138, 238, 14, 19, 12, 25, 18, 16, 115};
        main_mediaTitle = [self StringFromUniteWithData:value];
    }
    return main_mediaTitle;
}

//: #333333
+ (NSString *)m_showValue {
    /* static */ NSString *m_showValue = nil;
    if (!m_showValue) {
        Byte value[] = {7, 34, 10, 145, 204, 102, 99, 137, 32, 141, 1, 17, 17, 17, 17, 17, 17, 155};
        m_showValue = [self StringFromUniteWithData:value];
    }
    return m_showValue;
}

//: #D6D6D6
+ (NSString *)m_placeValue {
    /* static */ NSString *m_placeValue = nil;
    if (!m_placeValue) {
        Byte value[] = {7, 75, 5, 226, 135, 216, 249, 235, 249, 235, 249, 235, 17};
        m_placeValue = [self StringFromUniteWithData:value];
    }
    return m_placeValue;
}

//: #888888
+ (NSString *)noti_byTitle {
    /* static */ NSString *noti_byTitle = nil;
    if (!noti_byTitle) {
        Byte value[] = {7, 1, 11, 232, 201, 39, 13, 110, 13, 39, 156, 34, 55, 55, 55, 55, 55, 55, 3};
        noti_byTitle = [self StringFromUniteWithData:value];
    }
    return noti_byTitle;
}

//: amount
+ (NSString *)appLabelModeTitle {
    /* static */ NSString *appLabelModeTitle = nil;
    if (!appLabelModeTitle) {
        Byte value[] = {6, 7, 12, 62, 61, 98, 140, 224, 133, 48, 97, 211, 90, 102, 104, 110, 103, 109, 245};
        appLabelModeTitle = [self StringFromUniteWithData:value];
    }
    return appLabelModeTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPackagePaySheet.h"
#import "SearchView.h"
//: #import "FFFAvatarImageView.h"
#import "ButtonControl.h"
//: #import "TPPasswordTextView.h"
#import "TextView.h"

//: @interface NTESRedPackagePaySheet ()
@interface SearchView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UITextField *textfield;
@property (nonatomic,strong) UITextField *textfield;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @end
@end

//: @implementation NTESRedPackagePaySheet
@implementation SearchView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithImage:(CGRect)frame vertical:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(buttonRestore)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[UniteWithData notiBubbleSessionValue]] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(doingQuick) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.top.mas_offset(7.5);
            make.top.mas_offset(7.5);
            //: make.width.mas_equalTo(35);
            make.width.mas_equalTo(35);
            //: make.height.mas_equalTo(35);
            make.height.mas_equalTo(35);
        //: }];
        }];



        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor colorWithHexString:@"#333333"];
        titleLabel_1.textColor = [UIColor ground:[UniteWithData m_showValue]];
        //: titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        //: titleLabel_1.text = [FFFLanguageManager getTextWithKey:@"activity_pay_psw_input"];
        titleLabel_1.text = [InputRed preserve:[UniteWithData dream_itsNameValue]];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_offset(100);
            make.left.mas_offset(100);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

        //: UIView *line = [[UIView alloc] init];
        UIView *line = [[UIView alloc] init];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#C7E8CA"];
        line.backgroundColor = [UIColor ground:[UniteWithData mLengthData]];
        //: [_backView addSubview:line];
        [_backView addSubview:line];
        //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(1);
            make.height.mas_equalTo(1);
        //: }];
        }];

        //: UILabel *title = [[UILabel alloc] init];
        UILabel *title = [[UILabel alloc] init];
        //: title.textAlignment = NSTextAlignmentCenter;
        title.textAlignment = NSTextAlignmentCenter;
        //: title.textColor = [UIColor blackColor];
        title.textColor = [UIColor blackColor];
        //: title.font = [UIFont systemFontOfSize:15];
        title.font = [UIFont systemFontOfSize:15];
        //: title.text = [FFFLanguageManager getTextWithKey:@"red_packet"];
        title.text = [InputRed preserve:[UniteWithData dream_cousinData]];
        //: [_backView addSubview:title];
        [_backView addSubview:title];
        //: [title mas_makeConstraints:^(MASConstraintMaker *make) {
        [title mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(60);
            make.top.mas_offset(60);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentCenter;
        amountLabel.textAlignment = NSTextAlignmentCenter;
        //: amountLabel.textColor = [UIColor blackColor];
        amountLabel.textColor = [UIColor blackColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:30];
        amountLabel.font = [UIFont boldSystemFontOfSize:30];
        //: amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary newStringValueForKey:@"amount"]];
        amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary route:[UniteWithData appLabelModeTitle]]];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
        //: }];
        }];

        //: UIView *blackLine = [[UIView alloc] init];
        UIView *blackLine = [[UIView alloc] init];
        //: blackLine.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine.backgroundColor = [UIColor ground:[UniteWithData m_placeValue]];
        //: [_backView addSubview:blackLine];
        [_backView addSubview:blackLine];
        //: [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(150);
            make.top.mas_offset(150);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];

        //: UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        //: iconImage.image = [UIImage imageNamed:@"icon_redpackage_money"];
        iconImage.image = [UIImage imageNamed:[UniteWithData notiYaName]];
        //: [_backView addSubview:iconImage];
        [_backView addSubview:iconImage];

        //: UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        //: lingq.textColor = [UIColor colorWithHexString:@"#888888"];
        lingq.textColor = [UIColor ground:[UniteWithData noti_byTitle]];
        //: lingq.font = [UIFont systemFontOfSize:15];
        lingq.font = [UIFont systemFontOfSize:15];
        //: lingq.text = @"change";
        lingq.text = [UniteWithData main_mediaTitle];
        //: [_backView addSubview:lingq];
        [_backView addSubview:lingq];


        //: UIView *blackLine_2 = [[UIView alloc] init];
        UIView *blackLine_2 = [[UIView alloc] init];
        //: blackLine_2.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine_2.backgroundColor = [UIColor ground:[UniteWithData m_placeValue]];
        //: [_backView addSubview:blackLine_2];
        [_backView addSubview:blackLine_2];
        //: [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(200);
            make.top.mas_offset(200);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];


        //: CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        //: TPPasswordTextView *view1 = [[TPPasswordTextView alloc] initWithFrame:rect];
        TextView *view1 = [[TextView alloc] initWithFrame:rect];
        //: view1.elementCount = 6;
        view1.elementCount = 6;
        //: view1.elementBorderColor = [UIColor lightGrayColor];
        view1.elementBorderColor = [UIColor lightGrayColor];
        //: [_backView addSubview:view1];
        [_backView addSubview:view1];
        //: view1.passwordDidChangeBlock = ^(NSString *password) {
        view1.passwordDidChangeBlock = ^(NSString *password) {

            //: if (password.length == 6) {
            if (password.length == 6) {
                //: _block(password);
                _block(password);
                //: [self dismissPicker];
                [self doingQuick];
            }
        //: };
        };

        //: [self reloadHeader];
        [self sizeNameHeader];
    }
    //: return self;
    return self;
}


//: -(void)reloadHeader{
-(void)sizeNameHeader{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:userID blue:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
}

//: -(void)handleSingleTapFrom{
-(void)buttonRestore{
    //: [self dismissPicker];
    [self doingQuick];
}

//: - (void)show{
- (void)remoteQuestion{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
        [self->_backView setInfoQuick:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice heightShowStop]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)doingQuick{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setInfoQuick:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: -(void)finshInputPassword:(PayPasswordBlock)block{
-(void)red:(PayPasswordBlock)block{
    //: _block = block;
    _block = block;
}

//: @end
@end
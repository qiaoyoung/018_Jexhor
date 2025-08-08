
#import <Foundation/Foundation.h>

@interface TroopData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TroopData

+ (instancetype)sharedInstance {
    static TroopData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TroopDataToCache:(Byte *)data {
    int novelProfessionCousin = data[0];
    Byte heme = data[1];
    int addAdult = data[2];
    for (int i = addAdult; i < addAdult + novelProfessionCousin; i++) {
        int value = data[i] + heme;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[addAdult + novelProfessionCousin] = 0;
    return data + addAdult;
}

- (NSString *)StringFromTroopData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TroopDataToCache:data]];
}

//: activity_register_next
- (NSString *)userIllegalNegotiationName {
    /* static */ NSString *userIllegalNegotiationName = nil;
    if (!userIllegalNegotiationName) {
        Byte value[] = {22, 28, 3, 69, 71, 88, 77, 90, 77, 88, 93, 67, 86, 73, 75, 77, 87, 88, 73, 86, 67, 82, 73, 92, 88, 107};
        userIllegalNegotiationName = [self StringFromTroopData:value];
    }
    return userIllegalNegotiationName;
}

//: #52ACFC
- (NSString *)showJournalistValue {
    /* static */ NSString *showJournalistValue = nil;
    if (!showJournalistValue) {
        Byte value[] = {7, 97, 4, 97, 194, 212, 209, 224, 226, 229, 226, 60};
        showJournalistValue = [self StringFromTroopData:value];
    }
    return showJournalistValue;
}

//: register_avtivity3_nick
- (NSString *)noti_breastButtonName {
    /* static */ NSString *noti_breastButtonName = nil;
    if (!noti_breastButtonName) {
        Byte value[] = {23, 62, 5, 234, 151, 52, 39, 41, 43, 53, 54, 39, 52, 33, 35, 56, 54, 43, 56, 43, 54, 59, 245, 33, 48, 43, 37, 45, 189};
        noti_breastButtonName = [self StringFromTroopData:value];
    }
    return noti_breastButtonName;
}

//: 输入不能为空
- (NSString *)show_consequentGoatContemplateData {
    /* static */ NSString *show_consequentGoatContemplateData = nil;
    if (!show_consequentGoatContemplateData) {
        Byte value[] = {18, 78, 12, 170, 75, 96, 93, 53, 192, 200, 236, 15, 154, 112, 69, 151, 55, 87, 150, 106, 63, 154, 53, 111, 150, 106, 108, 153, 91, 108, 111};
        show_consequentGoatContemplateData = [self StringFromTroopData:value];
    }
    return show_consequentGoatContemplateData;
}

//: eeeeee
- (NSString *)main_scaleText {
    /* static */ NSString *main_scaleText = nil;
    if (!main_scaleText) {
        Byte value[] = {6, 33, 4, 143, 68, 68, 68, 68, 68, 68, 137};
        main_scaleText = [self StringFromTroopData:value];
    }
    return main_scaleText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESInputNickNameWindowView.h"
#import "BottomView.h"

//: @interface NTESInputNickNameWindowView ()
@interface BottomView ()

//: @end
@end

//: @implementation NTESInputNickNameWindowView
@implementation BottomView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        //: self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);

        //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: disButton.frame = self.bounds;
        disButton.frame = self.bounds;
        //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [disButton addTarget:self action:@selector(doingQuick) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:disButton];
        [self addSubview:disButton];


        //: UIView *backGroundView = [[UIView alloc] init];
        UIView *backGroundView = [[UIView alloc] init];
        //: backGroundView.backgroundColor = [UIColor whiteColor];
        backGroundView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:backGroundView];
        [self addSubview:backGroundView];
        //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.mas_equalTo(self);
            //: make.top.mas_equalTo(100);
            make.top.mas_equalTo(100);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            //: make.height.mas_equalTo(200);
            make.height.mas_equalTo(200);
        //: }];
        }];


        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.font = [UIFont systemFontOfSize:16];
        titleLabel.font = [UIFont systemFontOfSize:16];
        //: titleLabel.textColor = [UIColor blackColor];
        titleLabel.textColor = [UIColor blackColor];
        //: titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        //: titleLabel.text = @"";
        titleLabel.text = @"";
        //: [backGroundView addSubview:titleLabel];
        [backGroundView addSubview:titleLabel];
        //: _titleLabel = titleLabel;
        _titleLabel = titleLabel;
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(30);
            make.top.mas_offset(30);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_equalTo(-20);
            make.right.mas_equalTo(-20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _textField = [[UITextField alloc] init];
        _textField = [[UITextField alloc] init];
        //: _textField.placeholder = [WorkLanguageManager getTextWithKey:@"register_avtivity3_nick"];
        _textField.placeholder = [InputRed preserve:[[TroopData sharedInstance] noti_breastButtonName]];
        //: [backGroundView addSubview:_textField];
        [backGroundView addSubview:_textField];
        //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UIView *lineView = [[UIView alloc] init];
        UIView *lineView = [[UIView alloc] init];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
        lineView.backgroundColor = [UIColor ground:[[TroopData sharedInstance] main_scaleText]];
        //: [backGroundView addSubview:lineView];
        [backGroundView addSubview:lineView];
        //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(1.2);
            make.height.mas_equalTo(1.2);
        //: }];
        }];


        //: UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [knowButton setTitle:[WorkLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [knowButton setTitle:[InputRed preserve:[[TroopData sharedInstance] userIllegalNegotiationName]] forState:UIControlStateNormal];
        //: [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [knowButton addTarget:self action:@selector(knowButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [knowButton addTarget:self action:@selector(iconKnow) forControlEvents:UIControlEventTouchUpInside];
        //: knowButton.backgroundColor = [UIColor colorWithHexString:@"#52ACFC"];
        knowButton.backgroundColor = [UIColor ground:[[TroopData sharedInstance] showJournalistValue]];
        //: [backGroundView addSubview:knowButton];
        [backGroundView addSubview:knowButton];
        //: _dowmButton = knowButton;
        _dowmButton = knowButton;
        //: knowButton.layer.masksToBounds = YES;
        knowButton.layer.masksToBounds = YES;
        //: knowButton.layer.cornerRadius = 4;
        knowButton.layer.cornerRadius = 4;
        //: [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_offset(-20);
            make.right.mas_offset(-20);
            //: make.height.mas_equalTo(45);
            make.height.mas_equalTo(45);
        //: }];
        }];



//        UIImageView *bgimage = [[UIImageView alloc] init];
//        bgimage.userInteractionEnabled = YES;
//        bgimage.image = [UIImage imageNamed:@"mine_opinipn_bgimage"];
//        [self addSubview:bgimage];
//        [bgimage mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.width.mas_equalTo(254);
//            make.height.mas_equalTo(278);
//            make.centerY.mas_equalTo(self);
//            make.centerX.mas_equalTo(self);
//        }];
//
//        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [closeBtn setImage:[UIImage imageNamed:@"mine_opinipn_close"] forState:UIControlStateNormal];
//        [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];
//        [bgimage addSubview:closeBtn];
//        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.mas_equalTo(bgimage);
//            make.top.mas_equalTo(bgimage);
//            make.width.mas_equalTo(50);
//            make.height.mas_equalTo(50);
//        }];






    }
    //: return self;
    return self;
}

//: -(void)closeBtnClick{
-(void)voiceOfPress{
    //: [self dismissPicker];
    [self doingQuick];
}

//: -(void)knowButtonClick{
-(void)iconKnow{

    //: if (_textField.text.length <= 0) {
    if (_textField.text.length <= 0) {
        //: [SVProgressHUD showMessage:@"输入不能为空".nim_localized];
        [SVProgressHUD text:[[TroopData sharedInstance] show_consequentGoatContemplateData].titleBy];
        //: return;
        return;
    }

    //: if (_block) {
    if (_block) {
        //: _block(_textField.text);
        _block(_textField.text);
    }
    //: [self dismissPicker];
    [self doingQuick];
}

//: - (void)show{
- (void)to{
    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];
}

//: - (void)dismissPicker{
- (void)doingQuick{

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];

}

//: -(void)clickKnowButton:(KnowBlock)block{
-(void)commentWill:(KnowBlock)block{
    //: _block = block;
    _block = block;
}


//: @end
@end


#import <Foundation/Foundation.h>

@interface EpilateData : NSObject

@end

@implementation EpilateData

+ (Byte *)EpilateDataToCache:(Byte *)data {
    int deleteTarget = data[0];
    Byte parameter = data[1];
    int sessionMedia = data[2];
    for (int i = sessionMedia; i < sessionMedia + deleteTarget; i++) {
        int value = data[i] + parameter;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[sessionMedia + deleteTarget] = 0;
    return data + sessionMedia;
}

+ (NSString *)StringFromEpilateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EpilateDataToCache:data]];
}

//: login_agreement_press
+ (NSString *)mainAtTitle {
    /* static */ NSString *mainAtTitle = nil;
    if (!mainAtTitle) {
        Byte value[] = {21, 27, 9, 61, 41, 144, 206, 207, 150, 81, 84, 76, 78, 83, 68, 70, 76, 87, 74, 74, 82, 74, 83, 89, 68, 85, 87, 74, 88, 88, 231};
        mainAtTitle = [self StringFromEpilateData:value];
    }
    return mainAtTitle;
}

//: #5D5F66
+ (NSString *)showButtonValue {
    /* static */ NSString *showButtonValue = nil;
    if (!showButtonValue) {
        Byte value[] = {7, 29, 8, 119, 110, 224, 75, 103, 6, 24, 39, 24, 41, 25, 25, 117};
        showButtonValue = [self StringFromEpilateData:value];
    }
    return showButtonValue;
}

//: Complete_operation
+ (NSString *)user_infoTitleValue {
    /* static */ NSString *user_infoTitleValue = nil;
    if (!user_infoTitleValue) {
        Byte value[] = {18, 84, 9, 33, 254, 205, 37, 44, 26, 239, 27, 25, 28, 24, 17, 32, 17, 11, 27, 28, 17, 30, 13, 32, 21, 27, 26, 96};
        user_infoTitleValue = [self StringFromEpilateData:value];
    }
    return user_infoTitleValue;
}

//: Recovery_Options_content
+ (NSString *)userLimitName {
    /* static */ NSString *userLimitName = nil;
    if (!userLimitName) {
        Byte value[] = {24, 28, 3, 54, 73, 71, 83, 90, 73, 86, 93, 67, 51, 84, 88, 77, 83, 82, 87, 67, 71, 83, 82, 88, 73, 82, 88, 72};
        userLimitName = [self StringFromEpilateData:value];
    }
    return userLimitName;
}

//: Recovery_Options
+ (NSString *)appSendText {
    /* static */ NSString *appSendText = nil;
    if (!appSendText) {
        Byte value[] = {16, 72, 11, 202, 194, 222, 44, 153, 118, 60, 43, 10, 29, 27, 39, 46, 29, 42, 49, 23, 7, 40, 44, 33, 39, 38, 43, 135};
        appSendText = [self StringFromEpilateData:value];
    }
    return appSendText;
}

//: #BCC1C8
+ (NSString *)userThanName {
    /* static */ NSString *userThanName = nil;
    if (!userThanName) {
        Byte value[] = {7, 42, 5, 253, 50, 249, 24, 25, 25, 7, 25, 14, 17};
        userThanName = [self StringFromEpilateData:value];
    }
    return userThanName;
}

//: #FF483D
+ (NSString *)mainMediaData {
    /* static */ NSString *mainMediaData = nil;
    if (!mainMediaData) {
        Byte value[] = {7, 19, 12, 222, 127, 232, 27, 201, 94, 122, 185, 176, 16, 51, 51, 33, 37, 32, 49, 89};
        mainMediaData = [self StringFromEpilateData:value];
    }
    return mainMediaData;
}

//: deactivate_account
+ (NSString *)k_viewEndName {
    /* static */ NSString *k_viewEndName = nil;
    if (!k_viewEndName) {
        Byte value[] = {18, 51, 12, 164, 161, 117, 220, 57, 6, 141, 112, 39, 49, 50, 46, 48, 65, 54, 67, 46, 65, 50, 44, 46, 48, 48, 60, 66, 59, 65, 141};
        k_viewEndName = [self StringFromEpilateData:value];
    }
    return k_viewEndName;
}

//: activity_register_next
+ (NSString *)notiMaxColorValue {
    /* static */ NSString *notiMaxColorValue = nil;
    if (!notiMaxColorValue) {
        Byte value[] = {22, 72, 9, 115, 66, 153, 184, 237, 194, 25, 27, 44, 33, 46, 33, 44, 49, 23, 42, 29, 31, 33, 43, 44, 29, 42, 23, 38, 29, 48, 44, 127};
        notiMaxColorValue = [self StringFromEpilateData:value];
    }
    return notiMaxColorValue;
}

//: Consequences_Deactivation
+ (NSString *)appHandleContent {
    /* static */ NSString *appHandleContent = nil;
    if (!appHandleContent) {
        Byte value[] = {25, 30, 6, 117, 147, 114, 37, 81, 80, 85, 71, 83, 87, 71, 80, 69, 71, 85, 65, 38, 71, 67, 69, 86, 75, 88, 67, 86, 75, 81, 80, 135};
        appHandleContent = [self StringFromEpilateData:value];
    }
    return appHandleContent;
}

//: safe_arrow_next
+ (NSString *)showViewMessageValue {
    /* static */ NSString *showViewMessageValue = nil;
    if (!showViewMessageValue) {
        Byte value[] = {15, 60, 7, 82, 199, 239, 143, 55, 37, 42, 41, 35, 37, 54, 54, 51, 59, 35, 50, 41, 60, 56, 36};
        showViewMessageValue = [self StringFromEpilateData:value];
    }
    return showViewMessageValue;
}

//: Data_Retention_Policy_content
+ (NSString *)show_changeData {
    /* static */ NSString *show_changeData = nil;
    if (!show_changeData) {
        Byte value[] = {29, 10, 7, 110, 221, 47, 224, 58, 87, 106, 87, 85, 72, 91, 106, 91, 100, 106, 95, 101, 100, 85, 70, 101, 98, 95, 89, 111, 85, 89, 101, 100, 106, 91, 100, 106, 91};
        show_changeData = [self StringFromEpilateData:value];
    }
    return show_changeData;
}

//: #333333
+ (NSString *)k_buttonText {
    /* static */ NSString *k_buttonText = nil;
    if (!k_buttonText) {
        Byte value[] = {7, 45, 13, 149, 253, 163, 60, 178, 171, 136, 7, 60, 135, 246, 6, 6, 6, 6, 6, 6, 171};
        k_buttonText = [self StringFromEpilateData:value];
    }
    return k_buttonText;
}

//: Read_agree_agreement
+ (NSString *)app_fileValue {
    /* static */ NSString *app_fileValue = nil;
    if (!app_fileValue) {
        Byte value[] = {20, 55, 10, 68, 207, 176, 143, 149, 229, 217, 27, 46, 42, 45, 40, 42, 48, 59, 46, 46, 40, 42, 48, 59, 46, 46, 54, 46, 55, 61, 56};
        app_fileValue = [self StringFromEpilateData:value];
    }
    return app_fileValue;
}

//: #05D481
+ (NSString *)main_maxColorName {
    /* static */ NSString *main_maxColorName = nil;
    if (!main_maxColorName) {
        Byte value[] = {7, 47, 7, 205, 165, 9, 11, 244, 1, 6, 21, 5, 9, 2, 8};
        main_maxColorName = [self StringFromEpilateData:value];
    }
    return main_maxColorName;
}

//: agree_account_deactivation_terms
+ (NSString *)kContentText {
    /* static */ NSString *kContentText = nil;
    if (!kContentText) {
        Byte value[] = {32, 5, 10, 113, 63, 121, 25, 209, 185, 122, 92, 98, 109, 96, 96, 90, 92, 94, 94, 106, 112, 105, 111, 90, 95, 96, 92, 94, 111, 100, 113, 92, 111, 100, 106, 105, 90, 111, 96, 109, 104, 110, 174};
        kContentText = [self StringFromEpilateData:value];
    }
    return kContentText;
}

//: Consequences_Deactivation_content
+ (NSString *)mainLimitData {
    /* static */ NSString *mainLimitData = nil;
    if (!mainLimitData) {
        Byte value[] = {33, 81, 4, 191, 242, 30, 29, 34, 20, 32, 36, 20, 29, 18, 20, 34, 14, 243, 20, 16, 18, 35, 24, 37, 16, 35, 24, 30, 29, 14, 18, 30, 29, 35, 20, 29, 35, 72};
        mainLimitData = [self StringFromEpilateData:value];
    }
    return mainLimitData;
}

//: login_agreement_normal
+ (NSString *)dream_imageValue {
    /* static */ NSString *dream_imageValue = nil;
    if (!dream_imageValue) {
        Byte value[] = {22, 77, 4, 101, 31, 34, 26, 28, 33, 18, 20, 26, 37, 24, 24, 32, 24, 33, 39, 18, 33, 34, 37, 32, 20, 31, 252};
        dream_imageValue = [self StringFromEpilateData:value];
    }
    return dream_imageValue;
}

//: Data_Retention_Policy
+ (NSString *)dream_pressValue {
    /* static */ NSString *dream_pressValue = nil;
    if (!dream_pressValue) {
        Byte value[] = {21, 43, 7, 162, 70, 36, 118, 25, 54, 73, 54, 52, 39, 58, 73, 58, 67, 73, 62, 68, 67, 52, 37, 68, 65, 62, 56, 78, 124};
        dream_pressValue = [self StringFromEpilateData:value];
    }
    return dream_pressValue;
}

//: Vertify_login_password
+ (NSString *)k_rowHideLimitContent {
    /* static */ NSString *k_rowHideLimitContent = nil;
    if (!k_rowHideLimitContent) {
        Byte value[] = {22, 35, 7, 28, 58, 112, 177, 51, 66, 79, 81, 70, 67, 86, 60, 73, 76, 68, 70, 75, 60, 77, 62, 80, 80, 84, 76, 79, 65, 90};
        k_rowHideLimitContent = [self StringFromEpilateData:value];
    }
    return k_rowHideLimitContent;
}

//: contact_tag_fragment_cancel
+ (NSString *)appParentText {
    /* static */ NSString *appParentText = nil;
    if (!appParentText) {
        Byte value[] = {27, 80, 8, 197, 123, 186, 142, 13, 19, 31, 30, 36, 17, 19, 36, 15, 36, 17, 23, 15, 22, 34, 17, 23, 29, 21, 30, 36, 15, 19, 17, 30, 19, 21, 28, 44};
        appParentText = [self StringFromEpilateData:value];
    }
    return appParentText;
}

//: ic-delete_account
+ (NSString *)showSumButtonName {
    /* static */ NSString *showSumButtonName = nil;
    if (!showSumButtonName) {
        Byte value[] = {17, 77, 11, 115, 172, 17, 120, 175, 229, 244, 92, 28, 22, 224, 23, 24, 31, 24, 39, 24, 18, 20, 22, 22, 34, 40, 33, 39, 228};
        showSumButtonName = [self StringFromEpilateData:value];
    }
    return showSumButtonName;
}

//: Confirm_Account_Deactivation
+ (NSString *)noti_removeImageSessionName {
    /* static */ NSString *noti_removeImageSessionName = nil;
    if (!noti_removeImageSessionName) {
        Byte value[] = {28, 83, 10, 206, 109, 107, 246, 20, 86, 191, 240, 28, 27, 19, 22, 31, 26, 12, 238, 16, 16, 28, 34, 27, 33, 12, 241, 18, 14, 16, 33, 22, 35, 14, 33, 22, 28, 27, 115};
        noti_removeImageSessionName = [self StringFromEpilateData:value];
    }
    return noti_removeImageSessionName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  AmmunitionView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountView.h"
#import "AmmunitionView.h"

//: @interface ZMONDeactivateAccountView ()
@interface AmmunitionView ()

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;
//: @property (nonatomic,strong) UIButton *agreementButton;
@property (nonatomic,strong) UIButton *agreementButton;

//: @end
@end

//: @implementation ZMONDeactivateAccountView
@implementation AmmunitionView

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
        [self initImage];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initImage{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-600)/2, [[UIScreen mainScreen] bounds].size.width-30, 600)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-600)/2, [[UIScreen mainScreen] bounds].size.width-30, 600)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(20, 20, 32, 32);
    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(30+32, 20, [[UIScreen mainScreen] bounds].size.width-150, 32);
    self.titleLabel.frame = CGRectMake(30+32, 20, [[UIScreen mainScreen] bounds].size.width-150, 32);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 30)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 30)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"Confirm_Account_Deactivation"];
    labtitle.text = [InputRed preserve:[EpilateData noti_removeImageSessionName]];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

    //: [_box addSubview:self.nextBox];
    [_box addSubview:self.nextBox];
    //: self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 54);
    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.nextBox.bottom, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, self.nextBox.bottom, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(width+40, 600-20-height, width, height);
    self.closeBtn.frame = CGRectMake(width+40, 600-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(20, 600-20-height, width, height);
    self.sureBtn.frame = CGRectMake(20, 600-20-height, width, height);

}



//: - (void)updateTheNickname{
- (void)formatAdd{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[WorkLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[InputRed preserve:[EpilateData app_fileValue]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self animationWithEnableAtHand];
    //: if ([self.delegate respondsToSelector:@selector(didTouchNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(allowTouch)]) {
        //: [self.delegate didTouchNextButton];
        [self.delegate allowTouch];
    }

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)addEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)should:(UITextField *)textField image:(NSRange)range nameTitle:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)remove:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)commonwealthClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)max:(UITextField *)textField{
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
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
        //: _titleLabel.text = [WorkLanguageManager getTextWithKey:@"deactivate_account"];
        _titleLabel.text = [InputRed preserve:[EpilateData k_viewEndName]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-delete_account"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[EpilateData showSumButtonName]]];
    }
    //: return _img;
    return _img;
}

//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];

        //: UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView1.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        numView1.backgroundColor = [UIColor ground:[EpilateData main_maxColorName]];
        //: numView1.layer.cornerRadius = 10;
        numView1.layer.cornerRadius = 10;
        //: numView1.layer.masksToBounds = YES;
        numView1.layer.masksToBounds = YES;
        //: [view1 addSubview:numView1];
        [view1 addSubview:numView1];
        //: UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum1.textColor = [UIColor whiteColor];
        labtitlenum1.textColor = [UIColor whiteColor];
        //: labtitlenum1.text = @"1";
        labtitlenum1.text = @"1";
        //: labtitlenum1.textAlignment = NSTextAlignmentCenter;
        labtitlenum1.textAlignment = NSTextAlignmentCenter;
        //: [numView1 addSubview:labtitlenum1];
        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [WorkLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [InputRed preserve:[EpilateData app_fileValue]];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView2.backgroundColor = [UIColor ground:[EpilateData userThanName]];
        //: numView2.layer.cornerRadius = 10;
        numView2.layer.cornerRadius = 10;
        //: numView2.layer.masksToBounds = YES;
        numView2.layer.masksToBounds = YES;
        //: [view2 addSubview:numView2];
        [view2 addSubview:numView2];
        //: UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum2.textColor = [UIColor whiteColor];
        labtitlenum2.textColor = [UIColor whiteColor];
        //: labtitlenum2.text = @"2";
        labtitlenum2.text = @"2";
        //: labtitlenum2.textAlignment = NSTextAlignmentCenter;
        labtitlenum2.textAlignment = NSTextAlignmentCenter;
        //: [numView2 addSubview:labtitlenum2];
        [numView2 addSubview:labtitlenum2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle2.textColor = [UIColor ground:[EpilateData showButtonValue]];
        //: labtitle2.text = [WorkLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [InputRed preserve:[EpilateData k_rowHideLimitContent]];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView3.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView3.backgroundColor = [UIColor ground:[EpilateData userThanName]];
        //: numView3.layer.cornerRadius = 10;
        numView3.layer.cornerRadius = 10;
        //: numView3.layer.masksToBounds = YES;
        numView3.layer.masksToBounds = YES;
        //: [view3 addSubview:numView3];
        [view3 addSubview:numView3];
        //: UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum3.textColor = [UIColor whiteColor];
        labtitlenum3.textColor = [UIColor whiteColor];
        //: labtitlenum3.text = @"3";
        labtitlenum3.text = @"3";
        //: labtitlenum3.textAlignment = NSTextAlignmentCenter;
        labtitlenum3.textAlignment = NSTextAlignmentCenter;
        //: [numView3 addSubview:labtitlenum3];
        [numView3 addSubview:labtitlenum3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle3.textColor = [UIColor ground:[EpilateData showButtonValue]];
        //: labtitle3.text = [WorkLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [InputRed preserve:[EpilateData user_infoTitleValue]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[EpilateData showViewMessageValue]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[EpilateData showViewMessageValue]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor ground:[EpilateData k_buttonText]];
        //: labtitle1.text = [WorkLanguageManager getTextWithKey:@"Consequences_Deactivation"];
        labtitle1.text = [InputRed preserve:[EpilateData appHandleContent]];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor ground:[EpilateData k_buttonText]];
        //: labsubtitle1.text = [WorkLanguageManager getTextWithKey:@"Consequences_Deactivation_content"];
        labsubtitle1.text = [InputRed preserve:[EpilateData mainLimitData]];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        //: labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle2.textColor = [UIColor ground:[EpilateData k_buttonText]];
        //: labtitle2.text = [WorkLanguageManager getTextWithKey:@"Data_Retention_Policy"];
        labtitle2.text = [InputRed preserve:[EpilateData dream_pressValue]];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor ground:[EpilateData k_buttonText]];
        //: labsubtitle2.text = [WorkLanguageManager getTextWithKey:@"Data_Retention_Policy_content"];
        labsubtitle2.text = [InputRed preserve:[EpilateData show_changeData]];
        //: labsubtitle2.numberOfLines = 0;
        labsubtitle2.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle2];
        [_contentBox addSubview:labsubtitle2];
        //: [labsubtitle2 sizeToFit];
        [labsubtitle2 sizeToFit];

        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        //: labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle3.textColor = [UIColor ground:[EpilateData k_buttonText]];
        //: labtitle3.text = [WorkLanguageManager getTextWithKey:@"Recovery_Options"];
        labtitle3.text = [InputRed preserve:[EpilateData appSendText]];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor ground:[EpilateData k_buttonText]];
        //: labsubtitle3.text = [WorkLanguageManager getTextWithKey:@"Recovery_Options_content"];
        labsubtitle3.text = [InputRed preserve:[EpilateData userLimitName]];
        //: labsubtitle3.numberOfLines = 0;
        labsubtitle3.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle3];
        [_contentBox addSubview:labsubtitle3];
        //: [labsubtitle3 sizeToFit];
        [labsubtitle3 sizeToFit];

        //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        //: _agreementButton.selected = YES;
        _agreementButton.selected = YES;
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
        [_agreementButton setImage:[UIImage imageNamed:[EpilateData dream_imageValue]] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[EpilateData mainAtTitle]] forState:UIControlStateSelected];
        //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_agreementButton addTarget:self action:@selector(voxes:) forControlEvents:UIControlEventTouchUpInside];
        //: [_contentBox addSubview:_agreementButton];
        [_contentBox addSubview:_agreementButton];

        //: UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        //: labprotocol.font = [UIFont systemFontOfSize:12.f];
        labprotocol.font = [UIFont systemFontOfSize:12.f];
//        labprotocol.textColor = TextColor_4;
//        labprotocol.text = @"I have read and agree to the account deactivation terms";
        //: labprotocol.numberOfLines = 0;
        labprotocol.numberOfLines = 0;
        //: [_contentBox addSubview:labprotocol];
        [_contentBox addSubview:labprotocol];
        //: labprotocol.userInteractionEnabled = YES;
        labprotocol.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleProtocol)];
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(searchedProtocol)];
        //: [labprotocol addGestureRecognizer:singleTap];
        [labprotocol addGestureRecognizer:singleTap];

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[WorkLanguageManager getTextWithKey:@"agree_account_deactivation_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[InputRed preserve:[EpilateData kContentText]]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#05D481"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor ground:[EpilateData main_maxColorName]] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#05D481"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor ground:[EpilateData main_maxColorName]] range:(NSRange){0,[tncString length]}];
        //: labprotocol.attributedText = tncString;
        labprotocol.attributedText = tncString;

        //: [labprotocol sizeToFit];
        [labprotocol sizeToFit];


    }
    //: return _contentBox;
    return _contentBox;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)voxes:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)handleProtocol
-(void)searchedProtocol
{
//    [self animationClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(touchOn)]) {
        //: [self.delegate didTouchProtocolButton];
        [self.delegate touchOn];
    }
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
        [_closeBtn setTitleColor:[UIColor ground:[EpilateData showButtonValue]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[EpilateData appParentText]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 10;
        _closeBtn.layer.cornerRadius = 10;
        //: _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _closeBtn.layer.shadowOpacity = 1;
        _closeBtn.layer.shadowOpacity = 1;
        //: _closeBtn.layer.shadowRadius = 0;
        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(formatAdd) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor ground:[EpilateData mainMediaData]] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WorkLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[EpilateData notiMaxColorValue]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _sureBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _sureBtn.layer.borderWidth = 0.5;
        _sureBtn.layer.borderWidth = 0.5;
        //: _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:0.0800].CGColor;
        _sureBtn.layer.shadowColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:0.0800].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

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
- (void)to
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

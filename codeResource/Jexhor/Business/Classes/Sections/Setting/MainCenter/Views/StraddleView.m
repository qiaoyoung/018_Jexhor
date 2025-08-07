
#import <Foundation/Foundation.h>

@interface CustodyData : NSObject

@end

@implementation CustodyData

+ (Byte *)CustodyDataToCache:(Byte *)data {
    int cracked = data[0];
    int rageBelow = data[1];
    for (int i = 0; i < cracked / 2; i++) {
        int begin = rageBelow + i;
        int end = rageBelow + cracked - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[rageBelow + cracked] = 0;
    return data + rageBelow;
}

+ (NSString *)StringFromCustodyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CustodyDataToCache:data]];
}  

//: ic-delete_account
+ (NSString *)dreamVileFormat {
    /* static */ NSString *dreamVileFormat = nil;
    if (!dreamVileFormat) {
        Byte value[] = {17, 10, 213, 115, 217, 107, 64, 61, 141, 4, 116, 110, 117, 111, 99, 99, 97, 95, 101, 116, 101, 108, 101, 100, 45, 99, 105, 89};
        dreamVileFormat = [self StringFromCustodyData:value];
    }
    return dreamVileFormat;
}

//: #FF483D
+ (NSString *)k_hospitalPath {
    /* static */ NSString *k_hospitalPath = nil;
    if (!k_hospitalPath) {
        Byte value[] = {7, 5, 67, 93, 9, 68, 51, 56, 52, 70, 70, 35, 76};
        k_hospitalPath = [self StringFromCustodyData:value];
    }
    return k_hospitalPath;
}

//: #BCC1C8
+ (NSString *)dreamGovernFormat {
    /* static */ NSString *dreamGovernFormat = nil;
    if (!dreamGovernFormat) {
        Byte value[] = {7, 11, 95, 36, 187, 227, 247, 195, 154, 160, 92, 56, 67, 49, 67, 67, 66, 35, 113};
        dreamGovernFormat = [self StringFromCustodyData:value];
    }
    return dreamGovernFormat;
}

//: Read_agree_agreement
+ (NSString *)mainEqualContent {
    /* static */ NSString *mainEqualContent = nil;
    if (!mainEqualContent) {
        Byte value[] = {20, 6, 203, 78, 99, 20, 116, 110, 101, 109, 101, 101, 114, 103, 97, 95, 101, 101, 114, 103, 97, 95, 100, 97, 101, 82, 240};
        mainEqualContent = [self StringFromCustodyData:value];
    }
    return mainEqualContent;
}

//: Explanation_Data_Deletion_content
+ (NSString *)dream_enableRangeKey {
    /* static */ NSString *dream_enableRangeKey = nil;
    if (!dream_enableRangeKey) {
        Byte value[] = {33, 4, 106, 255, 116, 110, 101, 116, 110, 111, 99, 95, 110, 111, 105, 116, 101, 108, 101, 68, 95, 97, 116, 97, 68, 95, 110, 111, 105, 116, 97, 110, 97, 108, 112, 120, 69, 230};
        dream_enableRangeKey = [self StringFromCustodyData:value];
    }
    return dream_enableRangeKey;
}

//: Confirm_Account_Deletion
+ (NSString *)appJuryData {
    /* static */ NSString *appJuryData = nil;
    if (!appJuryData) {
        Byte value[] = {24, 2, 110, 111, 105, 116, 101, 108, 101, 68, 95, 116, 110, 117, 111, 99, 99, 65, 95, 109, 114, 105, 102, 110, 111, 67, 250};
        appJuryData = [self StringFromCustodyData:value];
    }
    return appJuryData;
}

//: #333333
+ (NSString *)main_withData {
    /* static */ NSString *main_withData = nil;
    if (!main_withData) {
        Byte value[] = {7, 4, 10, 150, 51, 51, 51, 51, 51, 51, 35, 43};
        main_withData = [self StringFromCustodyData:value];
    }
    return main_withData;
}

//: #5D5F66
+ (NSString *)k_pullStorageUrl {
    /* static */ NSString *k_pullStorageUrl = nil;
    if (!k_pullStorageUrl) {
        Byte value[] = {7, 3, 6, 54, 54, 70, 53, 68, 53, 35, 203};
        k_pullStorageUrl = [self StringFromCustodyData:value];
    }
    return k_pullStorageUrl;
}

//: safe_arrow_next
+ (NSString *)show_styleStr {
    /* static */ NSString *show_styleStr = nil;
    if (!show_styleStr) {
        Byte value[] = {15, 11, 100, 26, 2, 122, 173, 106, 103, 74, 77, 116, 120, 101, 110, 95, 119, 111, 114, 114, 97, 95, 101, 102, 97, 115, 103};
        show_styleStr = [self StringFromCustodyData:value];
    }
    return show_styleStr;
}

//: Consequences_Account_Deletion
+ (NSString *)user_contentId {
    /* static */ NSString *user_contentId = nil;
    if (!user_contentId) {
        Byte value[] = {29, 12, 94, 190, 77, 10, 67, 233, 121, 251, 163, 246, 110, 111, 105, 116, 101, 108, 101, 68, 95, 116, 110, 117, 111, 99, 99, 65, 95, 115, 101, 99, 110, 101, 117, 113, 101, 115, 110, 111, 67, 142};
        user_contentId = [self StringFromCustodyData:value];
    }
    return user_contentId;
}

//: activity_comment_setting_cancel_account
+ (NSString *)dreamTermsStandingMessage {
    /* static */ NSString *dreamTermsStandingMessage = nil;
    if (!dreamTermsStandingMessage) {
        Byte value[] = {39, 3, 204, 116, 110, 117, 111, 99, 99, 97, 95, 108, 101, 99, 110, 97, 99, 95, 103, 110, 105, 116, 116, 101, 115, 95, 116, 110, 101, 109, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 180};
        dreamTermsStandingMessage = [self StringFromCustodyData:value];
    }
    return dreamTermsStandingMessage;
}

//: contact_tag_fragment_cancel
+ (NSString *)show_distractKey {
    /* static */ NSString *show_distractKey = nil;
    if (!show_distractKey) {
        Byte value[] = {27, 11, 240, 20, 2, 157, 90, 226, 54, 49, 200, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 242};
        show_distractKey = [self StringFromCustodyData:value];
    }
    return show_distractKey;
}

//: #2C3042
+ (NSString *)showUnderPath {
    /* static */ NSString *showUnderPath = nil;
    if (!showUnderPath) {
        Byte value[] = {7, 12, 109, 171, 43, 87, 220, 11, 76, 144, 252, 150, 50, 52, 48, 51, 67, 50, 35, 192};
        showUnderPath = [self StringFromCustodyData:value];
    }
    return showUnderPath;
}

//: #05D481
+ (NSString *)dreamNuclearTitle {
    /* static */ NSString *dreamNuclearTitle = nil;
    if (!dreamNuclearTitle) {
        Byte value[] = {7, 12, 22, 165, 112, 3, 44, 228, 177, 246, 240, 47, 49, 56, 52, 68, 53, 48, 35, 81};
        dreamNuclearTitle = [self StringFromCustodyData:value];
    }
    return dreamNuclearTitle;
}

//: login_agreement_press
+ (NSString *)dream_actorTextIdent {
    /* static */ NSString *dream_actorTextIdent = nil;
    if (!dream_actorTextIdent) {
        Byte value[] = {21, 8, 47, 130, 54, 75, 225, 56, 115, 115, 101, 114, 112, 95, 116, 110, 101, 109, 101, 101, 114, 103, 97, 95, 110, 105, 103, 111, 108, 102};
        dream_actorTextIdent = [self StringFromCustodyData:value];
    }
    return dream_actorTextIdent;
}

//: login_agreement_normal
+ (NSString *)mainWonderfulSustainMsg {
    /* static */ NSString *mainWonderfulSustainMsg = nil;
    if (!mainWonderfulSustainMsg) {
        Byte value[] = {22, 5, 159, 42, 176, 108, 97, 109, 114, 111, 110, 95, 116, 110, 101, 109, 101, 101, 114, 103, 97, 95, 110, 105, 103, 111, 108, 117};
        mainWonderfulSustainMsg = [self StringFromCustodyData:value];
    }
    return mainWonderfulSustainMsg;
}

//: Consequences_Account_Deletion_content
+ (NSString *)notiJumpMessage {
    /* static */ NSString *notiJumpMessage = nil;
    if (!notiJumpMessage) {
        Byte value[] = {37, 2, 116, 110, 101, 116, 110, 111, 99, 95, 110, 111, 105, 116, 101, 108, 101, 68, 95, 116, 110, 117, 111, 99, 99, 65, 95, 115, 101, 99, 110, 101, 117, 113, 101, 115, 110, 111, 67, 116};
        notiJumpMessage = [self StringFromCustodyData:value];
    }
    return notiJumpMessage;
}

//: Explanation_Data_Deletion
+ (NSString *)show_viewFormat {
    /* static */ NSString *show_viewFormat = nil;
    if (!show_viewFormat) {
        Byte value[] = {25, 7, 228, 191, 171, 246, 3, 110, 111, 105, 116, 101, 108, 101, 68, 95, 97, 116, 97, 68, 95, 110, 111, 105, 116, 97, 110, 97, 108, 112, 120, 69, 3};
        show_viewFormat = [self StringFromCustodyData:value];
    }
    return show_viewFormat;
}

//: agree_account_deletion_terms
+ (NSString *)mainWipeName {
    /* static */ NSString *mainWipeName = nil;
    if (!mainWipeName) {
        Byte value[] = {28, 9, 60, 55, 144, 60, 131, 129, 18, 115, 109, 114, 101, 116, 95, 110, 111, 105, 116, 101, 108, 101, 100, 95, 116, 110, 117, 111, 99, 99, 97, 95, 101, 101, 114, 103, 97, 16};
        mainWipeName = [self StringFromCustodyData:value];
    }
    return mainWipeName;
}

//: Complete_operation
+ (NSString *)showDismissStr {
    /* static */ NSString *showDismissStr = nil;
    if (!showDismissStr) {
        Byte value[] = {18, 11, 156, 170, 135, 199, 242, 18, 95, 240, 56, 110, 111, 105, 116, 97, 114, 101, 112, 111, 95, 101, 116, 101, 108, 112, 109, 111, 67, 214};
        showDismissStr = [self StringFromCustodyData:value];
    }
    return showDismissStr;
}

//: Irreversible_Operation_content
+ (NSString *)main_viewPath {
    /* static */ NSString *main_viewPath = nil;
    if (!main_viewPath) {
        Byte value[] = {30, 12, 219, 242, 31, 124, 39, 125, 4, 5, 20, 80, 116, 110, 101, 116, 110, 111, 99, 95, 110, 111, 105, 116, 97, 114, 101, 112, 79, 95, 101, 108, 98, 105, 115, 114, 101, 118, 101, 114, 114, 73, 226};
        main_viewPath = [self StringFromCustodyData:value];
    }
    return main_viewPath;
}

//: Irreversible_Operation
+ (NSString *)showInfluentialKey {
    /* static */ NSString *showInfluentialKey = nil;
    if (!showInfluentialKey) {
        Byte value[] = {22, 10, 11, 60, 148, 247, 90, 103, 9, 206, 110, 111, 105, 116, 97, 114, 101, 112, 79, 95, 101, 108, 98, 105, 115, 114, 101, 118, 101, 114, 114, 73, 223};
        showInfluentialKey = [self StringFromCustodyData:value];
    }
    return showInfluentialKey;
}

//: Vertify_login_password
+ (NSString *)mainMotFormat {
    /* static */ NSString *mainMotFormat = nil;
    if (!mainMotFormat) {
        Byte value[] = {22, 3, 178, 100, 114, 111, 119, 115, 115, 97, 112, 95, 110, 105, 103, 111, 108, 95, 121, 102, 105, 116, 114, 101, 86, 210};
        mainMotFormat = [self StringFromCustodyData:value];
    }
    return mainMotFormat;
}

//: contact_tag_fragment_sure
+ (NSString *)show_economicTitle {
    /* static */ NSString *show_economicTitle = nil;
    if (!show_economicTitle) {
        Byte value[] = {25, 7, 123, 173, 38, 197, 49, 101, 114, 117, 115, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 4};
        show_economicTitle = [self StringFromCustodyData:value];
    }
    return show_economicTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StraddleView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeleteAccountView.h"
#import "StraddleView.h"

//: @interface ZMONDeleteAccountView ()<UITextFieldDelegate>
@interface StraddleView ()<UITextFieldDelegate>

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

//: @implementation ZMONDeleteAccountView
@implementation StraddleView

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
        [self initHeliogram];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initHeliogram{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);
    self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labtitle.textColor = [UIColor user:[CustodyData showUnderPath]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [PushLanguageManager getTextWithKey:@"Confirm_Account_Deletion"];
    labtitle.text = [BackgroundRandomAttribute content:[CustodyData appJuryData]];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, SCREEN_WIDTH-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
}



//: - (void)updateTheNickname{
- (void)requestButton{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[PushLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[BackgroundRandomAttribute content:[CustodyData mainEqualContent]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self nearAdd];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(buttonDoing)]) {
        //: [self.delegate didTouchDeleteNextButton];
        [self.delegate buttonDoing];
    }

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
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
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor user:[CustodyData showUnderPath]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [PushLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [BackgroundRandomAttribute content:[CustodyData dreamTermsStandingMessage]];
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[CustodyData dreamVileFormat]]];
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
        numView1.backgroundColor = [UIColor user:[CustodyData dreamNuclearTitle]];
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
        //: labtitle1.text = [PushLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [BackgroundRandomAttribute content:[CustodyData mainEqualContent]];
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
        numView2.backgroundColor = [UIColor user:[CustodyData dreamGovernFormat]];
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
        labtitle2.textColor = [UIColor user:[CustodyData k_pullStorageUrl]];
        //: labtitle2.text = [PushLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [BackgroundRandomAttribute content:[CustodyData mainMotFormat]];
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
        numView3.backgroundColor = [UIColor user:[CustodyData dreamGovernFormat]];
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
        labtitle3.textColor = [UIColor user:[CustodyData k_pullStorageUrl]];
        //: labtitle3.text = [PushLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [BackgroundRandomAttribute content:[CustodyData showDismissStr]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[CustodyData show_styleStr]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[CustodyData show_styleStr]];
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
        labtitle1.textColor = [UIColor user:[CustodyData main_withData]];
        //: labtitle1.text = [PushLanguageManager getTextWithKey:@"Consequences_Account_Deletion"];
        labtitle1.text = [BackgroundRandomAttribute content:[CustodyData user_contentId]];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor user:[CustodyData main_withData]];
        //: labsubtitle1.text = [PushLanguageManager getTextWithKey:@"Consequences_Account_Deletion_content"];
        labsubtitle1.text = [BackgroundRandomAttribute content:[CustodyData notiJumpMessage]];
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
        labtitle2.textColor = [UIColor user:[CustodyData main_withData]];
        //: labtitle2.text = [PushLanguageManager getTextWithKey:@"Explanation_Data_Deletion"];
        labtitle2.text = [BackgroundRandomAttribute content:[CustodyData show_viewFormat]];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor user:[CustodyData main_withData]];
        //: labsubtitle2.text = [PushLanguageManager getTextWithKey:@"Explanation_Data_Deletion_content"];
        labsubtitle2.text = [BackgroundRandomAttribute content:[CustodyData dream_enableRangeKey]];
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
        labtitle3.textColor = [UIColor user:[CustodyData main_withData]];
        //: labtitle3.text = [PushLanguageManager getTextWithKey:@"Irreversible_Operation"];
        labtitle3.text = [BackgroundRandomAttribute content:[CustodyData showInfluentialKey]];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor user:[CustodyData main_withData]];
        //: labsubtitle3.text = [PushLanguageManager getTextWithKey:@"Irreversible_Operation_content"];
        labsubtitle3.text = [BackgroundRandomAttribute content:[CustodyData main_viewPath]];
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
        [_agreementButton setImage:[UIImage imageNamed:[CustodyData mainWonderfulSustainMsg]] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[CustodyData dream_actorTextIdent]] forState:UIControlStateSelected];
        //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_agreementButton addTarget:self action:@selector(colorCell:) forControlEvents:UIControlEventTouchUpInside];
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
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(provinceAuto)];
        //: [labprotocol addGestureRecognizer:singleTap];
        [labprotocol addGestureRecognizer:singleTap];

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[PushLanguageManager getTextWithKey:@"agree_account_deletion_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[BackgroundRandomAttribute content:[CustodyData mainWipeName]]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor user:[CustodyData showUnderPath]] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor user:[CustodyData showUnderPath]] range:(NSRange){0,[tncString length]}];
        //: labprotocol.attributedText = tncString;
        labprotocol.attributedText = tncString;

        //: [labprotocol sizeToFit];
        [labprotocol sizeToFit];


    }
    //: return _contentBox;
    return _contentBox;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)colorCell:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)handleProtocol
-(void)provinceAuto
{
//    [self animationClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(tapContent)]) {
        //: [self.delegate didTouchDeleteProtocolButton];
        [self.delegate tapContent];
    }
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
        [_closeBtn setTitleColor:[UIColor user:[CustodyData k_pullStorageUrl]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[CustodyData show_distractKey]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(requestButton) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[CustodyData show_economicTitle]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor user:[CustodyData k_hospitalPath]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}


//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)at
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

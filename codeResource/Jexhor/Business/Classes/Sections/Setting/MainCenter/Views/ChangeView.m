
#import <Foundation/Foundation.h>

@interface CategoryData : NSObject

@end

@implementation CategoryData

+ (Byte *)CategoryDataToCache:(Byte *)data {
    int horrorCell = data[0];
    Byte filling = data[1];
    int consumer = data[2];
    for (int i = consumer; i < consumer + horrorCell; i++) {
        int value = data[i] + filling;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[consumer + horrorCell] = 0;
    return data + consumer;
}

+ (NSString *)StringFromCategoryData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CategoryDataToCache:data]];
}

//: #5D5F66
+ (NSString *)main_participateMessage {
    /* static */ NSString *main_participateMessage = nil;
    if (!main_participateMessage) {
        Byte value[] = {7, 33, 7, 96, 182, 56, 38, 2, 20, 35, 20, 37, 21, 21, 216};
        main_participateMessage = [self StringFromCategoryData:value];
    }
    return main_participateMessage;
}

//: safe_success_step
+ (NSString *)notiPractitionerTitle {
    /* static */ NSString *notiPractitionerTitle = nil;
    if (!notiPractitionerTitle) {
        Byte value[] = {17, 96, 11, 185, 173, 82, 20, 204, 189, 92, 129, 19, 1, 6, 5, 255, 19, 21, 3, 3, 5, 19, 19, 255, 19, 20, 5, 16, 125};
        notiPractitionerTitle = [self StringFromCategoryData:value];
    }
    return notiPractitionerTitle;
}

//: contact_tag_fragment_cancel
+ (NSString *)kEmotionIdent {
    /* static */ NSString *kEmotionIdent = nil;
    if (!kEmotionIdent) {
        Byte value[] = {27, 91, 10, 51, 88, 192, 192, 76, 5, 64, 8, 20, 19, 25, 6, 8, 25, 4, 25, 6, 12, 4, 11, 23, 6, 12, 18, 10, 19, 25, 4, 8, 6, 19, 8, 10, 17, 43};
        kEmotionIdent = [self StringFromCategoryData:value];
    }
    return kEmotionIdent;
}

//: Read_agree_agreement
+ (NSString *)user_enableText {
    /* static */ NSString *user_enableText = nil;
    if (!user_enableText) {
        Byte value[] = {20, 63, 7, 127, 236, 95, 22, 19, 38, 34, 37, 32, 34, 40, 51, 38, 38, 32, 34, 40, 51, 38, 38, 46, 38, 47, 53, 165};
        user_enableText = [self StringFromCategoryData:value];
    }
    return user_enableText;
}

//: #FF483D
+ (NSString *)mainInputStr {
    /* static */ NSString *mainInputStr = nil;
    if (!mainInputStr) {
        Byte value[] = {7, 4, 11, 151, 131, 139, 73, 155, 221, 47, 238, 31, 66, 66, 48, 52, 47, 64, 183};
        mainInputStr = [self StringFromCategoryData:value];
    }
    return mainInputStr;
}

//: safe_arrow_next
+ (NSString *)k_colorVeteranContent {
    /* static */ NSString *k_colorVeteranContent = nil;
    if (!k_colorVeteranContent) {
        Byte value[] = {15, 41, 5, 123, 212, 74, 56, 61, 60, 54, 56, 73, 73, 70, 78, 54, 69, 60, 79, 75, 184};
        k_colorVeteranContent = [self StringFromCategoryData:value];
    }
    return k_colorVeteranContent;
}

//: safe_bind_phone_icon
+ (NSString *)noti_sodIdent {
    /* static */ NSString *noti_sodIdent = nil;
    if (!noti_sodIdent) {
        Byte value[] = {20, 64, 8, 42, 194, 221, 250, 19, 51, 33, 38, 37, 31, 34, 41, 46, 36, 31, 48, 40, 47, 46, 37, 31, 41, 35, 47, 46, 108};
        noti_sodIdent = [self StringFromCategoryData:value];
    }
    return noti_sodIdent;
}

//: Complete_operation
+ (NSString *)dreamHospitalImageCellMsg {
    /* static */ NSString *dreamHospitalImageCellMsg = nil;
    if (!dreamHospitalImageCellMsg) {
        Byte value[] = {18, 95, 4, 122, 228, 16, 14, 17, 13, 6, 21, 6, 0, 16, 17, 6, 19, 2, 21, 10, 16, 15, 253};
        dreamHospitalImageCellMsg = [self StringFromCategoryData:value];
    }
    return dreamHospitalImageCellMsg;
}

//: #05D481
+ (NSString *)user_buttonName {
    /* static */ NSString *user_buttonName = nil;
    if (!user_buttonName) {
        Byte value[] = {7, 33, 7, 50, 175, 172, 130, 2, 15, 20, 35, 19, 23, 16, 128};
        user_buttonName = [self StringFromCategoryData:value];
    }
    return user_buttonName;
}

//: wrong_password
+ (NSString *)k_detectiveName {
    /* static */ NSString *k_detectiveName = nil;
    if (!k_detectiveName) {
        Byte value[] = {14, 86, 3, 33, 28, 25, 24, 17, 9, 26, 11, 29, 29, 33, 25, 28, 14, 180};
        k_detectiveName = [self StringFromCategoryData:value];
    }
    return k_detectiveName;
}

//: #EEEEEE
+ (NSString *)userIconSaleTitle {
    /* static */ NSString *userIconSaleTitle = nil;
    if (!userIconSaleTitle) {
        Byte value[] = {7, 22, 11, 124, 167, 171, 101, 219, 69, 110, 192, 13, 47, 47, 47, 47, 47, 47, 79};
        userIconSaleTitle = [self StringFromCategoryData:value];
    }
    return userIconSaleTitle;
}

//: Vertify_login_password
+ (NSString *)dream_cancelData {
    /* static */ NSString *dream_cancelData = nil;
    if (!dream_cancelData) {
        Byte value[] = {22, 82, 11, 201, 11, 135, 9, 225, 20, 167, 178, 4, 19, 32, 34, 23, 20, 39, 13, 26, 29, 21, 23, 28, 13, 30, 15, 33, 33, 37, 29, 32, 18, 251};
        dream_cancelData = [self StringFromCategoryData:value];
    }
    return dream_cancelData;
}

//: ic-delete_account
+ (NSString *)m_snapMsg {
    /* static */ NSString *m_snapMsg = nil;
    if (!m_snapMsg) {
        Byte value[] = {17, 22, 8, 13, 20, 153, 108, 162, 83, 77, 23, 78, 79, 86, 79, 94, 79, 73, 75, 77, 77, 89, 95, 88, 94, 113};
        m_snapMsg = [self StringFromCategoryData:value];
    }
    return m_snapMsg;
}

//: get_pay_psw_activity_input_psw
+ (NSString *)user_wooContent {
    /* static */ NSString *user_wooContent = nil;
    if (!user_wooContent) {
        Byte value[] = {30, 93, 9, 199, 139, 210, 230, 126, 240, 10, 8, 23, 2, 19, 4, 28, 2, 19, 22, 26, 2, 4, 6, 23, 12, 25, 12, 23, 28, 2, 12, 17, 19, 24, 23, 2, 19, 22, 26, 90};
        user_wooContent = [self StringFromCategoryData:value];
    }
    return user_wooContent;
}

//: #BCC1C8
+ (NSString *)m_messagePath {
    /* static */ NSString *m_messagePath = nil;
    if (!m_messagePath) {
        Byte value[] = {7, 62, 12, 210, 117, 166, 109, 136, 143, 69, 88, 195, 229, 4, 5, 5, 243, 5, 250, 123};
        m_messagePath = [self StringFromCategoryData:value];
    }
    return m_messagePath;
}

//: contact_tag_fragment_sure
+ (NSString *)main_centerMsg {
    /* static */ NSString *main_centerMsg = nil;
    if (!main_centerMsg) {
        Byte value[] = {25, 60, 9, 66, 21, 43, 66, 193, 93, 39, 51, 50, 56, 37, 39, 56, 35, 56, 37, 43, 35, 42, 54, 37, 43, 49, 41, 50, 56, 35, 55, 57, 54, 41, 251};
        main_centerMsg = [self StringFromCategoryData:value];
    }
    return main_centerMsg;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountNextView.h"
#import "ChangeView.h"

//: @interface ZMONDeactivateAccountNextView ()<UITextFieldDelegate>
@interface ChangeView ()<UITextFieldDelegate>

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

//: @end
@end

//: @implementation ZMONDeactivateAccountNextView
@implementation ChangeView

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
        [self initTing];

    }
    //: return self;
    return self;
}


//: - (void)initUI
- (void)initTing
{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);
    self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);

//    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, SCREEN_WIDTH-70, 30)];
//    labtitle.font = [UIFont systemFontOfSize:14.f];
//    labtitle.textColor = [UIColor blackColor];
//    labtitle.text = @"Confirm Account Deactivation?";
//    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, self.img.bottom+20, SCREEN_WIDTH-70, 54);

        //: [_box addSubview:self.searchView];
        [_box addSubview:self.searchView];
        //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);
        self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)downwards:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}

//: - (void)updateTheNickname{
- (void)requestButton{

    //: [self endEditing:YES];
    [self endEditing:YES];

    //: NSString *pcode = [NIMUserDefaults standardUserDefaults].pCode?:@"";
    NSString *pcode = [CrossShouldBlock towardScaleOfMeasurement].pCode?:@"";
    //: if([pcode isEqualToString:self.searchField.text]){
    if([pcode isEqualToString:self.searchField.text]){
        //: self.speiceBackBlock(self.searchField.text);
        self.speiceBackBlock(self.searchField.text);

    //: }else{
    }else{

        //: [self makeToast:[PushLanguageManager getTextWithKey:@"wrong_password"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[BackgroundRandomAttribute content:[CategoryData k_detectiveName]] duration:2.0 position:CSToastPositionCenter];
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
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[CategoryData m_snapMsg]]];
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
        //: UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img1.image = [UIImage imageNamed:@"safe_success_step"];
        img1.image = [UIImage imageNamed:[CategoryData notiPractitionerTitle]];
        //: [view1 addSubview:img1];
        [view1 addSubview:img1];
//        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
//        numView1.backgroundColor = ThemeColor;
//        numView1.layer.cornerRadius = 10;
//        numView1.layer.masksToBounds = YES;
//        [view1 addSubview:numView1];
//        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
//        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
//        labtitlenum1.textColor = [UIColor whiteColor];
//        labtitlenum1.text = @"1";
//        labtitlenum1.textAlignment = NSTextAlignmentCenter;
//        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [PushLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [BackgroundRandomAttribute content:[CategoryData user_enableText]];
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
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        numView2.backgroundColor = [UIColor user:[CategoryData user_buttonName]];
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
        //: labtitle2.textColor = [UIColor blackColor];
        labtitle2.textColor = [UIColor blackColor];
        //: labtitle2.text = [PushLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [BackgroundRandomAttribute content:[CategoryData dream_cancelData]];
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
        numView3.backgroundColor = [UIColor user:[CategoryData m_messagePath]];
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
        labtitle3.textColor = [UIColor user:[CategoryData main_participateMessage]];
        //: labtitle3.text = [PushLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [BackgroundRandomAttribute content:[CategoryData dreamHospitalImageCellMsg]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[CategoryData k_colorVeteranContent]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[CategoryData k_colorVeteranContent]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}


//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.layer.borderWidth = 1;
        _searchView.layer.borderWidth = 1;
        //: _searchView.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        _searchView.layer.borderColor = [UIColor user:[CategoryData userIconSaleTitle]].CGColor;
        //: _searchView.backgroundColor = [UIColor whiteColor];
        _searchView.backgroundColor = [UIColor whiteColor];
        //: _searchView.layer.cornerRadius = 24;
        _searchView.layer.cornerRadius = 24;

        //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
        imgname.image = [UIImage imageNamed:[CategoryData noti_sodIdent]];
        //: [_searchView addSubview:imgname];
        [_searchView addSubview:imgname];

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        //: _searchField.placeholder = [PushLanguageManager getTextWithKey:@"get_pay_psw_activity_input_psw"];
        _searchField.placeholder = [BackgroundRandomAttribute content:[CategoryData user_wooContent]];
        //: _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        //: _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //: _searchField.delegate = self;
        _searchField.delegate = self;
        //: [_searchView addSubview:_searchField];
        [_searchView addSubview:_searchField];

    }
    //: return _searchView;
    return _searchView;
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
        [_closeBtn setTitleColor:[UIColor user:[CategoryData main_participateMessage]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[CategoryData kEmotionIdent]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[CategoryData main_centerMsg]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor user:[CategoryData mainInputStr]];
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
- (void)image
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

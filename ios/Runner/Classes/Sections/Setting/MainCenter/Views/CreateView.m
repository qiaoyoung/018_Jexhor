
#import <Foundation/Foundation.h>

@interface MustBubbleData : NSObject

+ (instancetype)sharedInstance;

//: safe_success_step
@property (nonatomic, copy) NSString *main_oldValue;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *userEndMustName;

//: Vertify_login_password
@property (nonatomic, copy) NSString *m_imageValue;

//: get_pay_psw_activity_input_psw
@property (nonatomic, copy) NSString *k_addData;

//: #BCC1C8
@property (nonatomic, copy) NSString *app_hideCanContent;

//: ic-delete_account
@property (nonatomic, copy) NSString *main_lengthValue;

//: Complete_operation
@property (nonatomic, copy) NSString *kEndFileText;

//: #5D5F66
@property (nonatomic, copy) NSString *noti_imageTitle;

//: safe_bind_phone_icon
@property (nonatomic, copy) NSString *appMessageOpenName;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *k_shouldValue;

//: #FF483D
@property (nonatomic, copy) NSString *noti_videoName;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *user_changeContent;

//: safe_arrow_next
@property (nonatomic, copy) NSString *k_completeContent;

//: #EEEEEE
@property (nonatomic, copy) NSString *notiParentName;

//: wrong_password
@property (nonatomic, copy) NSString *kInfoVideoData;

//: #05D481
@property (nonatomic, copy) NSString *mSuccessData;

@end

@implementation MustBubbleData

+ (instancetype)sharedInstance {
    static MustBubbleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MustBubbleDataToCache:(Byte *)data {
    int thanTable = data[0];
    Byte syllabus = data[1];
    int titleView = data[2];
    for (int i = titleView; i < titleView + thanTable; i++) {
        int value = data[i] + syllabus;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[titleView + thanTable] = 0;
    return data + titleView;
}

- (NSString *)StringFromMustBubbleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MustBubbleDataToCache:data]];
}

//: ic-delete_account
- (NSString *)main_lengthValue {
    if (!_main_lengthValue) {
        Byte value[] = {17, 40, 6, 209, 121, 58, 65, 59, 5, 60, 61, 68, 61, 76, 61, 55, 57, 59, 59, 71, 77, 70, 76, 146};
        _main_lengthValue = [self StringFromMustBubbleData:value];
    }
    return _main_lengthValue;
}

//: contact_tag_fragment_cancel
- (NSString *)user_changeContent {
    if (!_user_changeContent) {
        Byte value[] = {27, 73, 12, 98, 244, 224, 55, 139, 189, 72, 189, 249, 26, 38, 37, 43, 24, 26, 43, 22, 43, 24, 30, 22, 29, 41, 24, 30, 36, 28, 37, 43, 22, 26, 24, 37, 26, 28, 35, 89};
        _user_changeContent = [self StringFromMustBubbleData:value];
    }
    return _user_changeContent;
}

//: Read_agree_agreement
- (NSString *)userEndMustName {
    if (!_userEndMustName) {
        Byte value[] = {20, 76, 8, 156, 161, 100, 28, 37, 6, 25, 21, 24, 19, 21, 27, 38, 25, 25, 19, 21, 27, 38, 25, 25, 33, 25, 34, 40, 114};
        _userEndMustName = [self StringFromMustBubbleData:value];
    }
    return _userEndMustName;
}

//: #EEEEEE
- (NSString *)notiParentName {
    if (!_notiParentName) {
        Byte value[] = {7, 42, 10, 221, 210, 74, 233, 10, 252, 53, 249, 27, 27, 27, 27, 27, 27, 252};
        _notiParentName = [self StringFromMustBubbleData:value];
    }
    return _notiParentName;
}

//: #05D481
- (NSString *)mSuccessData {
    if (!_mSuccessData) {
        Byte value[] = {7, 37, 13, 114, 5, 227, 200, 170, 41, 151, 202, 111, 249, 254, 11, 16, 31, 15, 19, 12, 108};
        _mSuccessData = [self StringFromMustBubbleData:value];
    }
    return _mSuccessData;
}

//: Complete_operation
- (NSString *)kEndFileText {
    if (!_kEndFileText) {
        Byte value[] = {18, 33, 13, 134, 18, 251, 202, 177, 30, 252, 220, 127, 239, 34, 78, 76, 79, 75, 68, 83, 68, 62, 78, 79, 68, 81, 64, 83, 72, 78, 77, 145};
        _kEndFileText = [self StringFromMustBubbleData:value];
    }
    return _kEndFileText;
}

//: #FF483D
- (NSString *)noti_videoName {
    if (!_noti_videoName) {
        Byte value[] = {7, 6, 13, 206, 207, 74, 169, 124, 171, 194, 131, 128, 123, 29, 64, 64, 46, 50, 45, 62, 240};
        _noti_videoName = [self StringFromMustBubbleData:value];
    }
    return _noti_videoName;
}

//: contact_tag_fragment_sure
- (NSString *)k_shouldValue {
    if (!_k_shouldValue) {
        Byte value[] = {25, 67, 12, 102, 220, 121, 142, 92, 102, 124, 45, 205, 32, 44, 43, 49, 30, 32, 49, 28, 49, 30, 36, 28, 35, 47, 30, 36, 42, 34, 43, 49, 28, 48, 50, 47, 34, 54};
        _k_shouldValue = [self StringFromMustBubbleData:value];
    }
    return _k_shouldValue;
}

//: #5D5F66
- (NSString *)noti_imageTitle {
    if (!_noti_imageTitle) {
        Byte value[] = {7, 67, 12, 159, 187, 181, 221, 115, 140, 2, 3, 245, 224, 242, 1, 242, 3, 243, 243, 117};
        _noti_imageTitle = [self StringFromMustBubbleData:value];
    }
    return _noti_imageTitle;
}

//: safe_arrow_next
- (NSString *)k_completeContent {
    if (!_k_completeContent) {
        Byte value[] = {15, 90, 11, 59, 222, 174, 67, 170, 137, 160, 140, 25, 7, 12, 11, 5, 7, 24, 24, 21, 29, 5, 20, 11, 30, 26, 39};
        _k_completeContent = [self StringFromMustBubbleData:value];
    }
    return _k_completeContent;
}

//: wrong_password
- (NSString *)kInfoVideoData {
    if (!_kInfoVideoData) {
        Byte value[] = {14, 90, 11, 76, 206, 19, 240, 234, 147, 138, 11, 29, 24, 21, 20, 13, 5, 22, 7, 25, 25, 29, 21, 24, 10, 118};
        _kInfoVideoData = [self StringFromMustBubbleData:value];
    }
    return _kInfoVideoData;
}

//: #BCC1C8
- (NSString *)app_hideCanContent {
    if (!_app_hideCanContent) {
        Byte value[] = {7, 47, 5, 134, 80, 244, 19, 20, 20, 2, 20, 9, 84};
        _app_hideCanContent = [self StringFromMustBubbleData:value];
    }
    return _app_hideCanContent;
}

//: safe_bind_phone_icon
- (NSString *)appMessageOpenName {
    if (!_appMessageOpenName) {
        Byte value[] = {20, 52, 11, 114, 33, 84, 94, 192, 42, 221, 171, 63, 45, 50, 49, 43, 46, 53, 58, 48, 43, 60, 52, 59, 58, 49, 43, 53, 47, 59, 58, 93};
        _appMessageOpenName = [self StringFromMustBubbleData:value];
    }
    return _appMessageOpenName;
}

//: safe_success_step
- (NSString *)main_oldValue {
    if (!_main_oldValue) {
        Byte value[] = {17, 50, 12, 43, 159, 142, 144, 248, 153, 179, 121, 8, 65, 47, 52, 51, 45, 65, 67, 49, 49, 51, 65, 65, 45, 65, 66, 51, 62, 228};
        _main_oldValue = [self StringFromMustBubbleData:value];
    }
    return _main_oldValue;
}

//: get_pay_psw_activity_input_psw
- (NSString *)k_addData {
    if (!_k_addData) {
        Byte value[] = {30, 51, 9, 76, 145, 245, 177, 176, 57, 52, 50, 65, 44, 61, 46, 70, 44, 61, 64, 68, 44, 46, 48, 65, 54, 67, 54, 65, 70, 44, 54, 59, 61, 66, 65, 44, 61, 64, 68, 8};
        _k_addData = [self StringFromMustBubbleData:value];
    }
    return _k_addData;
}

//: Vertify_login_password
- (NSString *)m_imageValue {
    if (!_m_imageValue) {
        Byte value[] = {22, 65, 3, 21, 36, 49, 51, 40, 37, 56, 30, 43, 46, 38, 40, 45, 30, 47, 32, 50, 50, 54, 46, 49, 35, 221};
        _m_imageValue = [self StringFromMustBubbleData:value];
    }
    return _m_imageValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CreateView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountNextView.h"
#import "CreateView.h"

//: @interface ZMONDeactivateAccountNextView ()<UITextFieldDelegate>
@interface CreateView ()<UITextFieldDelegate>

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
@implementation CreateView

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
        [self initBarItem];

    }
    //: return self;
    return self;
}


//: - (void)initUI
- (void)initBarItem
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
- (void)press:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}

//: - (void)updateTheNickname{
- (void)formatAdd{

    //: [self endEditing:YES];
    [self endEditing:YES];

    //: NSString *pcode = [NIMUserDefaults standardUserDefaults].pCode?:@"";
    NSString *pcode = [SessionRecord afterUser].pCode?:@"";
    //: if([pcode isEqualToString:self.searchField.text]){
    if([pcode isEqualToString:self.searchField.text]){
        //: self.speiceBackBlock(self.searchField.text);
        self.speiceBackBlock(self.searchField.text);

    //: }else{
    }else{

        //: [self makeToast:[WorkLanguageManager getTextWithKey:@"wrong_password"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[InputRed preserve:[MustBubbleData sharedInstance].kInfoVideoData] duration:2.0 position:CSToastPositionCenter];
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[MustBubbleData sharedInstance].main_lengthValue]];
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
        img1.image = [UIImage imageNamed:[MustBubbleData sharedInstance].main_oldValue];
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
        //: labtitle1.text = [WorkLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [InputRed preserve:[MustBubbleData sharedInstance].userEndMustName];
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
        numView2.backgroundColor = [UIColor ground:[MustBubbleData sharedInstance].mSuccessData];
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
        //: labtitle2.text = [WorkLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [InputRed preserve:[MustBubbleData sharedInstance].m_imageValue];
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
        numView3.backgroundColor = [UIColor ground:[MustBubbleData sharedInstance].app_hideCanContent];
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
        labtitle3.textColor = [UIColor ground:[MustBubbleData sharedInstance].noti_imageTitle];
        //: labtitle3.text = [WorkLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [InputRed preserve:[MustBubbleData sharedInstance].kEndFileText];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[MustBubbleData sharedInstance].k_completeContent];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[MustBubbleData sharedInstance].k_completeContent];
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
        _searchView.layer.borderColor = [UIColor ground:[MustBubbleData sharedInstance].notiParentName].CGColor;
        //: _searchView.backgroundColor = [UIColor whiteColor];
        _searchView.backgroundColor = [UIColor whiteColor];
        //: _searchView.layer.cornerRadius = 24;
        _searchView.layer.cornerRadius = 24;

        //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
        imgname.image = [UIImage imageNamed:[MustBubbleData sharedInstance].appMessageOpenName];
        //: [_searchView addSubview:imgname];
        [_searchView addSubview:imgname];

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        //: _searchField.placeholder = [WorkLanguageManager getTextWithKey:@"get_pay_psw_activity_input_psw"];
        _searchField.placeholder = [InputRed preserve:[MustBubbleData sharedInstance].k_addData];
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
        [_closeBtn addTarget:self action:@selector(animationWithEnableAtHand) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor ground:[MustBubbleData sharedInstance].noti_imageTitle] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[MustBubbleData sharedInstance].user_changeContent] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(formatAdd) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WorkLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[MustBubbleData sharedInstance].k_shouldValue] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor ground:[MustBubbleData sharedInstance].noti_videoName];
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
- (void)file
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

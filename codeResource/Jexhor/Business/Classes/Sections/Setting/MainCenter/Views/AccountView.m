
#import <Foundation/Foundation.h>

typedef struct {
    Byte infoImage;
    Byte *runLow;
    unsigned int withShow;
	int thoughtImage;
} StructColorData;

@interface ColorData : NSObject

@end

@implementation ColorData

+ (Byte *)ColorDataToByte:(StructColorData *)data {
    for (int i = 0; i < data->withShow; i++) {
        data->runLow[i] ^= data->infoImage;
    }
    data->runLow[data->withShow] = 0;
	if (data->withShow >= 1) {
		data->thoughtImage = data->runLow[0];
	}
    return data->runLow;
}

+ (NSString *)StringFromColorData:(StructColorData *)data {
    return [NSString stringWithUTF8String:(char *)[self ColorDataToByte:data]];
}

//: #BCC1C8
+ (NSString *)showTargetTitle {
    /* static */ NSString *showTargetTitle = nil;
    if (!showTargetTitle) {
        StructColorData value = (StructColorData){122, (Byte []){89, 56, 57, 57, 75, 57, 66, 226}, 7, 174};
        showTargetTitle = [self StringFromColorData:&value];
    }
    return showTargetTitle;
}

//: Consequences_Account_Deletion
+ (NSString *)showAtTitle {
    /* static */ NSString *showAtTitle = nil;
    if (!showAtTitle) {
        StructColorData value = (StructColorData){142, (Byte []){205, 225, 224, 253, 235, 255, 251, 235, 224, 237, 235, 253, 209, 207, 237, 237, 225, 251, 224, 250, 209, 202, 235, 226, 235, 250, 231, 225, 224, 136}, 29, 255};
        showAtTitle = [self StringFromColorData:&value];
    }
    return showAtTitle;
}

//: #5D5F66
+ (NSString *)mOnShowData {
    /* static */ NSString *mOnShowData = nil;
    if (!mOnShowData) {
        StructColorData value = (StructColorData){59, (Byte []){24, 14, 127, 14, 125, 13, 13, 223}, 7, 186};
        mOnShowData = [self StringFromColorData:&value];
    }
    return mOnShowData;
}

//: Confirm_Account_Deletion
+ (NSString *)appTableValue {
    /* static */ NSString *appTableValue = nil;
    if (!appTableValue) {
        StructColorData value = (StructColorData){91, (Byte []){24, 52, 53, 61, 50, 41, 54, 4, 26, 56, 56, 52, 46, 53, 47, 4, 31, 62, 55, 62, 47, 50, 52, 53, 169}, 24, 149};
        appTableValue = [self StringFromColorData:&value];
    }
    return appTableValue;
}

//: login_agreement_normal
+ (NSString *)appSessionName {
    /* static */ NSString *appSessionName = nil;
    if (!appSessionName) {
        StructColorData value = (StructColorData){80, (Byte []){60, 63, 55, 57, 62, 15, 49, 55, 34, 53, 53, 61, 53, 62, 36, 15, 62, 63, 34, 61, 49, 60, 174}, 22, 177};
        appSessionName = [self StringFromColorData:&value];
    }
    return appSessionName;
}

//: Irreversible_Operation_content
+ (NSString *)kRowReadValue {
    /* static */ NSString *kRowReadValue = nil;
    if (!kRowReadValue) {
        StructColorData value = (StructColorData){6, (Byte []){79, 116, 116, 99, 112, 99, 116, 117, 111, 100, 106, 99, 89, 73, 118, 99, 116, 103, 114, 111, 105, 104, 89, 101, 105, 104, 114, 99, 104, 114, 134}, 30, 17};
        kRowReadValue = [self StringFromColorData:&value];
    }
    return kRowReadValue;
}

//: Explanation_Data_Deletion_content
+ (NSString *)kDisableValue {
    /* static */ NSString *kDisableValue = nil;
    if (!kDisableValue) {
        StructColorData value = (StructColorData){134, (Byte []){195, 254, 246, 234, 231, 232, 231, 242, 239, 233, 232, 217, 194, 231, 242, 231, 217, 194, 227, 234, 227, 242, 239, 233, 232, 217, 229, 233, 232, 242, 227, 232, 242, 215}, 33, 104};
        kDisableValue = [self StringFromColorData:&value];
    }
    return kDisableValue;
}

//: #05D481
+ (NSString *)notiTotalName {
    /* static */ NSString *notiTotalName = nil;
    if (!notiTotalName) {
        StructColorData value = (StructColorData){193, (Byte []){226, 241, 244, 133, 245, 249, 240, 61}, 7, 201};
        notiTotalName = [self StringFromColorData:&value];
    }
    return notiTotalName;
}

//: contact_tag_fragment_cancel
+ (NSString *)user_onName {
    /* static */ NSString *user_onName = nil;
    if (!user_onName) {
        StructColorData value = (StructColorData){110, (Byte []){13, 1, 0, 26, 15, 13, 26, 49, 26, 15, 9, 49, 8, 28, 15, 9, 3, 11, 0, 26, 49, 13, 15, 0, 13, 11, 2, 155}, 27, 142};
        user_onName = [self StringFromColorData:&value];
    }
    return user_onName;
}

//: safe_arrow_next
+ (NSString *)noti_pressData {
    /* static */ NSString *noti_pressData = nil;
    if (!noti_pressData) {
        StructColorData value = (StructColorData){98, (Byte []){17, 3, 4, 7, 61, 3, 16, 16, 13, 21, 61, 12, 7, 26, 22, 92}, 15, 13};
        noti_pressData = [self StringFromColorData:&value];
    }
    return noti_pressData;
}

//: ic-delete_account
+ (NSString *)kWithValue {
    /* static */ NSString *kWithValue = nil;
    if (!kWithValue) {
        StructColorData value = (StructColorData){80, (Byte []){57, 51, 125, 52, 53, 60, 53, 36, 53, 15, 49, 51, 51, 63, 37, 62, 36, 235}, 17, 71};
        kWithValue = [self StringFromColorData:&value];
    }
    return kWithValue;
}

//: Vertify_login_password
+ (NSString *)appDisableData {
    /* static */ NSString *appDisableData = nil;
    if (!appDisableData) {
        StructColorData value = (StructColorData){135, (Byte []){209, 226, 245, 243, 238, 225, 254, 216, 235, 232, 224, 238, 233, 216, 247, 230, 244, 244, 240, 232, 245, 227, 125}, 22, 246};
        appDisableData = [self StringFromColorData:&value];
    }
    return appDisableData;
}

//: Explanation_Data_Deletion
+ (NSString *)k_scaleValue {
    /* static */ NSString *k_scaleValue = nil;
    if (!k_scaleValue) {
        StructColorData value = (StructColorData){82, (Byte []){23, 42, 34, 62, 51, 60, 51, 38, 59, 61, 60, 13, 22, 51, 38, 51, 13, 22, 55, 62, 55, 38, 59, 61, 60, 224}, 25, 142};
        k_scaleValue = [self StringFromColorData:&value];
    }
    return k_scaleValue;
}

//: login_agreement_press
+ (NSString *)noti_targetThanName {
    /* static */ NSString *noti_targetThanName = nil;
    if (!noti_targetThanName) {
        StructColorData value = (StructColorData){138, (Byte []){230, 229, 237, 227, 228, 213, 235, 237, 248, 239, 239, 231, 239, 228, 254, 213, 250, 248, 239, 249, 249, 223}, 21, 77};
        noti_targetThanName = [self StringFromColorData:&value];
    }
    return noti_targetThanName;
}

//: Consequences_Account_Deletion_content
+ (NSString *)userTextData {
    /* static */ NSString *userTextData = nil;
    if (!userTextData) {
        StructColorData value = (StructColorData){93, (Byte []){30, 50, 51, 46, 56, 44, 40, 56, 51, 62, 56, 46, 2, 28, 62, 62, 50, 40, 51, 41, 2, 25, 56, 49, 56, 41, 52, 50, 51, 2, 62, 50, 51, 41, 56, 51, 41, 223}, 37, 227};
        userTextData = [self StringFromColorData:&value];
    }
    return userTextData;
}

//: #333333
+ (NSString *)show_endData {
    /* static */ NSString *show_endData = nil;
    if (!show_endData) {
        StructColorData value = (StructColorData){66, (Byte []){97, 113, 113, 113, 113, 113, 113, 175}, 7, 35};
        show_endData = [self StringFromColorData:&value];
    }
    return show_endData;
}

//: Complete_operation
+ (NSString *)k_changeName {
    /* static */ NSString *k_changeName = nil;
    if (!k_changeName) {
        StructColorData value = (StructColorData){32, (Byte []){99, 79, 77, 80, 76, 69, 84, 69, 127, 79, 80, 69, 82, 65, 84, 73, 79, 78, 6}, 18, 213};
        k_changeName = [self StringFromColorData:&value];
    }
    return k_changeName;
}

//: activity_comment_setting_cancel_account
+ (NSString *)app_addText {
    /* static */ NSString *app_addText = nil;
    if (!app_addText) {
        StructColorData value = (StructColorData){234, (Byte []){139, 137, 158, 131, 156, 131, 158, 147, 181, 137, 133, 135, 135, 143, 132, 158, 181, 153, 143, 158, 158, 131, 132, 141, 181, 137, 139, 132, 137, 143, 134, 181, 139, 137, 137, 133, 159, 132, 158, 123}, 39, 49};
        app_addText = [self StringFromColorData:&value];
    }
    return app_addText;
}

//: agree_account_deletion_terms
+ (NSString *)notiSizeData {
    /* static */ NSString *notiSizeData = nil;
    if (!notiSizeData) {
        StructColorData value = (StructColorData){144, (Byte []){241, 247, 226, 245, 245, 207, 241, 243, 243, 255, 229, 254, 228, 207, 244, 245, 252, 245, 228, 249, 255, 254, 207, 228, 245, 226, 253, 227, 131}, 28, 151};
        notiSizeData = [self StringFromColorData:&value];
    }
    return notiSizeData;
}

//: contact_tag_fragment_sure
+ (NSString *)mCommentOldSuccessValue {
    /* static */ NSString *mCommentOldSuccessValue = nil;
    if (!mCommentOldSuccessValue) {
        StructColorData value = (StructColorData){76, (Byte []){47, 35, 34, 56, 45, 47, 56, 19, 56, 45, 43, 19, 42, 62, 45, 43, 33, 41, 34, 56, 19, 63, 57, 62, 41, 224}, 25, 242};
        mCommentOldSuccessValue = [self StringFromColorData:&value];
    }
    return mCommentOldSuccessValue;
}

//: Read_agree_agreement
+ (NSString *)mThreadMakeData {
    /* static */ NSString *mThreadMakeData = nil;
    if (!mThreadMakeData) {
        StructColorData value = (StructColorData){184, (Byte []){234, 221, 217, 220, 231, 217, 223, 202, 221, 221, 231, 217, 223, 202, 221, 221, 213, 221, 214, 204, 66}, 20, 69};
        mThreadMakeData = [self StringFromColorData:&value];
    }
    return mThreadMakeData;
}

//: #2C3042
+ (NSString *)noti_bubbleTargetValue {
    /* static */ NSString *noti_bubbleTargetValue = nil;
    if (!noti_bubbleTargetValue) {
        StructColorData value = (StructColorData){205, (Byte []){238, 255, 142, 254, 253, 249, 255, 77}, 7, 10};
        noti_bubbleTargetValue = [self StringFromColorData:&value];
    }
    return noti_bubbleTargetValue;
}

//: Irreversible_Operation
+ (NSString *)user_needItemName {
    /* static */ NSString *user_needItemName = nil;
    if (!user_needItemName) {
        StructColorData value = (StructColorData){125, (Byte []){52, 15, 15, 24, 11, 24, 15, 14, 20, 31, 17, 24, 34, 50, 13, 24, 15, 28, 9, 20, 18, 19, 147}, 22, 19};
        user_needItemName = [self StringFromColorData:&value];
    }
    return user_needItemName;
}

//: #FF483D
+ (NSString *)appParentName {
    /* static */ NSString *appParentName = nil;
    if (!appParentName) {
        StructColorData value = (StructColorData){223, (Byte []){252, 153, 153, 235, 231, 236, 155, 193}, 7, 174};
        appParentName = [self StringFromColorData:&value];
    }
    return appParentName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeleteAccountView.h"
#import "AccountView.h"

//: @interface ZMONDeleteAccountView ()<UITextFieldDelegate>
@interface AccountView ()<UITextFieldDelegate>

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
@implementation AccountView

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
        [self initActivity];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initActivity{
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
    labtitle.textColor = [UIColor ground:[ColorData noti_bubbleTargetValue]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Confirm_Account_Deletion"];
    labtitle.text = [InputRed preserve:[ColorData appTableValue]];
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
- (void)formatAdd{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[InputRed preserve:[ColorData mThreadMakeData]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self animationWithEnableAtHand];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(dateTitle)]) {
        //: [self.delegate didTouchDeleteNextButton];
        [self.delegate dateTitle];
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
        _titleLabel.textColor = [UIColor ground:[ColorData noti_bubbleTargetValue]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [InputRed preserve:[ColorData app_addText]];
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ColorData kWithValue]]];
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
        numView1.backgroundColor = [UIColor ground:[ColorData notiTotalName]];
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
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [InputRed preserve:[ColorData mThreadMakeData]];
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
        numView2.backgroundColor = [UIColor ground:[ColorData showTargetTitle]];
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
        labtitle2.textColor = [UIColor ground:[ColorData mOnShowData]];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [InputRed preserve:[ColorData appDisableData]];
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
        numView3.backgroundColor = [UIColor ground:[ColorData showTargetTitle]];
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
        labtitle3.textColor = [UIColor ground:[ColorData mOnShowData]];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [InputRed preserve:[ColorData k_changeName]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[ColorData noti_pressData]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[ColorData noti_pressData]];
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
        labtitle1.textColor = [UIColor ground:[ColorData show_endData]];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Account_Deletion"];
        labtitle1.text = [InputRed preserve:[ColorData showAtTitle]];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor ground:[ColorData show_endData]];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Account_Deletion_content"];
        labsubtitle1.text = [InputRed preserve:[ColorData userTextData]];
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
        labtitle2.textColor = [UIColor ground:[ColorData show_endData]];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Explanation_Data_Deletion"];
        labtitle2.text = [InputRed preserve:[ColorData k_scaleValue]];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor ground:[ColorData show_endData]];
        //: labsubtitle2.text = [FFFLanguageManager getTextWithKey:@"Explanation_Data_Deletion_content"];
        labsubtitle2.text = [InputRed preserve:[ColorData kDisableValue]];
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
        labtitle3.textColor = [UIColor ground:[ColorData show_endData]];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Irreversible_Operation"];
        labtitle3.text = [InputRed preserve:[ColorData user_needItemName]];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor ground:[ColorData show_endData]];
        //: labsubtitle3.text = [FFFLanguageManager getTextWithKey:@"Irreversible_Operation_content"];
        labsubtitle3.text = [InputRed preserve:[ColorData kRowReadValue]];
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
        [_agreementButton setImage:[UIImage imageNamed:[ColorData appSessionName]] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[ColorData noti_targetThanName]] forState:UIControlStateSelected];
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

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"agree_account_deletion_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[InputRed preserve:[ColorData notiSizeData]]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor ground:[ColorData noti_bubbleTargetValue]] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor ground:[ColorData noti_bubbleTargetValue]] range:(NSRange){0,[tncString length]}];
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
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(voiceEmpty)]) {
        //: [self.delegate didTouchDeleteProtocolButton];
        [self.delegate voiceEmpty];
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
        [_closeBtn setTitleColor:[UIColor ground:[ColorData mOnShowData]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[InputRed preserve:[ColorData user_onName]] forState:UIControlStateNormal];
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
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[InputRed preserve:[ColorData mCommentOldSuccessValue]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor ground:[ColorData appParentName]];
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
- (void)appear
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end
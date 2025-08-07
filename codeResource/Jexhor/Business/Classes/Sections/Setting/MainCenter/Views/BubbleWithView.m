
#import <Foundation/Foundation.h>

typedef struct {
    Byte detective;
    Byte *hostile;
    unsigned int venueTeam;
	int empireProfession;
	int streetSmart;
	int custodyShow;
} StructResembleData;

@interface ResembleData : NSObject

@end

@implementation ResembleData

+ (Byte *)ResembleDataToByte:(StructResembleData *)data {
    for (int i = 0; i < data->venueTeam; i++) {
        data->hostile[i] ^= data->detective;
    }
    data->hostile[data->venueTeam] = 0;
	if (data->venueTeam >= 3) {
		data->empireProfession = data->hostile[0];
		data->streetSmart = data->hostile[1];
		data->custodyShow = data->hostile[2];
	}
    return data->hostile;
}

+ (NSString *)StringFromResembleData:(StructResembleData *)data {
    return [NSString stringWithUTF8String:(char *)[self ResembleDataToByte:data]];
}

//: #5D5F66
+ (NSString *)user_recipientUrl {
    /* static */ NSString *user_recipientUrl = nil;
    if (!user_recipientUrl) {
        StructResembleData value = (StructResembleData){234, (Byte []){201, 223, 174, 223, 172, 220, 220, 62}, 7, 6, 160, 94};
        user_recipientUrl = [self StringFromResembleData:&value];
    }
    return user_recipientUrl;
}

//: #2C3042
+ (NSString *)mainEmotionId {
    /* static */ NSString *mainEmotionId = nil;
    if (!mainEmotionId) {
        StructResembleData value = (StructResembleData){3, (Byte []){32, 49, 64, 48, 51, 55, 49, 172}, 7, 181, 77, 63};
        mainEmotionId = [self StringFromResembleData:&value];
    }
    return mainEmotionId;
}

//: account_delete_tip2
+ (NSString *)user_infoEthnicName {
    /* static */ NSString *user_infoEthnicName = nil;
    if (!user_infoEthnicName) {
        StructResembleData value = (StructResembleData){235, (Byte []){138, 136, 136, 132, 158, 133, 159, 180, 143, 142, 135, 142, 159, 142, 180, 159, 130, 155, 217, 169}, 19, 147, 45, 213};
        user_infoEthnicName = [self StringFromResembleData:&value];
    }
    return user_infoEthnicName;
}

//: activity_comment_setting_cancel_account
+ (NSString *)kNorthernValue {
    /* static */ NSString *kNorthernValue = nil;
    if (!kNorthernValue) {
        StructResembleData value = (StructResembleData){102, (Byte []){7, 5, 18, 15, 16, 15, 18, 31, 57, 5, 9, 11, 11, 3, 8, 18, 57, 21, 3, 18, 18, 15, 8, 1, 57, 5, 7, 8, 5, 3, 10, 57, 7, 5, 5, 9, 19, 8, 18, 117}, 39, 24, 103, 165};
        kNorthernValue = [self StringFromResembleData:&value];
    }
    return kNorthernValue;
}

//: #333333
+ (NSString *)app_cellName {
    /* static */ NSString *app_cellName = nil;
    if (!app_cellName) {
        StructResembleData value = (StructResembleData){165, (Byte []){134, 150, 150, 150, 150, 150, 150, 240}, 7, 7, 34, 98};
        app_cellName = [self StringFromResembleData:&value];
    }
    return app_cellName;
}

//: contact_tag_fragment_sure
+ (NSString *)dreamButtonPath {
    /* static */ NSString *dreamButtonPath = nil;
    if (!dreamButtonPath) {
        StructResembleData value = (StructResembleData){96, (Byte []){3, 15, 14, 20, 1, 3, 20, 63, 20, 1, 7, 63, 6, 18, 1, 7, 13, 5, 14, 20, 63, 19, 21, 18, 5, 164}, 25, 121, 174, 127};
        dreamButtonPath = [self StringFromResembleData:&value];
    }
    return dreamButtonPath;
}

//: #FF483D
+ (NSString *)showJuryPath {
    /* static */ NSString *showJuryPath = nil;
    if (!showJuryPath) {
        StructResembleData value = (StructResembleData){160, (Byte []){131, 230, 230, 148, 152, 147, 228, 73}, 7, 47, 178, 119};
        showJuryPath = [self StringFromResembleData:&value];
    }
    return showJuryPath;
}

//: account_delete_tip1
+ (NSString *)notiWonderfulPath {
    /* static */ NSString *notiWonderfulPath = nil;
    if (!notiWonderfulPath) {
        StructResembleData value = (StructResembleData){59, (Byte []){90, 88, 88, 84, 78, 85, 79, 100, 95, 94, 87, 94, 79, 94, 100, 79, 82, 75, 10, 10}, 19, 44, 71, 6};
        notiWonderfulPath = [self StringFromResembleData:&value];
    }
    return notiWonderfulPath;
}

//: contact_tag_fragment_cancel
+ (NSString *)dreamTheaterDisplayMessage {
    /* static */ NSString *dreamTheaterDisplayMessage = nil;
    if (!dreamTheaterDisplayMessage) {
        StructResembleData value = (StructResembleData){72, (Byte []){43, 39, 38, 60, 41, 43, 60, 23, 60, 41, 47, 23, 46, 58, 41, 47, 37, 45, 38, 60, 23, 43, 41, 38, 43, 45, 36, 232}, 27, 85, 101, 83};
        dreamTheaterDisplayMessage = [self StringFromResembleData:&value];
    }
    return dreamTheaterDisplayMessage;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleWithView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "BubbleWithView.h"

//: @interface DeleteAccountTipView ()
@interface BubbleWithView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;

//: @end
@end

//: @implementation DeleteAccountTipView
@implementation BubbleWithView

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
        [self initView];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initView{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);


    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}



//: - (void)handleSubmit
- (void)threadTitle
{
    //: [self animationClose];
    [self nearAdd];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(disableButton)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate disableButton];
    }

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
        _titleLabel.textColor = [UIColor user:[ResembleData mainEmotionId]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [PushLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [BackgroundRandomAttribute content:[ResembleData kNorthernValue]];
    }
    //: return _titleLabel;
    return _titleLabel;
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
        //: labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor user:[ResembleData app_cellName]];
        //: labtitle1.text = [PushLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [BackgroundRandomAttribute content:[ResembleData notiWonderfulPath]];
        //: labtitle1.numberOfLines = 0;
        labtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: [labtitle1 sizeToFit];
        [labtitle1 sizeToFit];

        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor user:[ResembleData app_cellName]];
        //: labsubtitle1.text = [PushLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [BackgroundRandomAttribute content:[ResembleData user_infoEthnicName]];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

    }
    //: return _contentBox;
    return _contentBox;
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
        [_closeBtn setTitleColor:[UIColor user:[ResembleData user_recipientUrl]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[BackgroundRandomAttribute content:[ResembleData dreamTheaterDisplayMessage]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(threadTitle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[BackgroundRandomAttribute content:[ResembleData dreamButtonPath]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor user:[ResembleData showJuryPath]];
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
- (void)version
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

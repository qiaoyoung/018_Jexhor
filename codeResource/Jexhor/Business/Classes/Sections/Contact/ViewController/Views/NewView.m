
#import <Foundation/Foundation.h>

typedef struct {
    Byte bubbleComplete;
    Byte *patched;
    unsigned int shouldParent;
	int remove;
} StructVanguardData;

@interface VanguardData : NSObject

+ (instancetype)sharedInstance;

//: qrcode_activity_title
@property (nonatomic, copy) NSString *notiRowData;

//: wc_scan_mine_qrcode
@property (nonatomic, copy) NSString *k_sendName;

//: wc_scan_album
@property (nonatomic, copy) NSString *dreamMediaData;

//: activity_qrcode_scan_me
@property (nonatomic, copy) NSString *appOldContent;

//: wc_scan_torch
@property (nonatomic, copy) NSString *dream_successData;

//: wc_scan_torch_hl
@property (nonatomic, copy) NSString *dream_disableName;

//: message_send_album
@property (nonatomic, copy) NSString *appLabelValue;

@end

@implementation VanguardData

+ (instancetype)sharedInstance {
    static VanguardData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VanguardDataToByte:(StructVanguardData *)data {
    for (int i = 0; i < data->shouldParent; i++) {
        data->patched[i] ^= data->bubbleComplete;
    }
    data->patched[data->shouldParent] = 0;
	if (data->shouldParent >= 1) {
		data->remove = data->patched[0];
	}
    return data->patched;
}

- (NSString *)StringFromVanguardData:(StructVanguardData *)data {
    return [NSString stringWithUTF8String:(char *)[self VanguardDataToByte:data]];
}

//: activity_qrcode_scan_me
- (NSString *)appOldContent {
    if (!_appOldContent) {
        StructVanguardData value = (StructVanguardData){211, (Byte []){178, 176, 167, 186, 165, 186, 167, 170, 140, 162, 161, 176, 188, 183, 182, 140, 160, 176, 178, 189, 140, 190, 182, 249}, 23, 84};
        _appOldContent = [self StringFromVanguardData:&value];
    }
    return _appOldContent;
}

//: wc_scan_torch_hl
- (NSString *)dream_disableName {
    if (!_dream_disableName) {
        StructVanguardData value = (StructVanguardData){83, (Byte []){36, 48, 12, 32, 48, 50, 61, 12, 39, 60, 33, 48, 59, 12, 59, 63, 207}, 16, 61};
        _dream_disableName = [self StringFromVanguardData:&value];
    }
    return _dream_disableName;
}

//: message_send_album
- (NSString *)appLabelValue {
    if (!_appLabelValue) {
        StructVanguardData value = (StructVanguardData){231, (Byte []){138, 130, 148, 148, 134, 128, 130, 184, 148, 130, 137, 131, 184, 134, 139, 133, 146, 138, 70}, 18, 181};
        _appLabelValue = [self StringFromVanguardData:&value];
    }
    return _appLabelValue;
}

//: wc_scan_torch
- (NSString *)dream_successData {
    if (!_dream_successData) {
        StructVanguardData value = (StructVanguardData){19, (Byte []){100, 112, 76, 96, 112, 114, 125, 76, 103, 124, 97, 112, 123, 114}, 13, 231};
        _dream_successData = [self StringFromVanguardData:&value];
    }
    return _dream_successData;
}

//: qrcode_activity_title
- (NSString *)notiRowData {
    if (!_notiRowData) {
        StructVanguardData value = (StructVanguardData){232, (Byte []){153, 154, 139, 135, 140, 141, 183, 137, 139, 156, 129, 158, 129, 156, 145, 183, 156, 129, 156, 132, 141, 79}, 21, 18};
        _notiRowData = [self StringFromVanguardData:&value];
    }
    return _notiRowData;
}

//: wc_scan_mine_qrcode
- (NSString *)k_sendName {
    if (!_k_sendName) {
        StructVanguardData value = (StructVanguardData){128, (Byte []){247, 227, 223, 243, 227, 225, 238, 223, 237, 233, 238, 229, 223, 241, 242, 227, 239, 228, 229, 52}, 19, 40};
        _k_sendName = [self StringFromVanguardData:&value];
    }
    return _k_sendName;
}

//: wc_scan_album
- (NSString *)dreamMediaData {
    if (!_dreamMediaData) {
        StructVanguardData value = (StructVanguardData){99, (Byte []){20, 0, 60, 16, 0, 2, 13, 60, 2, 15, 1, 22, 14, 49}, 13, 231};
        _dreamMediaData = [self StringFromVanguardData:&value];
    }
    return _dreamMediaData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NewView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONScanToolBar.h"
#import "NewView.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"

//: @interface ZMONScanToolBar ()
@interface NewView ()
//: @property (nonatomic, strong) UIButton *torchBtn;
@property (nonatomic, strong) UIButton *torchBtn;
//: @property (nonatomic, strong) UILabel *tipsLab;
@property (nonatomic, strong) UILabel *tipsLab;
//: @property (nonatomic, strong) UIImageView *qrcodeImgView;
@property (nonatomic, strong) UIImageView *qrcodeImgView;
//: @property (nonatomic, strong) UILabel *qrcodeLab;
@property (nonatomic, strong) UILabel *qrcodeLab;
//: @property (nonatomic, strong) UIImageView *albumImgView;
@property (nonatomic, strong) UIImageView *albumImgView;
//: @property (nonatomic, strong) UILabel *albumLab;
@property (nonatomic, strong) UILabel *albumLab;
//: @end
@end

//: @implementation ZMONScanToolBar
@implementation NewView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {

        //: [self addSubview:self.torchBtn];
        [self addSubview:self.torchBtn];

        //: [self addSubview:self.tipsLab];
        [self addSubview:self.tipsLab];

        //: [self addSubview:self.qrcodeImgView];
        [self addSubview:self.qrcodeImgView];

        //: [self addSubview:self.qrcodeLab];
        [self addSubview:self.qrcodeLab];

        //: [self addSubview:self.albumImgView];
        [self addSubview:self.albumImgView];

        //: [self addSubview:self.albumLab];
        [self addSubview:self.albumLab];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: CGFloat tBtn_w = 50;
    CGFloat tBtn_w = 50;
    //: CGFloat tBtn_h = 70;
    CGFloat tBtn_h = 70;
    //: CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    //: CGFloat tBtn_y = 0;
    CGFloat tBtn_y = 0;
    //: self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);
    self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);

    //: CGFloat tipsLab_w = self.frame.size.width;
    CGFloat tipsLab_w = self.frame.size.width;
    //: CGFloat tipsLab_h = 15;
    CGFloat tipsLab_h = 15;
    //: CGFloat tipsLab_x = 0;
    CGFloat tipsLab_x = 0;
    //: CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    //: self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);
    self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);

    //: CGFloat qrLab_w = 150;
    CGFloat qrLab_w = 150;
    //: CGFloat qrLab_h = 12;
    CGFloat qrLab_h = 12;
    //: CGFloat qrLab_x = 0;
    CGFloat qrLab_x = 0;
    //: CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    //: self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);
    self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);

    //: CGFloat qrImgView_w = 50;
    CGFloat qrImgView_w = 50;
    //: CGFloat qrImgView_h = 50;
    CGFloat qrImgView_h = 50;
    //: CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    //: CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    //: self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);
    self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);

    //: CGFloat alLab_w = qrLab_w;
    CGFloat alLab_w = qrLab_w;
    //: CGFloat alLab_h = qrLab_h;
    CGFloat alLab_h = qrLab_h;
    //: CGFloat alLab_x = self.frame.size.width - alLab_w;
    CGFloat alLab_x = self.frame.size.width - alLab_w;
    //: CGFloat alLab_y = qrLab_y;
    CGFloat alLab_y = qrLab_y;
    //: self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);
    self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);

    //: CGFloat alImgView_w = qrImgView_w;
    CGFloat alImgView_w = qrImgView_w;
    //: CGFloat alImgView_h = qrImgView_h;
    CGFloat alImgView_h = qrImgView_h;
    //: CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    //: CGFloat alImgView_y = qrImgView_y;
    CGFloat alImgView_y = qrImgView_y;
    //: self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);
    self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);

    //: self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    //: self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
}

//: - (UIButton *)torchBtn {
- (UIButton *)torchBtn {
    //: if (!_torchBtn) {
    if (!_torchBtn) {
        //: _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_torchBtn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [_torchBtn setBackgroundImage:[UIImage imageNamed:[VanguardData sharedInstance].dream_successData] forState:(UIControlStateNormal)];
        //: [_torchBtn addTarget:self action:@selector(torchBtn_action:) forControlEvents:(UIControlEventTouchUpInside)];
        [_torchBtn addTarget:self action:@selector(showwed:) forControlEvents:(UIControlEventTouchUpInside)];
        //: _torchBtn.hidden = YES;
        _torchBtn.hidden = YES;
    }
    //: return _torchBtn;
    return _torchBtn;
}

//: - (void)torchBtn_action:(UIButton *)btn {
- (void)showwed:(UIButton *)btn {
    //: if (btn.selected) {
    if (btn.selected) {
        //: btn.selected = NO;
        btn.selected = NO;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:[VanguardData sharedInstance].dream_successData] forState:(UIControlStateNormal)];
        //: [SGTorch turnOffTorch];
        [SandwichRange onYear];
    //: } else {
    } else {
        //: btn.selected = YES;
        btn.selected = YES;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch_hl"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:[VanguardData sharedInstance].dream_disableName] forState:(UIControlStateNormal)];
        //: [SGTorch turnOnTorch];
        [SandwichRange imageBackground];
    }
}

//: - (UILabel *)tipsLab {
- (UILabel *)tipsLab {
    //: if (!_tipsLab) {
    if (!_tipsLab) {
        //: _tipsLab = [[UILabel alloc] init];
        _tipsLab = [[UILabel alloc] init];
        //: _tipsLab.text = [WorkLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
        _tipsLab.text = [InputRed preserve:[VanguardData sharedInstance].appOldContent];
//        _tipsLab.text = @"将二维码放入扫面框内";
        //: _tipsLab.textAlignment = NSTextAlignmentCenter;
        _tipsLab.textAlignment = NSTextAlignmentCenter;
        //: _tipsLab.textColor = [UIColor whiteColor];
        _tipsLab.textColor = [UIColor whiteColor];
        //: _tipsLab.font = [UIFont systemFontOfSize:17];
        _tipsLab.font = [UIFont systemFontOfSize:17];
    }
    //: return _tipsLab;
    return _tipsLab;
}

//: - (UIImageView *)qrcodeImgView {
- (UIImageView *)qrcodeImgView {
    //: if (!_qrcodeImgView) {
    if (!_qrcodeImgView) {
        //: _qrcodeImgView = [[UIImageView alloc] init];
        _qrcodeImgView = [[UIImageView alloc] init];
        //: _qrcodeImgView.userInteractionEnabled = YES;
        _qrcodeImgView.userInteractionEnabled = YES;
        //: _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _qrcodeImgView.image = [UIImage imageNamed:@"wc_scan_mine_qrcode"];
        _qrcodeImgView.image = [UIImage imageNamed:[VanguardData sharedInstance].k_sendName];
    }
    //: return _qrcodeImgView;
    return _qrcodeImgView;
}

//: - (UILabel *)qrcodeLab {
- (UILabel *)qrcodeLab {
    //: if (!_qrcodeLab) {
    if (!_qrcodeLab) {
        //: _qrcodeLab = [[UILabel alloc] init];
        _qrcodeLab = [[UILabel alloc] init];
        //: _qrcodeLab.text = [WorkLanguageManager getTextWithKey:@"qrcode_activity_title"];
        _qrcodeLab.text = [InputRed preserve:[VanguardData sharedInstance].notiRowData];
        //: _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        //: _qrcodeLab.textColor = [UIColor whiteColor];
        _qrcodeLab.textColor = [UIColor whiteColor];
        //: _qrcodeLab.font = [UIFont systemFontOfSize:13];
        _qrcodeLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _qrcodeLab;
    return _qrcodeLab;
}

//: - (UIImageView *)albumImgView {
- (UIImageView *)albumImgView {
    //: if (!_albumImgView) {
    if (!_albumImgView) {
        //: _albumImgView = [[UIImageView alloc] init];
        _albumImgView = [[UIImageView alloc] init];
        //: _albumImgView.userInteractionEnabled = YES;
        _albumImgView.userInteractionEnabled = YES;
        //: _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _albumImgView.image = [UIImage imageNamed:@"wc_scan_album"];
        _albumImgView.image = [UIImage imageNamed:[VanguardData sharedInstance].dreamMediaData];
    }
    //: return _albumImgView;
    return _albumImgView;
}

//: - (UILabel *)albumLab {
- (UILabel *)albumLab {
    //: if (!_albumLab) {
    if (!_albumLab) {
        //: _albumLab = [[UILabel alloc] init];
        _albumLab = [[UILabel alloc] init];
        //: _albumLab.text = [WorkLanguageManager getTextWithKey:@"message_send_album"];
        _albumLab.text = [InputRed preserve:[VanguardData sharedInstance].appLabelValue];
        //: _albumLab.textAlignment = NSTextAlignmentCenter;
        _albumLab.textAlignment = NSTextAlignmentCenter;
        //: _albumLab.textColor = [UIColor whiteColor];
        _albumLab.textColor = [UIColor whiteColor];
        //: _albumLab.font = [UIFont systemFontOfSize:13];
        _albumLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _albumLab;
    return _albumLab;
}

//: - (void)showTorch {
- (void)value {
    //: self.torchBtn.hidden = NO;
    self.torchBtn.hidden = NO;
    //: self.tipsLab.hidden = YES;
    self.tipsLab.hidden = YES;
}
//: - (void)dismissTorch {
- (void)disoblige {
    //: if (!self.torchBtn.isSelected) {
    if (!self.torchBtn.isSelected) {
        //: self.torchBtn.hidden = YES;
        self.torchBtn.hidden = YES;
        //: self.tipsLab.hidden = NO;
        self.tipsLab.hidden = NO;
    }
}

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction {
- (void)addOffArea:(id)aTarget listing:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.qrcodeImgView addGestureRecognizer:tap];
    [self.qrcodeImgView addGestureRecognizer:tap];
}
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction {
- (void)groupDiscussion:(id)aTarget press:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.albumImgView addGestureRecognizer:tap];
    [self.albumImgView addGestureRecognizer:tap];
}

//: @end
@end


#import <Foundation/Foundation.h>

@interface LabelData : NSObject

+ (instancetype)sharedInstance;

//: /wallet/isAcceptRed
@property (nonatomic, copy) NSString *show_drinkingValue;

//: 查看红包
@property (nonatomic, copy) NSString *notiSuccessName;

//: from_
@property (nonatomic, copy) NSString *appColorText;

//: normal
@property (nonatomic, copy) NSString *noti_tableValue;

//: 领取红包
@property (nonatomic, copy) NSString *mainQuickName;

//: pressed
@property (nonatomic, copy) NSString *main_cousinData;

//: icon_redpacket_
@property (nonatomic, copy) NSString *mHighlightName;

//: data
@property (nonatomic, copy) NSString *dreamSeverCrowdedData;

//: isaccept
@property (nonatomic, copy) NSString *kPressName;

//: redid
@property (nonatomic, copy) NSString *showShouldTitle;

//: icon_redpacket_custom
@property (nonatomic, copy) NSString *notiCrowdedText;

@end

@implementation LabelData

+ (instancetype)sharedInstance {
    static LabelData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LabelDataToCache:(Byte *)data {
    int lengthHide = data[0];
    Byte deploy = data[1];
    int buttonImage = data[2];
    for (int i = buttonImage; i < buttonImage + lengthHide; i++) {
        int value = data[i] + deploy;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[buttonImage + lengthHide] = 0;
    return data + buttonImage;
}

- (NSString *)StringFromLabelData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LabelDataToCache:data]];
}

//: redid
- (NSString *)showShouldTitle {
    if (!_showShouldTitle) {
        Byte value[] = {5, 82, 5, 73, 129, 32, 19, 18, 23, 18, 148};
        _showShouldTitle = [self StringFromLabelData:value];
    }
    return _showShouldTitle;
}

//: icon_redpacket_custom
- (NSString *)notiCrowdedText {
    if (!_notiCrowdedText) {
        Byte value[] = {21, 90, 12, 29, 158, 16, 201, 126, 212, 112, 144, 108, 15, 9, 21, 20, 5, 24, 11, 10, 22, 7, 9, 17, 11, 26, 5, 9, 27, 25, 26, 21, 19, 12};
        _notiCrowdedText = [self StringFromLabelData:value];
    }
    return _notiCrowdedText;
}

//: /wallet/isAcceptRed
- (NSString *)show_drinkingValue {
    if (!_show_drinkingValue) {
        Byte value[] = {19, 67, 10, 90, 70, 69, 8, 194, 177, 213, 236, 52, 30, 41, 41, 34, 49, 236, 38, 48, 254, 32, 32, 34, 45, 49, 15, 34, 33, 16};
        _show_drinkingValue = [self StringFromLabelData:value];
    }
    return _show_drinkingValue;
}

//: 领取红包
- (NSString *)mainQuickName {
    if (!_mainQuickName) {
        Byte value[] = {12, 33, 3, 200, 129, 101, 196, 110, 117, 198, 153, 129, 196, 107, 100, 138};
        _mainQuickName = [self StringFromLabelData:value];
    }
    return _mainQuickName;
}

//: icon_redpacket_
- (NSString *)mHighlightName {
    if (!_mHighlightName) {
        Byte value[] = {15, 68, 13, 149, 228, 225, 228, 248, 235, 46, 95, 196, 173, 37, 31, 43, 42, 27, 46, 33, 32, 44, 29, 31, 39, 33, 48, 27, 68};
        _mHighlightName = [self StringFromLabelData:value];
    }
    return _mHighlightName;
}

//: from_
- (NSString *)appColorText {
    if (!_appColorText) {
        Byte value[] = {5, 71, 3, 31, 43, 40, 38, 24, 193};
        _appColorText = [self StringFromLabelData:value];
    }
    return _appColorText;
}

//: 查看红包
- (NSString *)notiSuccessName {
    if (!_notiSuccessName) {
        Byte value[] = {12, 96, 9, 233, 57, 158, 150, 25, 129, 134, 63, 69, 135, 60, 43, 135, 90, 66, 133, 44, 37, 70};
        _notiSuccessName = [self StringFromLabelData:value];
    }
    return _notiSuccessName;
}

//: normal
- (NSString *)noti_tableValue {
    if (!_noti_tableValue) {
        Byte value[] = {6, 72, 3, 38, 39, 42, 37, 25, 36, 30};
        _noti_tableValue = [self StringFromLabelData:value];
    }
    return _noti_tableValue;
}

//: pressed
- (NSString *)main_cousinData {
    if (!_main_cousinData) {
        Byte value[] = {7, 5, 6, 189, 35, 184, 107, 109, 96, 110, 110, 96, 95, 244};
        _main_cousinData = [self StringFromLabelData:value];
    }
    return _main_cousinData;
}

//: isaccept
- (NSString *)kPressName {
    if (!_kPressName) {
        Byte value[] = {8, 38, 7, 77, 219, 15, 216, 67, 77, 59, 61, 61, 63, 74, 78, 99};
        _kPressName = [self StringFromLabelData:value];
    }
    return _kPressName;
}

//: data
- (NSString *)dreamSeverCrowdedData {
    if (!_dreamSeverCrowdedData) {
        Byte value[] = {4, 46, 4, 44, 54, 51, 70, 51, 39};
        _dreamSeverCrowdedData = [self StringFromLabelData:value];
    }
    return _dreamSeverCrowdedData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CleanControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "CleanControl.h"
//: #import "NTESRedPacketAttachment.h"
#import "ItemViewAttachment.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const appBackTitle = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface CleanControl()

//: @property (nonatomic ,strong) UIImageView *redPacketImage;
@property (nonatomic ,strong) UIImageView *redPacketImage;

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *descLabel;

//: @property (nonatomic, strong) UIView *whiteView;
@property (nonatomic, strong) UIView *whiteView;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

//: @end
@end

//: @implementation NTESSessionRedPacketContentView
@implementation CleanControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initViewKey{
    //: self = [super initSessionMessageContentView];
    self = [super initViewKey];
    //: if (self) {
    if (self) {
        // 内容布局
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:12.f];
//        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _subTitleLabel.font = [UIFont systemFontOfSize:12.f];
//        _descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _descLabel.font = [UIFont systemFontOfSize:13.f];

        //: _redPacketImage = [[UIImageView alloc] init];
        _redPacketImage = [[UIImageView alloc] init];
        //: _redPacketImage.clipsToBounds = YES;
        _redPacketImage.clipsToBounds = YES;
        //: _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        //: _redPacketImage.image = [UIImage imageNamed:@"icon_redpacket_custom"];
        _redPacketImage.image = [UIImage imageNamed:[LabelData sharedInstance].notiCrowdedText];
        //: _redPacketImage.layer.masksToBounds = YES;
        _redPacketImage.layer.masksToBounds = YES;
        //: _redPacketImage.layer.cornerRadius = 10;
        _redPacketImage.layer.cornerRadius = 10;

        //: _whiteView = [[UIView alloc] init];
        _whiteView = [[UIView alloc] init];
        //: _whiteView.userInteractionEnabled = NO;
        _whiteView.userInteractionEnabled = NO;
        //: _whiteView.backgroundColor = [UIColor whiteColor];
        _whiteView.backgroundColor = [UIColor whiteColor];
        //: _whiteView.alpha = 0.5;
        _whiteView.alpha = 0.5;
        //: _whiteView.hidden = YES;
        _whiteView.hidden = YES;

        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;

        //: [self addSubview:_redPacketImage];
        [self addSubview:_redPacketImage];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [self addSubview:_subTitleLabel];
        [self addSubview:_subTitleLabel];
        //: [self addSubview:_descLabel];
        [self addSubview:_descLabel];
        //: [self addSubview:_whiteView];
        [self addSubview:_whiteView];

    }
    //: return self;
    return self;
}


//: - (void)onTouchUpInside:(id)sender
- (void)recorded:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(aboveImage:)]) {
        //: WorkKitEvent *event = [[WorkKitEvent alloc] init];
        WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = appBackTitle;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate aboveImage:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(WorkMessageModel*)data{
- (void)panorama:(ShowModel*)data{
    //: [super refresh:data];
    [super panorama:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    ItemViewAttachment *attachment = (ItemViewAttachment *)object.attachment;

    //: self.titleLabel.text = attachment.title;
    self.titleLabel.text = attachment.title;
    //: self.descLabel.text = attachment.content;
    self.descLabel.text = attachment.content;

    //: self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    //: self.subTitleLabel.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
    //: self.descLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];

    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: CGRect rect = self.titleLabel.frame;
    CGRect rect = self.titleLabel.frame;
    //: if (CGRectGetMaxX(rect) > self.bounds.size.width)
    if (CGRectGetMaxX(rect) > self.bounds.size.width)
    {
        //: rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        //: self.titleLabel.frame = rect;
        self.titleLabel.frame = rect;
    }
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".ntes_localized : @"领取红包".ntes_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? [LabelData sharedInstance].notiSuccessName.shouldLocalized : [LabelData sharedInstance].mainQuickName.shouldLocalized;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[[LabelData sharedInstance].showShouldTitle] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[LabelData sharedInstance].show_drinkingValue] queryedBlockOf:dict managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict objectColor:[LabelData sharedInstance].dreamSeverCrowdedData];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict route:[LabelData sharedInstance].kPressName];
        //: if (isaccept.integerValue == 0) {
        if (isaccept.integerValue == 0) {
            //: _whiteView.hidden = YES;
            _whiteView.hidden = YES;
        //: }else{
        }else{
            //: _whiteView.hidden = NO;
            _whiteView.hidden = NO;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    //: _whiteView.frame = CGRectMake(0, 0, 160, 180);
    _whiteView.frame = CGRectMake(0, 0, 160, 180);

    //: BOOL outgoing = self.model.message.isOutgoingMsg;
    BOOL outgoing = self.model.message.isOutgoingMsg;
    //: if (outgoing)
    if (outgoing)
    {
        //: self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
    }
    //: else
    else
    {
        //: self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
    }
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)text:(UIControlState)state on:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? [LabelData sharedInstance].noti_tableValue : [LabelData sharedInstance].main_cousinData;
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = [LabelData sharedInstance].mHighlightName;
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:[LabelData sharedInstance].appColorText];
    }
    //: else
    else
    {
        //: imageName = [imageName stringByAppendingString:@"to_"];
        imageName = [imageName stringByAppendingString:@"to_"];
    }
    //: imageName = [imageName stringByAppendingString:stateString];
    imageName = [imageName stringByAppendingString:stateString];
    //: return [UIImage imageNamed:imageName];
    return [UIImage imageNamed:imageName];
}

//: @end
@end


#import <Foundation/Foundation.h>

@interface RandomInfoData : NSObject

@end

@implementation RandomInfoData

+ (Byte *)RandomInfoDataToCache:(Byte *)data {
    int electionCommission = data[0];
    int storageWhich = data[1];
    for (int i = 0; i < electionCommission / 2; i++) {
        int begin = storageWhich + i;
        int end = storageWhich + electionCommission - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[storageWhich + electionCommission] = 0;
    return data + storageWhich;
}

+ (NSString *)StringFromRandomInfoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RandomInfoDataToCache:data]];
}  

//: normal
+ (NSString *)userEconomicalKey {
    /* static */ NSString *userEconomicalKey = nil;
    if (!userEconomicalKey) {
        Byte value[] = {6, 6, 98, 73, 7, 4, 108, 97, 109, 114, 111, 110, 139};
        userEconomicalKey = [self StringFromRandomInfoData:value];
    }
    return userEconomicalKey;
}

//: /wallet/isAcceptRed
+ (NSString *)showCostlyStr {
    /* static */ NSString *showCostlyStr = nil;
    if (!showCostlyStr) {
        Byte value[] = {19, 7, 37, 92, 225, 129, 48, 100, 101, 82, 116, 112, 101, 99, 99, 65, 115, 105, 47, 116, 101, 108, 108, 97, 119, 47, 173};
        showCostlyStr = [self StringFromRandomInfoData:value];
    }
    return showCostlyStr;
}

//: 领取红包
+ (NSString *)notiCertaintyFormat {
    /* static */ NSString *notiCertaintyFormat = nil;
    if (!notiCertaintyFormat) {
        Byte value[] = {12, 3, 180, 133, 140, 229, 162, 186, 231, 150, 143, 229, 134, 162, 233, 150};
        notiCertaintyFormat = [self StringFromRandomInfoData:value];
    }
    return notiCertaintyFormat;
}

//: from_
+ (NSString *)k_listenerCenterValue {
    /* static */ NSString *k_listenerCenterValue = nil;
    if (!k_listenerCenterValue) {
        Byte value[] = {5, 6, 12, 196, 93, 140, 95, 109, 111, 114, 102, 255};
        k_listenerCenterValue = [self StringFromRandomInfoData:value];
    }
    return k_listenerCenterValue;
}

//: data
+ (NSString *)k_legallyIdent {
    /* static */ NSString *k_legallyIdent = nil;
    if (!k_legallyIdent) {
        Byte value[] = {4, 10, 136, 69, 194, 242, 111, 188, 14, 73, 97, 116, 97, 100, 66};
        k_legallyIdent = [self StringFromRandomInfoData:value];
    }
    return k_legallyIdent;
}

//: pressed
+ (NSString *)app_showName {
    /* static */ NSString *app_showName = nil;
    if (!app_showName) {
        Byte value[] = {7, 5, 101, 237, 36, 100, 101, 115, 115, 101, 114, 112, 204};
        app_showName = [self StringFromRandomInfoData:value];
    }
    return app_showName;
}

//: 查看红包
+ (NSString *)dreamOurKey {
    /* static */ NSString *dreamOurKey = nil;
    if (!dreamOurKey) {
        Byte value[] = {12, 2, 133, 140, 229, 162, 186, 231, 139, 156, 231, 165, 159, 230, 20};
        dreamOurKey = [self StringFromRandomInfoData:value];
    }
    return dreamOurKey;
}

//: isaccept
+ (NSString *)userReinforceSlatMessage {
    /* static */ NSString *userReinforceSlatMessage = nil;
    if (!userReinforceSlatMessage) {
        Byte value[] = {8, 4, 239, 43, 116, 112, 101, 99, 99, 97, 115, 105, 61};
        userReinforceSlatMessage = [self StringFromRandomInfoData:value];
    }
    return userReinforceSlatMessage;
}

//: icon_redpacket_
+ (NSString *)k_teamMessage {
    /* static */ NSString *k_teamMessage = nil;
    if (!k_teamMessage) {
        Byte value[] = {15, 12, 243, 119, 1, 210, 213, 243, 97, 158, 60, 52, 95, 116, 101, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 81};
        k_teamMessage = [self StringFromRandomInfoData:value];
    }
    return k_teamMessage;
}

//: redid
+ (NSString *)main_messageMoralMsg {
    /* static */ NSString *main_messageMoralMsg = nil;
    if (!main_messageMoralMsg) {
        Byte value[] = {5, 7, 236, 23, 235, 219, 91, 100, 105, 100, 101, 114, 82};
        main_messageMoralMsg = [self StringFromRandomInfoData:value];
    }
    return main_messageMoralMsg;
}

//: icon_redpacket_custom
+ (NSString *)show_childContent {
    /* static */ NSString *show_childContent = nil;
    if (!show_childContent) {
        Byte value[] = {21, 11, 116, 209, 47, 147, 187, 187, 210, 129, 113, 109, 111, 116, 115, 117, 99, 95, 116, 101, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 198};
        show_childContent = [self StringFromRandomInfoData:value];
    }
    return show_childContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexView.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "IndexView.h"
//: #import "NTESRedPacketAttachment.h"
#import "PacketImage.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const appCenterIdent = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface IndexView()

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
@implementation IndexView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initAssemblage{
    //: self = [super initSessionMessageContentView];
    self = [super initAssemblage];
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
        _redPacketImage.image = [UIImage imageNamed:[RandomInfoData show_childContent]];
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
- (void)played:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(parametering:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        BeforeEvent *event = [[BeforeEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = appCenterIdent;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate parametering:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(FFFMessageModel*)data{
- (void)name:(PurseModel*)data{
    //: [super refresh:data];
    [super name:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    PacketImage *attachment = (PacketImage *)object.attachment;

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
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? [RandomInfoData dreamOurKey].ting : [RandomInfoData notiCertaintyFormat].ting;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[[RandomInfoData main_messageMoralMsg]] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[RandomInfoData showCostlyStr]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict already:[RandomInfoData k_legallyIdent]];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict index:[RandomInfoData userReinforceSlatMessage]];
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
    } file:^(id responseObject, NSError *error) {

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
- (UIImage *)link:(UIControlState)state array:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? [RandomInfoData userEconomicalKey] : [RandomInfoData app_showName];
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = [RandomInfoData k_teamMessage];
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:[RandomInfoData k_listenerCenterValue]];
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
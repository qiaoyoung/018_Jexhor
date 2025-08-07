
#import <Foundation/Foundation.h>

@interface TurfData : NSObject

+ (instancetype)sharedInstance;

//: custom_msg_ken
@property (nonatomic, copy) NSString *main_tickData;

//: data
@property (nonatomic, copy) NSString *k_theaterIconValue;

//: custom_msg_pon
@property (nonatomic, copy) NSString *showEqualUrl;

//: custom_msg_jan
@property (nonatomic, copy) NSString *main_whichKey;

//: value
@property (nonatomic, copy) NSString *app_teamUserValue;

//: type
@property (nonatomic, copy) NSString *mButtIdent;

@end

@implementation TurfData

+ (instancetype)sharedInstance {
    static TurfData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TurfDataToCache:(Byte *)data {
    int saleIcon = data[0];
    Byte cellSub = data[1];
    int technology = data[2];
    for (int i = technology; i < technology + saleIcon; i++) {
        int value = data[i] - cellSub;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[technology + saleIcon] = 0;
    return data + technology;
}

- (NSString *)StringFromTurfData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TurfDataToCache:data]];
}

//: data
- (NSString *)k_theaterIconValue {
    if (!_k_theaterIconValue) {
        Byte value[] = {4, 64, 8, 238, 78, 123, 200, 222, 164, 161, 180, 161, 80};
        _k_theaterIconValue = [self StringFromTurfData:value];
    }
    return _k_theaterIconValue;
}

//: type
- (NSString *)mButtIdent {
    if (!_mButtIdent) {
        Byte value[] = {4, 54, 9, 179, 134, 17, 151, 95, 135, 170, 175, 166, 155, 85};
        _mButtIdent = [self StringFromTurfData:value];
    }
    return _mButtIdent;
}

//: value
- (NSString *)app_teamUserValue {
    if (!_app_teamUserValue) {
        Byte value[] = {5, 3, 3, 121, 100, 111, 120, 104, 234};
        _app_teamUserValue = [self StringFromTurfData:value];
    }
    return _app_teamUserValue;
}

//: custom_msg_ken
- (NSString *)main_tickData {
    if (!_main_tickData) {
        Byte value[] = {14, 64, 12, 26, 104, 100, 120, 30, 117, 48, 28, 94, 163, 181, 179, 180, 175, 173, 159, 173, 179, 167, 159, 171, 165, 174, 201};
        _main_tickData = [self StringFromTurfData:value];
    }
    return _main_tickData;
}

//: custom_msg_pon
- (NSString *)showEqualUrl {
    if (!_showEqualUrl) {
        Byte value[] = {14, 95, 11, 178, 125, 179, 209, 153, 212, 93, 108, 194, 212, 210, 211, 206, 204, 190, 204, 210, 198, 190, 207, 206, 205, 182};
        _showEqualUrl = [self StringFromTurfData:value];
    }
    return _showEqualUrl;
}

//: custom_msg_jan
- (NSString *)main_whichKey {
    if (!_main_whichKey) {
        Byte value[] = {14, 98, 8, 233, 214, 230, 13, 10, 197, 215, 213, 214, 209, 207, 193, 207, 213, 201, 193, 204, 195, 208, 190};
        _main_whichKey = [self StringFromTurfData:value];
    }
    return _main_whichKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "SizeAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation SizeAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{[TurfData sharedInstance].mButtIdent : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           [TurfData sharedInstance].k_theaterIconValue : @{[TurfData sharedInstance].app_teamUserValue:@(self.value)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)chemicalElementName:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"ElectControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)visualPercept:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:[TurfData sharedInstance].main_whichKey];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:[TurfData sharedInstance].main_tickData];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:[TurfData sharedInstance].showEqualUrl];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (BOOL)canBeRevoked
- (BOOL)section
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)pageContent
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)descriptionned:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end
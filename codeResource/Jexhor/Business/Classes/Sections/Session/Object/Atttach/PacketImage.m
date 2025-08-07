
#import <Foundation/Foundation.h>

@interface RelaxData : NSObject

+ (instancetype)sharedInstance;

//: type
@property (nonatomic, copy) NSString *m_atMsg;

//: content
@property (nonatomic, copy) NSString *kFarIdent;

//: data
@property (nonatomic, copy) NSString *mainCancelName;

//: redPacketId
@property (nonatomic, copy) NSString *m_statusUrl;

//: title
@property (nonatomic, copy) NSString *mainInputPath;

//: redPacketSendID
@property (nonatomic, copy) NSString *app_alienTitle;

@end

@implementation RelaxData

+ (instancetype)sharedInstance {
    static RelaxData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RelaxDataToCache:(Byte *)data {
    int compartmentEqual = data[0];
    Byte photographer = data[1];
    int hospitalMax = data[2];
    for (int i = hospitalMax; i < hospitalMax + compartmentEqual; i++) {
        int value = data[i] + photographer;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[hospitalMax + compartmentEqual] = 0;
    return data + hospitalMax;
}

- (NSString *)StringFromRelaxData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RelaxDataToCache:data]];
}

//: content
- (NSString *)kFarIdent {
    if (!_kFarIdent) {
        Byte value[] = {7, 68, 12, 39, 241, 204, 163, 168, 83, 199, 201, 251, 31, 43, 42, 48, 33, 42, 48, 21};
        _kFarIdent = [self StringFromRelaxData:value];
    }
    return _kFarIdent;
}

//: data
- (NSString *)mainCancelName {
    if (!_mainCancelName) {
        Byte value[] = {4, 25, 6, 157, 104, 93, 75, 72, 91, 72, 234};
        _mainCancelName = [self StringFromRelaxData:value];
    }
    return _mainCancelName;
}

//: redPacketId
- (NSString *)m_statusUrl {
    if (!_m_statusUrl) {
        Byte value[] = {11, 7, 9, 252, 43, 72, 209, 175, 220, 107, 94, 93, 73, 90, 92, 100, 94, 109, 66, 93, 10};
        _m_statusUrl = [self StringFromRelaxData:value];
    }
    return _m_statusUrl;
}

//: type
- (NSString *)m_atMsg {
    if (!_m_atMsg) {
        Byte value[] = {4, 91, 4, 241, 25, 30, 21, 10, 233};
        _m_atMsg = [self StringFromRelaxData:value];
    }
    return _m_atMsg;
}

//: title
- (NSString *)mainInputPath {
    if (!_mainInputPath) {
        Byte value[] = {5, 84, 8, 100, 108, 168, 138, 203, 32, 21, 32, 24, 17, 226};
        _mainInputPath = [self StringFromRelaxData:value];
    }
    return _mainInputPath;
}

//: redPacketSendID
- (NSString *)app_alienTitle {
    if (!_app_alienTitle) {
        Byte value[] = {15, 65, 5, 121, 225, 49, 36, 35, 15, 32, 34, 42, 36, 51, 18, 36, 45, 35, 8, 3, 21};
        _app_alienTitle = [self StringFromRelaxData:value];
    }
    return _app_alienTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PacketImage.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "PacketImage.h"

//: @implementation NTESRedPacketAttachment
@implementation PacketImage

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  [RelaxData sharedInstance].mainInputPath : self.title,
                                  //: @"content" : self.content,
                                  [RelaxData sharedInstance].kFarIdent : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  [RelaxData sharedInstance].m_statusUrl : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  [RelaxData sharedInstance].app_alienTitle : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{[RelaxData sharedInstance].m_atMsg: @(CustomMessageTypeRedPacket), [RelaxData sharedInstance].mainCancelName: dictContent};
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)visualPercept:(NIMMessage *)message {
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = 5.f;
    CGFloat bubbleArrowWidthForImage = 5.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: }else{
    }else{
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)chemicalElementName:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"IndexView";
}

//: - (BOOL)canBeForwarded
- (BOOL)pageContent
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)section
{
    //: return NO;
    return NO;
}


//: @end
@end

#import <Foundation/Foundation.h>

@interface IllegalData : NSObject

@end

@implementation IllegalData

+ (Byte *)IllegalDataToCache:(Byte *)data {
    int weekAssault = data[0];
    Byte sever = data[1];
    int viewAfternoon = data[2];
    for (int i = viewAfternoon; i < viewAfternoon + weekAssault; i++) {
        int value = data[i] + sever;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[viewAfternoon + weekAssault] = 0;
    return data + viewAfternoon;
}

+ (NSString *)StringFromIllegalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self IllegalDataToCache:data]];
}

//: redPacketSendID
+ (NSString *)showShouldContent {
    /* static */ NSString *showShouldContent = nil;
    if (!showShouldContent) {
        Byte value[] = {15, 48, 6, 216, 253, 142, 66, 53, 52, 32, 49, 51, 59, 53, 68, 35, 53, 62, 52, 25, 20, 42};
        showShouldContent = [self StringFromIllegalData:value];
    }
    return showShouldContent;
}

//: title
+ (NSString *)k_highlightName {
    /* static */ NSString *k_highlightName = nil;
    if (!k_highlightName) {
        Byte value[] = {5, 92, 13, 1, 103, 167, 21, 127, 229, 46, 131, 162, 119, 24, 13, 24, 16, 9, 48};
        k_highlightName = [self StringFromIllegalData:value];
    }
    return k_highlightName;
}

//: data
+ (NSString *)dream_journalistTitle {
    /* static */ NSString *dream_journalistTitle = nil;
    if (!dream_journalistTitle) {
        Byte value[] = {4, 84, 4, 212, 16, 13, 32, 13, 246};
        dream_journalistTitle = [self StringFromIllegalData:value];
    }
    return dream_journalistTitle;
}

//: content
+ (NSString *)dream_lengthTitle {
    /* static */ NSString *dream_lengthTitle = nil;
    if (!dream_lengthTitle) {
        Byte value[] = {7, 49, 13, 185, 85, 33, 45, 12, 157, 212, 132, 111, 28, 50, 62, 61, 67, 52, 61, 67, 174};
        dream_lengthTitle = [self StringFromIllegalData:value];
    }
    return dream_lengthTitle;
}

//: type
+ (NSString *)userChangeContent {
    /* static */ NSString *userChangeContent = nil;
    if (!userChangeContent) {
        Byte value[] = {4, 5, 7, 162, 124, 88, 204, 111, 116, 107, 96, 217};
        userChangeContent = [self StringFromIllegalData:value];
    }
    return userChangeContent;
}

//: redPacketId
+ (NSString *)user_sizeMilkData {
    /* static */ NSString *user_sizeMilkData = nil;
    if (!user_sizeMilkData) {
        Byte value[] = {11, 89, 9, 226, 58, 110, 233, 231, 238, 25, 12, 11, 247, 8, 10, 18, 12, 27, 240, 11, 66};
        user_sizeMilkData = [self StringFromIllegalData:value];
    }
    return user_sizeMilkData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemViewAttachment.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "ItemViewAttachment.h"

//: @implementation NTESRedPacketAttachment
@implementation ItemViewAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  [IllegalData k_highlightName] : self.title,
                                  //: @"content" : self.content,
                                  [IllegalData dream_lengthTitle] : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  [IllegalData user_sizeMilkData] : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  [IllegalData showShouldContent] : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{[IllegalData userChangeContent]: @(CustomMessageTypeRedPacket), [IllegalData dream_journalistTitle]: dictContent};
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
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)key:(NIMMessage *)message {
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
- (NSString *)provider:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"CleanControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)session
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)bearOn
{
    //: return NO;
    return NO;
}


//: @end
@end
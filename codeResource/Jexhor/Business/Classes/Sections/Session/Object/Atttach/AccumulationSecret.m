
#import <Foundation/Foundation.h>

NSString *StringFromInfluentialData(Byte *data);


//: 领取了你的红包，你的红包已被领完
Byte userButtPath[] = {45, 48, 96, 14, 103, 156, 115, 212, 194, 120, 208, 142, 178, 242, 73, 2, 230, 69, 239, 246, 68, 26, 230, 68, 29, 0, 71, 250, 228, 71, 26, 2, 69, 236, 229, 79, 28, 236, 68, 29, 0, 71, 250, 228, 71, 26, 2, 69, 236, 229, 69, 23, 18, 72, 2, 11, 73, 2, 230, 69, 14, 236, 140};

//: openPacketId
Byte mTitleUrl[] = {93, 12, 42, 13, 149, 214, 132, 61, 210, 186, 246, 237, 245, 153, 154, 143, 152, 122, 139, 141, 149, 143, 158, 115, 142, 244};

//: isGetDone
Byte dreamHostileName[] = {11, 9, 83, 11, 57, 132, 176, 240, 224, 241, 216, 188, 198, 154, 184, 199, 151, 194, 193, 184, 85};

//: 你领取了自己的红包，你的红包已被领完
Byte main_errName[] = {6, 54, 96, 6, 135, 169, 68, 29, 0, 73, 2, 230, 69, 239, 246, 68, 26, 230, 72, 231, 10, 69, 23, 17, 71, 250, 228, 71, 26, 2, 69, 236, 229, 79, 28, 236, 68, 29, 0, 71, 250, 228, 71, 26, 2, 69, 236, 229, 69, 23, 18, 72, 2, 11, 73, 2, 230, 69, 14, 236, 6};

//: 你领取了自己的红包
Byte userVeteranTitleMsg[] = {5, 27, 85, 6, 205, 208, 57, 18, 245, 62, 247, 219, 58, 228, 235, 57, 15, 219, 61, 220, 255, 58, 12, 6, 60, 239, 217, 60, 15, 247, 58, 225, 218, 119};

//: type
Byte dream_itselfUrl[] = {80, 4, 55, 13, 36, 80, 49, 40, 129, 200, 252, 17, 139, 171, 176, 167, 156, 140};

//: 你领取了
Byte dreamYinMessage[] = {22, 12, 65, 12, 209, 164, 55, 62, 110, 84, 181, 91, 37, 254, 225, 42, 227, 199, 38, 208, 215, 37, 251, 199, 48};

//: redPacketId
Byte m_directStr[] = {43, 11, 57, 5, 179, 171, 158, 157, 137, 154, 156, 164, 158, 173, 130, 157, 45};

//: 领取了你的红包
Byte appBlueName[] = {25, 21, 30, 13, 129, 253, 64, 56, 49, 145, 109, 169, 240, 7, 192, 164, 3, 173, 180, 2, 216, 164, 2, 219, 190, 5, 184, 162, 5, 216, 192, 3, 170, 163, 74};

//: sendPacketId
Byte notiStorageMsg[] = {22, 12, 80, 10, 192, 5, 210, 214, 145, 191, 195, 181, 190, 180, 160, 177, 179, 187, 181, 196, 153, 180, 248};

//: data
Byte notiPickFormat[] = {44, 4, 95, 9, 24, 107, 236, 85, 72, 195, 192, 211, 192, 70};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccumulationSecret.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "AccumulationSecret.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "M80AttributedLabel.h"
#import "InsertView.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"

//: @interface NTESRedPacketTipAttachment()
@interface AccumulationSecret()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation AccumulationSecret

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  StringFromInfluentialData(notiStorageMsg) : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  StringFromInfluentialData(mTitleUrl) : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  StringFromInfluentialData(m_directStr) : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  StringFromInfluentialData(dreamHostileName) : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{StringFromInfluentialData(dream_itselfUrl): @(CustomMessageTypeRedPacketTip), StringFromInfluentialData(notiPickFormat): dictContent};

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


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    InsertView *label = [[InsertView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label gift:self.menuOn];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Secret highlight].config.family;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)formatedMessage{
- (NSString *)menuOn{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = StringFromInfluentialData(main_errName).ting;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = StringFromInfluentialData(userVeteranTitleMsg).ting;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: PushKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        DataTeam * sendUserInfo = [[Secret highlight] infoAndStraddleOption:self.sendPacketId item:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       StringFromInfluentialData(dreamYinMessage).ting,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".ting];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: PushKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        DataTeam * openUserInfo = [[Secret highlight] infoAndStraddleOption:self.openPacketId item:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".ntes_localized];
                           StringFromInfluentialData(userButtPath).ting];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           StringFromInfluentialData(appBlueName).ting];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)visualPercept:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)chemicalElementName:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"MemoryControl";
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

Byte * InfluentialDataToCache(Byte *data) {
    int detectiveRecipient = data[0];
    int putOn = data[1];
    Byte panRandom = data[2];
    int dramaticallyInvestor = data[3];
    if (!detectiveRecipient) return data + dramaticallyInvestor;
    for (int i = dramaticallyInvestor; i < dramaticallyInvestor + putOn; i++) {
        int value = data[i] - panRandom;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dramaticallyInvestor + putOn] = 0;
    return data + dramaticallyInvestor;
}

NSString *StringFromInfluentialData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)InfluentialDataToCache(data)];
}

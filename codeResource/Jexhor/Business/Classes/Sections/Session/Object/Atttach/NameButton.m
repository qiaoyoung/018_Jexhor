
#import <Foundation/Foundation.h>
typedef struct {
    Byte mioticDrug;
    Byte *discerp;
    unsigned int ache;
    Byte drugGiving;
	int cousinThread;
	int portion;
	int thanPlace;
} TimePeriodData;

NSString *StringFromTimePeriodData(TimePeriodData *data);


//: 领取了你的红包，你的红包已被领完
TimePeriodData k_givingText = (TimePeriodData){128, (Byte []){105, 34, 6, 101, 15, 22, 100, 58, 6, 100, 61, 32, 103, 26, 4, 103, 58, 34, 101, 12, 5, 111, 60, 12, 100, 61, 32, 103, 26, 4, 103, 58, 34, 101, 12, 5, 101, 55, 50, 104, 34, 43, 105, 34, 6, 101, 46, 12, 74}, 48, 215, 115, 94, 8};

//: redPacketId
TimePeriodData mItsText = (TimePeriodData){98, (Byte []){16, 7, 6, 50, 3, 1, 9, 7, 22, 43, 6, 24}, 11, 162, 8, 141, 246};

//: data
TimePeriodData m_thanText = (TimePeriodData){125, (Byte []){25, 28, 9, 28, 124}, 4, 218, 164, 166, 50};

//: isGetDone
TimePeriodData mainHandleValue = (TimePeriodData){42, (Byte []){67, 89, 109, 79, 94, 110, 69, 68, 79, 188}, 9, 180, 133, 201, 1};

//: 你领取了自己的红包
TimePeriodData notiTowerValue = (TimePeriodData){124, (Byte []){152, 193, 220, 149, 222, 250, 153, 243, 234, 152, 198, 250, 148, 251, 214, 153, 203, 205, 155, 230, 248, 155, 198, 222, 153, 240, 249, 233}, 27, 212, 67, 42, 97};

//: type
TimePeriodData mRemoveName = (TimePeriodData){52, (Byte []){64, 77, 68, 81, 251}, 4, 179, 110, 202, 109};

//: 你领取了
TimePeriodData mainUndertakeTitle = (TimePeriodData){64, (Byte []){164, 253, 224, 169, 226, 198, 165, 207, 214, 164, 250, 198, 17}, 12, 214, 209, 62, 237};

//: sendPacketId
TimePeriodData userOmitValue = (TimePeriodData){111, (Byte []){28, 10, 1, 11, 63, 14, 12, 4, 10, 27, 38, 11, 165}, 12, 231, 201, 209, 240};

//: 你领取了自己的红包，你的红包已被领完
TimePeriodData dream_accountData = (TimePeriodData){45, (Byte []){201, 144, 141, 196, 143, 171, 200, 162, 187, 201, 151, 171, 197, 170, 135, 200, 154, 156, 202, 183, 169, 202, 151, 143, 200, 161, 168, 194, 145, 161, 201, 144, 141, 202, 183, 169, 202, 151, 143, 200, 161, 168, 200, 154, 159, 197, 143, 134, 196, 143, 171, 200, 131, 161, 161}, 54, 182, 163, 248, 193};

//: openPacketId
TimePeriodData dreamParentData = (TimePeriodData){160, (Byte []){207, 208, 197, 206, 240, 193, 195, 203, 197, 212, 233, 196, 140}, 12, 172, 27, 76, 13};

//: 领取了你的红包
TimePeriodData dream_pollutionData = (TimePeriodData){201, (Byte []){32, 107, 79, 44, 70, 95, 45, 115, 79, 45, 116, 105, 46, 83, 77, 46, 115, 107, 44, 69, 76, 97}, 21, 226, 13, 1, 13};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameButton.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "NameButton.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"

//: @interface NTESRedPacketTipAttachment()
@interface NameButton()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation NameButton

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  StringFromTimePeriodData(&userOmitValue) : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  StringFromTimePeriodData(&dreamParentData) : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  StringFromTimePeriodData(&mItsText) : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  StringFromTimePeriodData(&mainHandleValue) : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{StringFromTimePeriodData(&mRemoveName): @(CustomMessageTypeRedPacketTip), StringFromTimePeriodData(&m_thanText): dictContent};

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
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    VideoTextView *label = [[VideoTextView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label bubbleTitle:self.incandescenceLine];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [MessageContent secretResolution].config.close;
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
- (NSString *)incandescenceLine{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
    RangeOption *option = [[RangeOption alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = StringFromTimePeriodData(&dream_accountData).shouldLocalized;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = StringFromTimePeriodData(&notiTowerValue).shouldLocalized;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: WorkKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        ConfirmationInfo * sendUserInfo = [[MessageContent secretResolution] recent:self.sendPacketId blue:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       StringFromTimePeriodData(&mainUndertakeTitle).shouldLocalized,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".shouldLocalized];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: WorkKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        ConfirmationInfo * openUserInfo = [[MessageContent secretResolution] recent:self.openPacketId blue:option];
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
                           StringFromTimePeriodData(&k_givingText).shouldLocalized];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           StringFromTimePeriodData(&dream_pollutionData).shouldLocalized];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)key:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)provider:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"PacketTextView";
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

Byte *TimePeriodDataToByte(TimePeriodData *data) {
    if (data->drugGiving < 130) return data->discerp;
    for (int i = 0; i < data->ache; i++) {
        data->discerp[i] ^= data->mioticDrug;
    }
    data->discerp[data->ache] = 0;
    data->drugGiving = 5;
	if (data->ache >= 3) {
		data->cousinThread = data->discerp[0];
		data->portion = data->discerp[1];
		data->thanPlace = data->discerp[2];
	}
    return data->discerp;
}

NSString *StringFromTimePeriodData(TimePeriodData *data) {
    return [NSString stringWithUTF8String:(char *)TimePeriodDataToByte(data)];
}


#import <Foundation/Foundation.h>

@interface BeastData : NSObject

+ (instancetype)sharedInstance;

//: message_guess
@property (nonatomic, copy) NSString *app_placeValue;

//: message_red_packet
@property (nonatomic, copy) NSString *noti_assaultValue;

//: home_fragment_bai
@property (nonatomic, copy) NSString *notiViewText;

//: group_card
@property (nonatomic, copy) NSString *main_weekReadData;

//: home_fragment_liao
@property (nonatomic, copy) NSString *userKeepData;

//: person_card
@property (nonatomic, copy) NSString *userImageAtData;

//: home_fragment_yue
@property (nonatomic, copy) NSString *dream_mailTitle;

@end

@implementation BeastData

+ (instancetype)sharedInstance {
    static BeastData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BeastDataToCache:(Byte *)data {
    int beastInfoGaze = data[0];
    int disableQuantityellectual = data[1];
    for (int i = 0; i < beastInfoGaze / 2; i++) {
        int begin = disableQuantityellectual + i;
        int end = disableQuantityellectual + beastInfoGaze - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[disableQuantityellectual + beastInfoGaze] = 0;
    return data + disableQuantityellectual;
}

- (NSString *)StringFromBeastData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BeastDataToCache:data]];
}  

//: group_card
- (NSString *)main_weekReadData {
    if (!_main_weekReadData) {
        Byte value[] = {10, 5, 11, 69, 233, 100, 114, 97, 99, 95, 112, 117, 111, 114, 103, 69};
        _main_weekReadData = [self StringFromBeastData:value];
    }
    return _main_weekReadData;
}

//: message_guess
- (NSString *)app_placeValue {
    if (!_app_placeValue) {
        Byte value[] = {13, 5, 230, 161, 238, 115, 115, 101, 117, 103, 95, 101, 103, 97, 115, 115, 101, 109, 141};
        _app_placeValue = [self StringFromBeastData:value];
    }
    return _app_placeValue;
}

//: person_card
- (NSString *)userImageAtData {
    if (!_userImageAtData) {
        Byte value[] = {11, 7, 178, 14, 130, 83, 213, 100, 114, 97, 99, 95, 110, 111, 115, 114, 101, 112, 170};
        _userImageAtData = [self StringFromBeastData:value];
    }
    return _userImageAtData;
}

//: message_red_packet
- (NSString *)noti_assaultValue {
    if (!_noti_assaultValue) {
        Byte value[] = {18, 3, 233, 116, 101, 107, 99, 97, 112, 95, 100, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 148};
        _noti_assaultValue = [self StringFromBeastData:value];
    }
    return _noti_assaultValue;
}

//: home_fragment_liao
- (NSString *)userKeepData {
    if (!_userKeepData) {
        Byte value[] = {18, 10, 74, 95, 150, 45, 67, 202, 82, 214, 111, 97, 105, 108, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 49};
        _userKeepData = [self StringFromBeastData:value];
    }
    return _userKeepData;
}

//: home_fragment_bai
- (NSString *)notiViewText {
    if (!_notiViewText) {
        Byte value[] = {17, 6, 84, 242, 29, 127, 105, 97, 98, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 210};
        _notiViewText = [self StringFromBeastData:value];
    }
    return _notiViewText;
}

//: home_fragment_yue
- (NSString *)dream_mailTitle {
    if (!_dream_mailTitle) {
        Byte value[] = {17, 8, 78, 215, 48, 31, 2, 32, 101, 117, 121, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 219};
        _dream_mailTitle = [self StringFromBeastData:value];
    }
    return _dream_mailTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowTitleButton.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "ShowTitleButton.h"
//: #import "WorkMessageUtil.h"
#import "WithUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "InputAttachment.h"

//: @implementation NTESMessageUtil
@implementation ShowTitleButton

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)dataTitle:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self bubble:message];
    //: } else {
    } else {
        //: text = [WorkMessageUtil messageContent:message];
        text = [WithUtil mailSession:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)bubble:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[PassePartoutAccount class]])
    {
        //: text = [WorkLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [InputRed preserve:[BeastData sharedInstance].dream_mailTitle];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[ImageCount class]])
    {
        //: text = [WorkLanguageManager getTextWithKey:@"message_guess"];
        text = [InputRed preserve:[BeastData sharedInstance].app_placeValue];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[ClickText class]])
    {
        //: text = [WorkLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [InputRed preserve:[BeastData sharedInstance].notiViewText];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[ItemViewAttachment class]])
    {
        //: text = [WorkLanguageManager getTextWithKey:@"message_red_packet"];
        text = [InputRed preserve:[BeastData sharedInstance].noti_assaultValue];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[NameButton class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        NameButton *attach = (NameButton *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.incandescenceLine;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[ViewColor class]])
    {
        //: text = [WorkLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [InputRed preserve:[BeastData sharedInstance].userKeepData];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[InputAttachment class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        InputAttachment *cardAtt = (InputAttachment *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [WorkLanguageManager getTextWithKey:@"group_card"];
            text = [InputRed preserve:[BeastData sharedInstance].main_weekReadData];
        //: } else {
        } else {
            //: text = [WorkLanguageManager getTextWithKey:@"person_card"];
            text = [InputRed preserve:[BeastData sharedInstance].userImageAtData];
        }
    }
//    else if (message.messageSubType == 20)
//    {
//        text = LangKey(@"retracted_message");//撤回
//    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]";LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}
//: @end
@end

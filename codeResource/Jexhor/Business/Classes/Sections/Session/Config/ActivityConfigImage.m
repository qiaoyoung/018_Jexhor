
#import <Foundation/Foundation.h>

typedef struct {
    Byte part;
    Byte *showHide;
    unsigned int pursuitMilkTower;
	int vise;
} StructImageLimitData;

@interface ImageLimitData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ImageLimitData

+ (instancetype)sharedInstance {
    static ImageLimitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ImageLimitDataToByte:(StructImageLimitData *)data {
    for (int i = 0; i < data->pursuitMilkTower; i++) {
        data->showHide[i] ^= data->part;
    }
    data->showHide[data->pursuitMilkTower] = 0;
	if (data->pursuitMilkTower >= 1) {
		data->vise = data->showHide[0];
	}
    return data->showHide;
}

- (NSString *)StringFromImageLimitData:(StructImageLimitData *)data {
    return [NSString stringWithUTF8String:(char *)[self ImageLimitDataToByte:data]];
}

//: onTapMenuItemCopy:
- (NSString *)kNameData {
    /* static */ NSString *kNameData = nil;
    if (!kNameData) {
        StructImageLimitData value = (StructImageLimitData){44, (Byte []){67, 66, 120, 77, 92, 97, 73, 66, 89, 101, 88, 73, 65, 111, 67, 92, 85, 22, 245}, 18, 170};
        kNameData = [self StringFromImageLimitData:&value];
    }
    return kNameData;
}

//: menu_del
- (NSString *)k_successName {
    /* static */ NSString *k_successName = nil;
    if (!k_successName) {
        StructImageLimitData value = (StructImageLimitData){154, (Byte []){247, 255, 244, 239, 197, 254, 255, 246, 51}, 8, 250};
        k_successName = [self StringFromImageLimitData:&value];
    }
    return k_successName;
}

//: onTapMenuItemRevoke:
- (NSString *)dream_withValue {
    /* static */ NSString *dream_withValue = nil;
    if (!dream_withValue) {
        StructImageLimitData value = (StructImageLimitData){250, (Byte []){149, 148, 174, 155, 138, 183, 159, 148, 143, 179, 142, 159, 151, 168, 159, 140, 149, 145, 159, 192, 2}, 20, 96};
        dream_withValue = [self StringFromImageLimitData:&value];
    }
    return dream_withValue;
}

//: onTapMenuItemDelete:
- (NSString *)k_makeValue {
    /* static */ NSString *k_makeValue = nil;
    if (!k_makeValue) {
        StructImageLimitData value = (StructImageLimitData){196, (Byte []){171, 170, 144, 165, 180, 137, 161, 170, 177, 141, 176, 161, 169, 128, 161, 168, 161, 176, 161, 254, 119}, 20, 254};
        k_makeValue = [self StringFromImageLimitData:&value];
    }
    return k_makeValue;
}

//: menu_revoke
- (NSString *)userParentName {
    /* static */ NSString *userParentName = nil;
    if (!userParentName) {
        StructImageLimitData value = (StructImageLimitData){65, (Byte []){44, 36, 47, 52, 30, 51, 36, 55, 46, 42, 36, 80}, 11, 104};
        userParentName = [self StringFromImageLimitData:&value];
    }
    return userParentName;
}

//: menu_translation
- (NSString *)user_accountData {
    /* static */ NSString *user_accountData = nil;
    if (!user_accountData) {
        StructImageLimitData value = (StructImageLimitData){111, (Byte []){2, 10, 1, 26, 48, 27, 29, 14, 1, 28, 3, 14, 27, 6, 0, 1, 243}, 16, 176};
        user_accountData = [self StringFromImageLimitData:&value];
    }
    return user_accountData;
}

//: menu_report
- (NSString *)m_acheContent {
    /* static */ NSString *m_acheContent = nil;
    if (!m_acheContent) {
        StructImageLimitData value = (StructImageLimitData){235, (Byte []){134, 142, 133, 158, 180, 153, 142, 155, 132, 153, 159, 18}, 11, 149};
        m_acheContent = [self StringFromImageLimitData:&value];
    }
    return m_acheContent;
}

//: menu_praise
- (NSString *)dreamPremiumName {
    /* static */ NSString *dreamPremiumName = nil;
    if (!dreamPremiumName) {
        StructImageLimitData value = (StructImageLimitData){138, (Byte []){231, 239, 228, 255, 213, 250, 248, 235, 227, 249, 239, 227}, 11, 150};
        dreamPremiumName = [self StringFromImageLimitData:&value];
    }
    return dreamPremiumName;
}

//: report_Content
- (NSString *)dream_givingData {
    /* static */ NSString *dream_givingData = nil;
    if (!dream_givingData) {
        StructImageLimitData value = (StructImageLimitData){249, (Byte []){139, 156, 137, 150, 139, 141, 166, 186, 150, 151, 141, 156, 151, 141, 224}, 14, 155};
        dream_givingData = [self StringFromImageLimitData:&value];
    }
    return dream_givingData;
}

//: friend_circle_adapter_like
- (NSString *)user_sliceName {
    /* static */ NSString *user_sliceName = nil;
    if (!user_sliceName) {
        StructImageLimitData value = (StructImageLimitData){93, (Byte []){59, 47, 52, 56, 51, 57, 2, 62, 52, 47, 62, 49, 56, 2, 60, 57, 60, 45, 41, 56, 47, 2, 49, 52, 54, 56, 114}, 26, 163};
        user_sliceName = [self StringFromImageLimitData:&value];
    }
    return user_sliceName;
}

//: onTapMenuItemPraise:
- (NSString *)dreamLabelMustTitle {
    /* static */ NSString *dreamLabelMustTitle = nil;
    if (!dreamLabelMustTitle) {
        StructImageLimitData value = (StructImageLimitData){220, (Byte []){179, 178, 136, 189, 172, 145, 185, 178, 169, 149, 168, 185, 177, 140, 174, 189, 181, 175, 185, 230, 128}, 20, 147};
        dreamLabelMustTitle = [self StringFromImageLimitData:&value];
    }
    return dreamLabelMustTitle;
}

//: menu_forword
- (NSString *)showThanName {
    /* static */ NSString *showThanName = nil;
    if (!showThanName) {
        StructImageLimitData value = (StructImageLimitData){79, (Byte []){34, 42, 33, 58, 16, 41, 32, 61, 56, 32, 61, 43, 163}, 12, 181};
        showThanName = [self StringFromImageLimitData:&value];
    }
    return showThanName;
}

//: onTapMenuItemReport:
- (NSString *)dreamPlaceData {
    /* static */ NSString *dreamPlaceData = nil;
    if (!dreamPlaceData) {
        StructImageLimitData value = (StructImageLimitData){199, (Byte []){168, 169, 147, 166, 183, 138, 162, 169, 178, 142, 179, 162, 170, 149, 162, 183, 168, 181, 179, 253, 73}, 20, 140};
        dreamPlaceData = [self StringFromImageLimitData:&value];
    }
    return dreamPlaceData;
}

//: menu_copy
- (NSString *)user_withValue {
    /* static */ NSString *user_withValue = nil;
    if (!user_withValue) {
        StructImageLimitData value = (StructImageLimitData){171, (Byte []){198, 206, 197, 222, 244, 200, 196, 219, 210, 129}, 9, 213};
        user_withValue = [self StringFromImageLimitData:&value];
    }
    return user_withValue;
}

//: onTapMenuItemTranslation:
- (NSString *)main_appearName {
    /* static */ NSString *main_appearName = nil;
    if (!main_appearName) {
        StructImageLimitData value = (StructImageLimitData){225, (Byte []){142, 143, 181, 128, 145, 172, 132, 143, 148, 168, 149, 132, 140, 181, 147, 128, 143, 146, 141, 128, 149, 136, 142, 143, 219, 187}, 25, 61};
        main_appearName = [self StringFromImageLimitData:&value];
    }
    return main_appearName;
}

//: onTapMenuItemForword:
- (NSString *)k_sizeSliceText {
    /* static */ NSString *k_sizeSliceText = nil;
    if (!k_sizeSliceText) {
        StructImageLimitData value = (StructImageLimitData){157, (Byte []){242, 243, 201, 252, 237, 208, 248, 243, 232, 212, 233, 248, 240, 219, 242, 239, 234, 242, 239, 249, 167, 126}, 21, 3};
        k_sizeSliceText = [self StringFromImageLimitData:&value];
    }
    return k_sizeSliceText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityConfigImage.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "ActivityConfigImage.h"
//: #import "FFFMediaItem.h"
#import "AccountAction.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "NTESBundleSetting.h"
#import "ImageTing.h"
//: #import "NSString+NTES.h"
#import "NSString+Recent.h"
//: #import "FFFSessionConfig.h"
#import "LineConfig.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "FFFInputEmoticonManager.h"
#import "RedManager.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"

//: @interface NTESSessionConfig()
@interface ActivityConfigImage()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation NTESSessionConfig
@implementation ActivityConfigImage

//: - (NSArray *)mediaItems
- (NSArray *)prefaceWith
{
    //: NSArray *defaultMediaItems = [MyUserKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [MessageContent secretResolution].config.items;

//    AccountAction *janKenPon = [AccountAction item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".ntes_localized

//    AccountAction *fileTrans = [AccountAction item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".ntes_localized

//    AccountAction *tip       = [AccountAction item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".ntes_localized];

//    AccountAction *audioChat =  [AccountAction item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".ntes_localized
//
//    AccountAction *videoChat =  [AccountAction item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".ntes_localized
//
//    AccountAction *teamMeeting =  [AccountAction item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".ntes_localized

//    AccountAction *snapChat =   [AccountAction item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".ntes_localized];

//    AccountAction *whiteBoard = [AccountAction item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".ntes_localized];
    //红包功能因合作终止，暂时关闭
//    AccountAction *redPacket  = [AccountAction item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    AccountAction *teamReceipt  = [AccountAction item:@"onTapMediaItemTeamReceipt:"
//                                      normalImage:[UIImage imageNamed:@"icon_team_receipt_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_team_receipt_pressed"]
//                                            title:@"已读回执".ntes_localized];



//    BOOL isMe   = _session.sessionType == NIMSessionTypeP2P
//    && [_session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
//    NSArray *items = nil;

//    if (isMe)
//    {
//        items = @[janKenPon,tip];
//    }
//    else if(_session.sessionType == NIMSessionTypeTeam || _session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        items = @[janKenPon];
//    }
//    else
//    {
//        items = @[janKenPon];
//    }


//    return [defaultMediaItems arrayByAddingObjectsFromArray:items];
    //: return defaultMediaItems;
    return defaultMediaItems;
}


//: - (NSArray<FFFMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<AccountAction *> *)showing:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: FFFMediaItem *Praise = [FFFMediaItem item:@"onTapMenuItemPraise:"
    AccountAction *Praise = [AccountAction showName:[[ImageLimitData sharedInstance] dreamLabelMustTitle]
                                 //: normalImage:[UIImage imageNamed:@"menu_praise"]
                                 with:[UIImage imageNamed:[[ImageLimitData sharedInstance] dreamPremiumName]]
                               //: selectedImage:nil
                               data:nil
                                       //: title:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_like"]];
                                       fit:[InputRed preserve:[[ImageLimitData sharedInstance] user_sliceName]]];

//    AccountAction *reply = [AccountAction item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    AccountAction *copy = [AccountAction showName:[[ImageLimitData sharedInstance] kNameData]
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                with:[UIImage imageNamed:[[ImageLimitData sharedInstance] user_withValue]]
                              //: selectedImage:nil
                              data:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      fit:[InputRed preserve:@"复制"]];

    //: FFFMediaItem *forword = [FFFMediaItem item:@"onTapMenuItemForword:"
    AccountAction *forword = [AccountAction showName:[[ImageLimitData sharedInstance] k_sizeSliceText]
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   with:[UIImage imageNamed:[[ImageLimitData sharedInstance] showThanName]]
                                 //: selectedImage:nil
                                 data:nil
                                         //: title:[FFFLanguageManager getTextWithKey:@"转发"]];
                                         fit:[InputRed preserve:@"转发"]];

//    AccountAction *mark = [AccountAction item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    AccountAction *pin = [AccountAction item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: FFFMediaItem *report = [FFFMediaItem item:@"onTapMenuItemReport:"
    AccountAction *report = [AccountAction showName:[[ImageLimitData sharedInstance] dreamPlaceData]
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  with:[UIImage imageNamed:[[ImageLimitData sharedInstance] m_acheContent]]
                                //: selectedImage:nil
                                data:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"report_Content"]];
                                        fit:[InputRed preserve:[[ImageLimitData sharedInstance] dream_givingData]]];

    //: FFFMediaItem *translation = [FFFMediaItem item:@"onTapMenuItemTranslation:"
    AccountAction *translation = [AccountAction showName:[[ImageLimitData sharedInstance] main_appearName]
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  with:[UIImage imageNamed:[[ImageLimitData sharedInstance] user_accountData]]
                                //: selectedImage:nil
                                data:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"翻译"]];
                                        fit:[InputRed preserve:@"翻译"]];

    //: FFFMediaItem *revoke = [FFFMediaItem item:@"onTapMenuItemRevoke:"
    AccountAction *revoke = [AccountAction showName:[[ImageLimitData sharedInstance] dream_withValue]
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  with:[UIImage imageNamed:[[ImageLimitData sharedInstance] userParentName]]
                                //: selectedImage:nil
                                data:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"撤回"]];
                                        fit:[InputRed preserve:@"撤回"]];

    //: FFFMediaItem *delete = [FFFMediaItem item:@"onTapMenuItemDelete:"
    AccountAction *delete = [AccountAction showName:[[ImageLimitData sharedInstance] k_makeValue]
                                  //: normalImage:[UIImage imageNamed:@"menu_del"]
                                  with:[UIImage imageNamed:[[ImageLimitData sharedInstance] k_successName]]
                                //: selectedImage:nil
                                data:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"删除"]];
                                        fit:[InputRed preserve:@"删除"]];

//    AccountAction *mutiSelect = [AccountAction item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];

    //: [items addObject:Praise];
    [items addObject:Praise];

//    if ([SessionUtil canMessageBeForwarded:message])
//    {
//        [items addObject:reply];
//    }

    //: BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    //: if (!isMe)
    if (!isMe)
    {
        //: [items addObject:report];
        [items addObject:report];
    }

    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [items addObject:copy];
        [items addObject:copy];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([SessionUtil dataConverter:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([SessionUtil canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([SessionUtil row:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([SessionUtil canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        AccountAction *audio2text = [AccountAction item:@"onTapMenuItemAudio2Text:"
//          normalImage:[UIImage imageNamed:@"menu_audio2text"]
//        selectedImage:nil
//                title:@"转文字".ntes_localized];
//
//        [items addObject:audio2text];
//    }
    //: return items;
    return items;
}

//: - (NSArray *)emotionItems
- (NSArray *)joyToBlueishItems
{
    //NSArray *indexs = @[@(1),@(145),@(12),@(15),@(10),@(18),@(19)];
    //: NSArray *indexs = @[];
    NSArray *indexs = @[];
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: for (NSNumber *index in indexs)
    for (NSNumber *index in indexs)
    {
        //: NSString * ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, [index integerValue]];
        NSString * ID = [NSString stringWithFormat:main_controlData, [index integerValue]];
        //: NIMInputEmoticon *item = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
        FrontwardsCount *item = [[RedManager session] record:ID];
        //: if (item)
        if (item)
        {
            //: [items addObject:item];
            [items addObject:item];
        }
    }

    //: return [items copy];
    return [items copy];
}

//: - (BOOL)shouldHandleReceipt{
- (BOOL)directFlip{
    //: return YES;
    return YES;
}

//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)flushTypes{
    //: return @[
    return @[
//        @(FFFInputBarItemTypeMore),
//        @(FFFInputBarItemTypeEmoticon),
//             @(FFFInputBarItemTypeVoice),
             //: @(FFFInputBarItemTypeTextAndRecord),
             @(FFFInputBarItemTypeTextAndRecord),
        //: @(FFFInputBarItemTypeSend),
        @(FFFInputBarItemTypeSend),
            //: ];
            ];
}

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)completed:(NIMMessage *)message
{
    //文字，语音，图片，视频，文件，地址位置和自定义消息都支持已读回执，其他的不支持
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: if (type == NIMMessageTypeCustom) {
    if (type == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        //: id attachment = object.attachment;
        id attachment = object.attachment;

        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([attachment isKindOfClass:[ClickText class]]) {
            //: return NO;
            return NO;
        }
    }



    //: return type == NIMMessageTypeText ||
    return type == NIMMessageTypeText ||
    //: type == NIMMessageTypeAudio ||
    type == NIMMessageTypeAudio ||
    //: type == NIMMessageTypeImage ||
    type == NIMMessageTypeImage ||
    //: type == NIMMessageTypeVideo ||
    type == NIMMessageTypeVideo ||
    //: type == NIMMessageTypeFile ||
    type == NIMMessageTypeFile ||
    //: type == NIMMessageTypeLocation ||
    type == NIMMessageTypeLocation ||
    //: type == NIMMessageTypeCustom;
    type == NIMMessageTypeCustom;
}

//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets
- (NSArray<WithTextSearch *> *)whiteInput
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)proximityName{
    //: return [[NTESBundleSetting sharedConfig] disableProximityMonitor];
    return [[ImageTing configRefresh] proximityName];
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)shootImage {
    //: return [[NTESBundleSetting sharedConfig] autoFetchAttachment];
    return [[ImageTing configRefresh] shootImage];
}

//: - (NIMAudioType)recordType
- (NIMAudioType)disableLocation
{
    //: return [[NTESBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[ImageTing configRefresh] input] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)maxes:(NIMMessage *)message {
    //: return ![NTESSessionUtil canMessageBeForwarded:message];
    return ![SessionUtil dataConverter:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: - (void)cleanThreadMessage
- (void)size
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)formatEndSent
{
    //: return YES;
    return YES;
}

//: @end
@end
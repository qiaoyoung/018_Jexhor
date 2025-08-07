
#import <Foundation/Foundation.h>

@interface HolderData : NSObject

@end

@implementation HolderData

+ (Byte *)HolderDataToCache:(Byte *)data {
    int tribunalAlly = data[0];
    Byte gumshoe = data[1];
    int poverty = data[2];
    for (int i = poverty; i < poverty + tribunalAlly; i++) {
        int value = data[i] - gumshoe;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[poverty + tribunalAlly] = 0;
    return data + poverty;
}

+ (NSString *)StringFromHolderData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HolderDataToCache:data]];
}

//: onTapMenuItemForword:
+ (NSString *)k_infoStr {
    /* static */ NSString *k_infoStr = nil;
    if (!k_infoStr) {
        Byte value[] = {21, 84, 3, 195, 194, 168, 181, 196, 161, 185, 194, 201, 157, 200, 185, 193, 154, 195, 198, 203, 195, 198, 184, 142, 118};
        k_infoStr = [self StringFromHolderData:value];
    }
    return k_infoStr;
}

//: friend_circle_adapter_like
+ (NSString *)k_collectionPath {
    /* static */ NSString *k_collectionPath = nil;
    if (!k_collectionPath) {
        Byte value[] = {26, 7, 8, 152, 202, 107, 125, 81, 109, 121, 112, 108, 117, 107, 102, 106, 112, 121, 106, 115, 108, 102, 104, 107, 104, 119, 123, 108, 121, 102, 115, 112, 114, 108, 6};
        k_collectionPath = [self StringFromHolderData:value];
    }
    return k_collectionPath;
}

//: onTapMenuItemCopy:
+ (NSString *)user_influentialTingMsg {
    /* static */ NSString *user_influentialTingMsg = nil;
    if (!user_influentialTingMsg) {
        Byte value[] = {18, 2, 11, 239, 117, 155, 3, 68, 185, 168, 93, 113, 112, 86, 99, 114, 79, 103, 112, 119, 75, 118, 103, 111, 69, 113, 114, 123, 60, 151};
        user_influentialTingMsg = [self StringFromHolderData:value];
    }
    return user_influentialTingMsg;
}

//: menu_revoke
+ (NSString *)userImageDirectMsg {
    /* static */ NSString *userImageDirectMsg = nil;
    if (!userImageDirectMsg) {
        Byte value[] = {11, 41, 8, 237, 30, 83, 176, 132, 150, 142, 151, 158, 136, 155, 142, 159, 152, 148, 142, 136};
        userImageDirectMsg = [self StringFromHolderData:value];
    }
    return userImageDirectMsg;
}

//: onTapMenuItemDelete:
+ (NSString *)appJumpMsg {
    /* static */ NSString *appJumpMsg = nil;
    if (!appJumpMsg) {
        Byte value[] = {20, 64, 7, 213, 118, 94, 112, 175, 174, 148, 161, 176, 141, 165, 174, 181, 137, 180, 165, 173, 132, 165, 172, 165, 180, 165, 122, 255};
        appJumpMsg = [self StringFromHolderData:value];
    }
    return appJumpMsg;
}

//: menu_forword
+ (NSString *)mHostileMessage {
    /* static */ NSString *mHostileMessage = nil;
    if (!mHostileMessage) {
        Byte value[] = {12, 70, 8, 99, 122, 43, 161, 253, 179, 171, 180, 187, 165, 172, 181, 184, 189, 181, 184, 170, 255};
        mHostileMessage = [self StringFromHolderData:value];
    }
    return mHostileMessage;
}

//: menu_report
+ (NSString *)user_sustainId {
    /* static */ NSString *user_sustainId = nil;
    if (!user_sustainId) {
        Byte value[] = {11, 46, 3, 155, 147, 156, 163, 141, 160, 147, 158, 157, 160, 162, 67};
        user_sustainId = [self StringFromHolderData:value];
    }
    return user_sustainId;
}

//: onTapMenuItemTranslation:
+ (NSString *)k_economicalPath {
    /* static */ NSString *k_economicalPath = nil;
    if (!k_economicalPath) {
        Byte value[] = {25, 4, 7, 244, 210, 226, 36, 115, 114, 88, 101, 116, 81, 105, 114, 121, 77, 120, 105, 113, 88, 118, 101, 114, 119, 112, 101, 120, 109, 115, 114, 62, 25};
        k_economicalPath = [self StringFromHolderData:value];
    }
    return k_economicalPath;
}

//: menu_copy
+ (NSString *)kJumpName {
    /* static */ NSString *kJumpName = nil;
    if (!kJumpName) {
        Byte value[] = {9, 25, 3, 134, 126, 135, 142, 120, 124, 136, 137, 146, 239};
        kJumpName = [self StringFromHolderData:value];
    }
    return kJumpName;
}

//: menu_praise
+ (NSString *)mExplosionNuclearStr {
    /* static */ NSString *mExplosionNuclearStr = nil;
    if (!mExplosionNuclearStr) {
        Byte value[] = {11, 7, 10, 192, 215, 235, 53, 188, 8, 169, 116, 108, 117, 124, 102, 119, 121, 104, 112, 122, 108, 88};
        mExplosionNuclearStr = [self StringFromHolderData:value];
    }
    return mExplosionNuclearStr;
}

//: onTapMenuItemRevoke:
+ (NSString *)noti_rangeVoiceKey {
    /* static */ NSString *noti_rangeVoiceKey = nil;
    if (!noti_rangeVoiceKey) {
        Byte value[] = {20, 44, 7, 186, 38, 53, 48, 155, 154, 128, 141, 156, 121, 145, 154, 161, 117, 160, 145, 153, 126, 145, 162, 155, 151, 145, 102, 42};
        noti_rangeVoiceKey = [self StringFromHolderData:value];
    }
    return noti_rangeVoiceKey;
}

//: menu_del
+ (NSString *)showWipeMessage {
    /* static */ NSString *showWipeMessage = nil;
    if (!showWipeMessage) {
        Byte value[] = {8, 87, 7, 82, 23, 95, 215, 196, 188, 197, 204, 182, 187, 188, 195, 79};
        showWipeMessage = [self StringFromHolderData:value];
    }
    return showWipeMessage;
}

//: report_Content
+ (NSString *)noti_aspectBlackKey {
    /* static */ NSString *noti_aspectBlackKey = nil;
    if (!noti_aspectBlackKey) {
        Byte value[] = {14, 53, 6, 128, 35, 211, 167, 154, 165, 164, 167, 169, 148, 120, 164, 163, 169, 154, 163, 169, 221};
        noti_aspectBlackKey = [self StringFromHolderData:value];
    }
    return noti_aspectBlackKey;
}

//: onTapMenuItemPraise:
+ (NSString *)m_imageMsg {
    /* static */ NSString *m_imageMsg = nil;
    if (!m_imageMsg) {
        Byte value[] = {20, 70, 10, 195, 133, 39, 167, 243, 136, 233, 181, 180, 154, 167, 182, 147, 171, 180, 187, 143, 186, 171, 179, 150, 184, 167, 175, 185, 171, 128, 132};
        m_imageMsg = [self StringFromHolderData:value];
    }
    return m_imageMsg;
}

//: onTapMenuItemReport:
+ (NSString *)m_amKey {
    /* static */ NSString *m_amKey = nil;
    if (!m_amKey) {
        Byte value[] = {20, 93, 9, 108, 178, 199, 41, 19, 100, 204, 203, 177, 190, 205, 170, 194, 203, 210, 166, 209, 194, 202, 175, 194, 205, 204, 207, 209, 151, 183};
        m_amKey = [self StringFromHolderData:value];
    }
    return m_amKey;
}

//: menu_translation
+ (NSString *)notiDetectiveCellWithValue {
    /* static */ NSString *notiDetectiveCellWithValue = nil;
    if (!notiDetectiveCellWithValue) {
        Byte value[] = {16, 38, 8, 102, 17, 207, 213, 153, 147, 139, 148, 155, 133, 154, 152, 135, 148, 153, 146, 135, 154, 143, 149, 148, 216};
        notiDetectiveCellWithValue = [self StringFromHolderData:value];
    }
    return notiDetectiveCellWithValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnablelyTask.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "EnablelyTask.h"
//: #import "PushMediaItem.h"
#import "RecordAlbumItem.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "NTESSnapchatAttachment.h"
#import "NameAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "NSString+NTES.h"
#import "NSString+SearchedTeam.h"
//: #import "PushSessionConfig.h"
#import "CreateTop.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "PushInputEmoticonManager.h"
#import "DirectorManager.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"

//: @interface NTESSessionConfig()
@interface EnablelyTask()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation NTESSessionConfig
@implementation EnablelyTask

//: - (NSArray *)mediaItems
- (NSArray *)noName
{
    //: NSArray *defaultMediaItems = [MyUserKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [Secret highlight].config.name;

//    RecordAlbumItem *janKenPon = [RecordAlbumItem item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".ntes_localized

//    RecordAlbumItem *fileTrans = [RecordAlbumItem item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".ntes_localized

//    RecordAlbumItem *tip       = [RecordAlbumItem item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".ntes_localized];

//    RecordAlbumItem *audioChat =  [RecordAlbumItem item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".ntes_localized
//
//    RecordAlbumItem *videoChat =  [RecordAlbumItem item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".ntes_localized
//
//    RecordAlbumItem *teamMeeting =  [RecordAlbumItem item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".ntes_localized

//    RecordAlbumItem *snapChat =   [RecordAlbumItem item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".ntes_localized];

//    RecordAlbumItem *whiteBoard = [RecordAlbumItem item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".ntes_localized];
    //红包功能因合作终止，暂时关闭
//    RecordAlbumItem *redPacket  = [RecordAlbumItem item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    RecordAlbumItem *teamReceipt  = [RecordAlbumItem item:@"onTapMediaItemTeamReceipt:"
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


//: - (NSArray<PushMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<RecordAlbumItem *> *)completeMessage:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: PushMediaItem *Praise = [PushMediaItem item:@"onTapMenuItemPraise:"
    RecordAlbumItem *Praise = [RecordAlbumItem record:[HolderData m_imageMsg]
                                 //: normalImage:[UIImage imageNamed:@"menu_praise"]
                                 reloadByCount:[UIImage imageNamed:[HolderData mExplosionNuclearStr]]
                               //: selectedImage:nil
                               team:nil
                                       //: title:[PushLanguageManager getTextWithKey:@"friend_circle_adapter_like"]];
                                       provider:[BackgroundRandomAttribute content:[HolderData k_collectionPath]]];

//    RecordAlbumItem *reply = [RecordAlbumItem item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: PushMediaItem *copy = [PushMediaItem item:@"onTapMenuItemCopy:"
    RecordAlbumItem *copy = [RecordAlbumItem record:[HolderData user_influentialTingMsg]
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                reloadByCount:[UIImage imageNamed:[HolderData kJumpName]]
                              //: selectedImage:nil
                              team:nil
                                      //: title:[PushLanguageManager getTextWithKey:@"复制"]];
                                      provider:[BackgroundRandomAttribute content:@"复制"]];

    //: PushMediaItem *forword = [PushMediaItem item:@"onTapMenuItemForword:"
    RecordAlbumItem *forword = [RecordAlbumItem record:[HolderData k_infoStr]
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   reloadByCount:[UIImage imageNamed:[HolderData mHostileMessage]]
                                 //: selectedImage:nil
                                 team:nil
                                         //: title:[PushLanguageManager getTextWithKey:@"转发"]];
                                         provider:[BackgroundRandomAttribute content:@"转发"]];

//    RecordAlbumItem *mark = [RecordAlbumItem item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    RecordAlbumItem *pin = [RecordAlbumItem item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: PushMediaItem *report = [PushMediaItem item:@"onTapMenuItemReport:"
    RecordAlbumItem *report = [RecordAlbumItem record:[HolderData m_amKey]
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  reloadByCount:[UIImage imageNamed:[HolderData user_sustainId]]
                                //: selectedImage:nil
                                team:nil
                                        //: title:[PushLanguageManager getTextWithKey:@"report_Content"]];
                                        provider:[BackgroundRandomAttribute content:[HolderData noti_aspectBlackKey]]];

    //: PushMediaItem *translation = [PushMediaItem item:@"onTapMenuItemTranslation:"
    RecordAlbumItem *translation = [RecordAlbumItem record:[HolderData k_economicalPath]
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  reloadByCount:[UIImage imageNamed:[HolderData notiDetectiveCellWithValue]]
                                //: selectedImage:nil
                                team:nil
                                        //: title:[PushLanguageManager getTextWithKey:@"翻译"]];
                                        provider:[BackgroundRandomAttribute content:@"翻译"]];

    //: PushMediaItem *revoke = [PushMediaItem item:@"onTapMenuItemRevoke:"
    RecordAlbumItem *revoke = [RecordAlbumItem record:[HolderData noti_rangeVoiceKey]
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  reloadByCount:[UIImage imageNamed:[HolderData userImageDirectMsg]]
                                //: selectedImage:nil
                                team:nil
                                        //: title:[PushLanguageManager getTextWithKey:@"撤回"]];
                                        provider:[BackgroundRandomAttribute content:@"撤回"]];

    //: PushMediaItem *delete = [PushMediaItem item:@"onTapMenuItemDelete:"
    RecordAlbumItem *delete = [RecordAlbumItem record:[HolderData appJumpMsg]
                                  //: normalImage:[UIImage imageNamed:@"menu_del"]
                                  reloadByCount:[UIImage imageNamed:[HolderData showWipeMessage]]
                                //: selectedImage:nil
                                team:nil
                                        //: title:[PushLanguageManager getTextWithKey:@"删除"]];
                                        provider:[BackgroundRandomAttribute content:@"删除"]];

//    RecordAlbumItem *mutiSelect = [RecordAlbumItem item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];

    //: [items addObject:Praise];
    [items addObject:Praise];

//    if ([ReadUtil canMessageBeForwarded:message])
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
    if ([ReadUtil date:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([ReadUtil canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([ReadUtil marginSub:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([ReadUtil canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        RecordAlbumItem *audio2text = [RecordAlbumItem item:@"onTapMenuItemAudio2Text:"
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
- (NSArray *)itemsLocation
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
        NSString * ID = [NSString stringWithFormat:showImageDataIdent, [index integerValue]];
        //: NIMInputEmoticon *item = [[PushInputEmoticonManager sharedManager] emoticonByID:ID];
        TextEmoticon *item = [[DirectorManager statusFor] past:ID];
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
- (BOOL)inputMargin{
    //: return YES;
    return YES;
}

//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)ignitionKey{
    //: return @[
    return @[
//        @(PushInputBarItemTypeMore),
//        @(PushInputBarItemTypeEmoticon),
//             @(PushInputBarItemTypeVoice),
             //: @(PushInputBarItemTypeTextAndRecord),
             @(PushInputBarItemTypeTextAndRecord),
        //: @(PushInputBarItemTypeSend),
        @(PushInputBarItemTypeSend),
            //: ];
            ];
}

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)handled:(NIMMessage *)message
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
        if ([attachment isKindOfClass:[DoingAttachment class]]) {
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
- (NSArray<SizeCatalog *> *)colorCharlets
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)doingSelected{
    //: return [[NTESBundleSetting sharedConfig] disableProximityMonitor];
    return [[SettingImage name] doingSelected];
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)whenOn {
    //: return [[NTESBundleSetting sharedConfig] autoFetchAttachment];
    return [[SettingImage name] whenOn];
}

//: - (NIMAudioType)recordType
- (NIMAudioType)commentMax
{
    //: return [[NTESBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[SettingImage name] nim] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)reportMessage:(NIMMessage *)message {
    //: return ![NTESSessionUtil canMessageBeForwarded:message];
    return ![ReadUtil date:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: - (void)cleanThreadMessage
- (void)event
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)nameView
{
    //: return YES;
    return YES;
}

//: @end
@end


#import <Foundation/Foundation.h>

@interface FearData : NSObject

@end

@implementation FearData

+ (Byte *)FearDataToCache:(Byte *)data {
    int voiceDisplay = data[0];
    Byte effectivity = data[1];
    int bluish = data[2];
    for (int i = bluish; i < bluish + voiceDisplay; i++) {
        int value = data[i] + effectivity;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bluish + voiceDisplay] = 0;
    return data + bluish;
}

+ (NSString *)StringFromFearData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FearDataToCache:data]];
}

//: data
+ (NSString *)mOurLaverText {
    /* static */ NSString *mOurLaverText = nil;
    if (!mOurLaverText) {
        Byte value[] = {4, 73, 11, 37, 157, 119, 245, 71, 20, 174, 209, 27, 24, 43, 24, 177};
        mOurLaverText = [self StringFromFearData:value];
    }
    return mOurLaverText;
}

//: activity_friend_verify_info
+ (NSString *)show_custodyTitle {
    /* static */ NSString *show_custodyTitle = nil;
    if (!show_custodyTitle) {
        Byte value[] = {27, 23, 9, 221, 137, 243, 224, 97, 207, 74, 76, 93, 82, 95, 82, 93, 98, 72, 79, 91, 82, 78, 87, 77, 72, 95, 78, 91, 82, 79, 98, 72, 82, 87, 79, 88, 175};
        show_custodyTitle = [self StringFromFearData:value];
    }
    return show_custodyTitle;
}

//: 扩展字段
+ (NSString *)notiDetectiveValue {
    /* static */ NSString *notiDetectiveValue = nil;
    if (!notiDetectiveValue) {
        Byte value[] = {12, 12, 13, 145, 251, 158, 70, 129, 41, 198, 230, 226, 42, 218, 125, 157, 217, 165, 137, 217, 161, 139, 218, 162, 169, 199};
        notiDetectiveValue = [self StringFromFearData:value];
    }
    return notiDetectiveValue;
}

//: 发送时间超过2分钟的消息不能被撤回
+ (NSString *)mainMaxMsg {
    /* static */ NSString *mainMaxMsg = nil;
    if (!mainMaxMsg) {
        Byte value[] = {49, 12, 8, 33, 25, 18, 12, 218, 217, 131, 133, 221, 116, 117, 218, 139, 170, 221, 139, 168, 220, 170, 121, 220, 179, 123, 38, 217, 124, 122, 221, 134, 147, 219, 142, 120, 218, 170, 124, 218, 117, 163, 216, 172, 129, 220, 119, 177, 220, 150, 159, 218, 134, 152, 217, 143, 146, 240};
        mainMaxMsg = [self StringFromFearData:value];
    }
    return mainMaxMsg;
}

//: NTESMessageTranslate
+ (NSString *)mParticipatePath {
    /* static */ NSString *mParticipatePath = nil;
    if (!mParticipatePath) {
        Byte value[] = {20, 72, 13, 42, 90, 65, 17, 255, 200, 14, 173, 53, 183, 6, 12, 253, 11, 5, 29, 43, 43, 25, 31, 29, 12, 42, 25, 38, 43, 36, 25, 44, 29, 28};
        mParticipatePath = [self StringFromFearData:value];
    }
    return mParticipatePath;
}

//: 确认转发
+ (NSString *)app_juryStr {
    /* static */ NSString *app_juryStr = nil;
    if (!app_juryStr) {
        Byte value[] = {12, 2, 13, 3, 1, 20, 44, 197, 132, 49, 206, 160, 251, 229, 159, 172, 230, 172, 162, 230, 187, 170, 227, 141, 143, 141};
        app_juryStr = [self StringFromFearData:value];
    }
    return app_juryStr;
}

//: #FEFECA
+ (NSString *)mainFeeTitle {
    /* static */ NSString *mainFeeTitle = nil;
    if (!mainFeeTitle) {
        Byte value[] = {7, 55, 12, 26, 115, 96, 197, 116, 227, 76, 158, 48, 236, 15, 14, 15, 14, 12, 10, 5};
        mainFeeTitle = [self StringFromFearData:value];
    }
    return mainFeeTitle;
}

//: contact
+ (NSString *)notiDiscoveryContent {
    /* static */ NSString *notiDiscoveryContent = nil;
    if (!notiDiscoveryContent) {
        Byte value[] = {7, 43, 7, 98, 109, 169, 61, 56, 68, 67, 73, 54, 56, 73, 115};
        notiDiscoveryContent = [self StringFromFearData:value];
    }
    return notiDiscoveryContent;
}

//: canSendText
+ (NSString *)show_wakeName {
    /* static */ NSString *show_wakeName = nil;
    if (!show_wakeName) {
        Byte value[] = {11, 69, 8, 227, 34, 133, 246, 69, 30, 28, 41, 14, 32, 41, 31, 15, 32, 51, 47, 81};
        show_wakeName = [self StringFromFearData:value];
    }
    return show_wakeName;
}

//: 转发失败
+ (NSString *)userShowValue {
    /* static */ NSString *userShowValue = nil;
    if (!userShowValue) {
        Byte value[] = {12, 4, 6, 190, 64, 35, 228, 185, 168, 225, 139, 141, 225, 160, 173, 228, 176, 161, 38};
        userShowValue = [self StringFromFearData:value];
    }
    return userShowValue;
}

//: 发言频次
+ (NSString *)k_tingId {
    /* static */ NSString *k_tingId = nil;
    if (!k_tingId) {
        Byte value[] = {12, 22, 12, 249, 101, 7, 220, 15, 187, 146, 13, 124, 207, 121, 123, 210, 146, 106, 211, 140, 123, 208, 150, 139, 71};
        k_tingId = [self StringFromFearData:value];
    }
    return k_tingId;
}

//: checksum
+ (NSString *)show_verdictColdName {
    /* static */ NSString *show_verdictColdName = nil;
    if (!show_verdictColdName) {
        Byte value[] = {8, 74, 6, 203, 55, 123, 25, 30, 27, 25, 33, 41, 43, 35, 136};
        show_verdictColdName = [self StringFromFearData:value];
    }
    return show_verdictColdName;
}

//: code
+ (NSString *)kGoingName {
    /* static */ NSString *kGoingName = nil;
    if (!kGoingName) {
        Byte value[] = {4, 44, 5, 83, 56, 55, 67, 56, 57, 91};
        kGoingName = [self StringFromFearData:value];
    }
    return kGoingName;
}

//: 请输入附言
+ (NSString *)dreamUserPath {
    /* static */ NSString *dreamUserPath = nil;
    if (!dreamUserPath) {
        Byte value[] = {15, 37, 6, 69, 95, 191, 195, 138, 146, 195, 153, 110, 192, 96, 128, 196, 116, 95, 195, 131, 91, 135};
        dreamUserPath = [self StringFromFearData:value];
    }
    return dreamUserPath;
}

//: 被拉黑
+ (NSString *)main_detectiveMsg {
    /* static */ NSString *main_detectiveMsg = nil;
    if (!main_detectiveMsg) {
        Byte value[] = {9, 26, 11, 171, 242, 14, 158, 191, 176, 166, 65, 206, 136, 145, 204, 113, 111, 207, 161, 119, 160};
        main_detectiveMsg = [self StringFromFearData:value];
    }
    return main_detectiveMsg;
}

//: 确定删除？
+ (NSString *)mainGoingFormat {
    /* static */ NSString *mainGoingFormat = nil;
    if (!mainGoingFormat) {
        Byte value[] = {15, 76, 10, 244, 111, 118, 2, 12, 18, 148, 155, 85, 98, 153, 98, 78, 153, 60, 84, 157, 77, 88, 163, 112, 83, 176};
        mainGoingFormat = [self StringFromFearData:value];
    }
    return mainGoingFormat;
}

//: canMemberInfo
+ (NSString *)mainTermsFormat {
    /* static */ NSString *mainTermsFormat = nil;
    if (!mainTermsFormat) {
        Byte value[] = {13, 47, 4, 23, 52, 50, 63, 30, 54, 62, 51, 54, 67, 26, 63, 55, 64, 100};
        mainTermsFormat = [self StringFromFearData:value];
    }
    return mainTermsFormat;
}

//: nonce
+ (NSString *)kBrownMsg {
    /* static */ NSString *kBrownMsg = nil;
    if (!kBrownMsg) {
        Byte value[] = {5, 73, 8, 69, 223, 184, 154, 208, 37, 38, 37, 26, 28, 28};
        kBrownMsg = [self StringFromFearData:value];
    }
    return kBrownMsg;
}

//: translation
+ (NSString *)dream_snapIdent {
    /* static */ NSString *dream_snapIdent = nil;
    if (!dream_snapIdent) {
        Byte value[] = {11, 69, 12, 123, 252, 218, 11, 92, 178, 54, 186, 32, 47, 45, 28, 41, 46, 39, 28, 47, 36, 42, 41, 65};
        dream_snapIdent = [self StringFromFearData:value];
    }
    return dream_snapIdent;
}

//: 消息合并转发失败
+ (NSString *)k_promotionIdent {
    /* static */ NSString *k_promotionIdent = nil;
    if (!k_promotionIdent) {
        Byte value[] = {24, 55, 10, 136, 96, 182, 77, 116, 190, 217, 175, 127, 81, 175, 74, 120, 174, 89, 81, 174, 130, 127, 177, 134, 117, 174, 88, 90, 174, 109, 122, 177, 125, 110, 154};
        k_promotionIdent = [self StringFromFearData:value];
    }
    return k_promotionIdent;
}

//: message_super_team
+ (NSString *)kChildPath {
    /* static */ NSString *kChildPath = nil;
    if (!kChildPath) {
        Byte value[] = {18, 50, 4, 95, 59, 51, 65, 65, 47, 53, 51, 45, 65, 67, 62, 51, 64, 45, 66, 51, 47, 59, 45};
        kChildPath = [self StringFromFearData:value];
    }
    return kChildPath;
}

//: showImage:
+ (NSString *)show_bornChiefMsg {
    /* static */ NSString *show_bornChiefMsg = nil;
    if (!show_bornChiefMsg) {
        Byte value[] = {10, 96, 5, 245, 54, 19, 8, 15, 23, 233, 13, 1, 7, 5, 218, 148};
        show_bornChiefMsg = [self StringFromFearData:value];
    }
    return show_bornChiefMsg;
}

//: text
+ (NSString *)k_allyName {
    /* static */ NSString *k_allyName = nil;
    if (!k_allyName) {
        Byte value[] = {4, 74, 13, 76, 118, 3, 33, 42, 5, 49, 95, 191, 134, 42, 27, 46, 42, 229};
        k_allyName = [self StringFromFearData:value];
    }
    return k_allyName;
}

//: ispush
+ (NSString *)dream_subStr {
    /* static */ NSString *dream_subStr = nil;
    if (!dream_subStr) {
        Byte value[] = {6, 71, 7, 88, 23, 112, 44, 34, 44, 41, 46, 44, 33, 190};
        dream_subStr = [self StringFromFearData:value];
    }
    return dream_subStr;
}

//: 群申请失败
+ (NSString *)show_panInsideName {
    /* static */ NSString *show_panInsideName = nil;
    if (!show_panInsideName) {
        Byte value[] = {15, 39, 7, 138, 116, 64, 20, 192, 151, 125, 192, 109, 140, 193, 136, 144, 190, 125, 138, 193, 141, 126, 165};
        show_panInsideName = [self StringFromFearData:value];
    }
    return show_panInsideName;
}

//: friend_delete_fail
+ (NSString *)main_atPath {
    /* static */ NSString *main_atPath = nil;
    if (!main_atPath) {
        Byte value[] = {18, 9, 10, 67, 222, 172, 79, 118, 214, 80, 93, 105, 96, 92, 101, 91, 86, 91, 92, 99, 92, 107, 92, 86, 93, 88, 96, 99, 144};
        main_atPath = [self StringFromFearData:value];
    }
    return main_atPath;
}

//: %@.code:%zd
+ (NSString *)showWhichPullMessage {
    /* static */ NSString *showWhichPullMessage = nil;
    if (!showWhichPullMessage) {
        Byte value[] = {11, 71, 10, 201, 230, 88, 25, 171, 240, 69, 222, 249, 231, 28, 40, 29, 30, 243, 222, 51, 29, 137};
        showWhichPullMessage = [self StringFromFearData:value];
    }
    return showWhichPullMessage;
}

//: 消息撤回失败，请重试
+ (NSString *)m_brownPath {
    /* static */ NSString *m_brownPath = nil;
    if (!m_brownPath) {
        Byte value[] = {30, 62, 9, 112, 71, 153, 207, 108, 156, 168, 120, 74, 168, 67, 113, 168, 84, 102, 167, 93, 96, 167, 102, 115, 170, 118, 103, 177, 126, 78, 170, 113, 121, 171, 73, 79, 170, 113, 87, 76};
        m_brownPath = [self StringFromFearData:value];
    }
    return m_brownPath;
}

//: 正在输入
+ (NSString *)show_viewMessage {
    /* static */ NSString *show_viewMessage = nil;
    if (!show_viewMessage) {
        Byte value[] = {12, 42, 11, 6, 251, 105, 226, 243, 221, 33, 166, 188, 131, 121, 187, 114, 126, 190, 148, 105, 187, 91, 123, 57};
        show_viewMessage = [self StringFromFearData:value];
    }
    return show_viewMessage;
}

//: teamgonggao_title_
+ (NSString *)userConstitutionIdent {
    /* static */ NSString *userConstitutionIdent = nil;
    if (!userConstitutionIdent) {
        Byte value[] = {18, 10, 6, 1, 39, 22, 106, 91, 87, 99, 93, 101, 100, 93, 93, 87, 101, 85, 106, 95, 106, 98, 91, 85, 185};
        userConstitutionIdent = [self StringFromFearData:value];
    }
    return userConstitutionIdent;
}

//: showFile:
+ (NSString *)dreamTeamValue {
    /* static */ NSString *dreamTeamValue = nil;
    if (!dreamTeamValue) {
        Byte value[] = {9, 45, 7, 103, 28, 82, 192, 70, 59, 66, 74, 25, 60, 63, 56, 13, 217};
        dreamTeamValue = [self StringFromFearData:value];
    }
    return dreamTeamValue;
}

//: NTESMessageRefusedTag
+ (NSString *)notiNameData {
    /* static */ NSString *notiNameData = nil;
    if (!notiNameData) {
        Byte value[] = {21, 29, 13, 114, 177, 110, 97, 106, 152, 175, 157, 95, 124, 49, 55, 40, 54, 48, 72, 86, 86, 68, 74, 72, 53, 72, 73, 88, 86, 72, 71, 55, 68, 74, 98};
        notiNameData = [self StringFromFearData:value];
    }
    return notiNameData;
}

//: #F6B53E
+ (NSString *)noti_legislatureUrl {
    /* static */ NSString *noti_legislatureUrl = nil;
    if (!noti_legislatureUrl) {
        Byte value[] = {7, 50, 7, 40, 168, 9, 133, 241, 20, 4, 16, 3, 1, 19, 122};
        noti_legislatureUrl = [self StringFromFearData:value];
    }
    return noti_legislatureUrl;
}

//: app_team_invalid_tip
+ (NSString *)showMoralSaleMsg {
    /* static */ NSString *showMoralSaleMsg = nil;
    if (!showMoralSaleMsg) {
        Byte value[] = {20, 7, 13, 183, 240, 17, 127, 160, 234, 199, 73, 202, 146, 90, 105, 105, 88, 109, 94, 90, 102, 88, 98, 103, 111, 90, 101, 98, 93, 88, 109, 98, 105, 187};
        showMoralSaleMsg = [self StringFromFearData:value];
    }
    return showMoralSaleMsg;
}

//: luyintaiduan
+ (NSString *)app_relaxMessage {
    /* static */ NSString *app_relaxMessage = nil;
    if (!app_relaxMessage) {
        Byte value[] = {12, 57, 12, 196, 217, 231, 187, 35, 148, 55, 254, 15, 51, 60, 64, 48, 53, 59, 40, 48, 43, 60, 40, 53, 89};
        app_relaxMessage = [self StringFromFearData:value];
    }
    return app_relaxMessage;
}

//: 申请成功，等待验证
+ (NSString *)dream_resembleButtValue {
    /* static */ NSString *dream_resembleButtValue = nil;
    if (!dream_resembleButtValue) {
        Byte value[] = {27, 93, 8, 194, 87, 253, 176, 99, 138, 55, 86, 139, 82, 90, 137, 43, 51, 136, 45, 66, 146, 95, 47, 138, 80, 44, 136, 97, 40, 140, 77, 47, 139, 82, 36, 45};
        dream_resembleButtValue = [self StringFromFearData:value];
    }
    return dream_resembleButtValue;
}

//: accid
+ (NSString *)dreamCustodyKey {
    /* static */ NSString *dreamCustodyKey = nil;
    if (!dreamCustodyKey) {
        Byte value[] = {5, 17, 12, 122, 218, 45, 218, 175, 194, 2, 133, 50, 80, 82, 82, 88, 83, 245};
        dreamCustodyKey = [self StringFromFearData:value];
    }
    return dreamCustodyKey;
}

//: 发言频次过快，请%ld秒后重试
+ (NSString *)app_rageStr {
    /* static */ NSString *app_rageStr = nil;
    if (!app_rageStr) {
        Byte value[] = {39, 26, 10, 106, 96, 153, 122, 222, 88, 36, 203, 117, 119, 206, 142, 102, 207, 136, 119, 204, 146, 135, 206, 165, 109, 203, 165, 145, 213, 162, 114, 206, 149, 157, 11, 82, 74, 205, 141, 120, 203, 118, 116, 207, 109, 115, 206, 149, 123, 197};
        app_rageStr = [self StringFromFearData:value];
    }
    return app_rageStr;
}

//: black_list_activity_add_black_failed
+ (NSString *)showWithStr {
    /* static */ NSString *showWithStr = nil;
    if (!showWithStr) {
        Byte value[] = {36, 38, 8, 12, 206, 179, 34, 117, 60, 70, 59, 61, 69, 57, 70, 67, 77, 78, 57, 59, 61, 78, 67, 80, 67, 78, 83, 57, 59, 62, 62, 57, 60, 70, 59, 61, 69, 57, 64, 59, 67, 70, 63, 62, 174};
        showWithStr = [self StringFromFearData:value];
    }
    return showWithStr;
}

//: 被禁言
+ (NSString *)show_teamFabricStr {
    /* static */ NSString *show_teamFabricStr = nil;
    if (!show_teamFabricStr) {
        Byte value[] = {9, 22, 8, 158, 136, 100, 128, 164, 210, 140, 149, 209, 144, 107, 210, 146, 106, 141};
        show_teamFabricStr = [self StringFromFearData:value];
    }
    return show_teamFabricStr;
}

//: title
+ (NSString *)mainTreatyEqualCommissionUrl {
    /* static */ NSString *mainTreatyEqualCommissionUrl = nil;
    if (!mainTreatyEqualCommissionUrl) {
        Byte value[] = {5, 36, 5, 237, 71, 80, 69, 80, 72, 65, 79};
        mainTreatyEqualCommissionUrl = [self StringFromFearData:value];
    }
    return mainTreatyEqualCommissionUrl;
}

//: type
+ (NSString *)dreamLeaveTingData {
    /* static */ NSString *dreamLeaveTingData = nil;
    if (!dreamLeaveTingData) {
        Byte value[] = {4, 11, 11, 216, 211, 115, 94, 1, 174, 141, 155, 105, 110, 101, 90, 108};
        dreamLeaveTingData = [self StringFromFearData:value];
    }
    return dreamLeaveTingData;
}

//: /other/getNimCheckSum
+ (NSString *)m_economicalIdent {
    /* static */ NSString *m_economicalIdent = nil;
    if (!m_economicalIdent) {
        Byte value[] = {21, 43, 10, 95, 52, 51, 222, 77, 183, 106, 4, 68, 73, 61, 58, 71, 4, 60, 58, 73, 35, 62, 66, 24, 61, 58, 56, 64, 40, 74, 66, 9};
        m_economicalIdent = [self StringFromFearData:value];
    }
    return m_economicalIdent;
}

//: apple+%@
+ (NSString *)mSpeculateTextMessage {
    /* static */ NSString *mSpeculateTextMessage = nil;
    if (!mSpeculateTextMessage) {
        Byte value[] = {8, 10, 6, 29, 99, 228, 87, 102, 102, 98, 91, 33, 27, 54, 94};
        mSpeculateTextMessage = [self StringFromFearData:value];
    }
    return mSpeculateTextMessage;
}

//: zh-CHT
+ (NSString *)k_childValue {
    /* static */ NSString *k_childValue = nil;
    if (!k_childValue) {
        Byte value[] = {6, 90, 8, 7, 156, 56, 174, 123, 32, 14, 211, 233, 238, 250, 148};
        k_childValue = [self StringFromFearData:value];
    }
    return k_childValue;
}

//: luyinshibai
+ (NSString *)userMotTreatyMsg {
    /* static */ NSString *userMotTreatyMsg = nil;
    if (!userMotTreatyMsg) {
        Byte value[] = {11, 25, 11, 148, 40, 4, 106, 57, 123, 67, 252, 83, 92, 96, 80, 85, 90, 79, 80, 73, 72, 80, 64};
        userMotTreatyMsg = [self StringFromFearData:value];
    }
    return userMotTreatyMsg;
}

//: 取消标记失败
+ (NSString *)kMainValue {
    /* static */ NSString *kMainValue = nil;
    if (!kMainValue) {
        Byte value[] = {18, 55, 9, 202, 211, 24, 208, 25, 164, 174, 88, 95, 175, 127, 81, 175, 105, 80, 177, 119, 121, 174, 109, 122, 177, 125, 110, 62};
        kMainValue = [self StringFromFearData:value];
    }
    return kMainValue;
}

//: 本地反垃圾失败
+ (NSString *)noti_chiefFormat {
    /* static */ NSString *noti_chiefFormat = nil;
    if (!noti_chiefFormat) {
        Byte value[] = {21, 7, 9, 171, 127, 232, 146, 247, 94, 223, 149, 165, 222, 149, 169, 222, 136, 134, 222, 151, 124, 222, 149, 183, 222, 157, 170, 225, 173, 158, 57};
        noti_chiefFormat = [self StringFromFearData:value];
    }
    return noti_chiefFormat;
}

//: 不允许文字
+ (NSString *)showHeavilyImageData {
    /* static */ NSString *showHeavilyImageData = nil;
    if (!showHeavilyImageData) {
        Byte value[] = {15, 36, 11, 234, 53, 106, 37, 132, 19, 122, 224, 192, 148, 105, 193, 97, 93, 196, 138, 148, 194, 114, 99, 193, 137, 115, 212};
        showHeavilyImageData = [self StringFromFearData:value];
    }
    return showHeavilyImageData;
}

//: friend_verify_avtivity_net_error
+ (NSString *)user_completeValue {
    /* static */ NSString *user_completeValue = nil;
    if (!user_completeValue) {
        Byte value[] = {32, 67, 11, 89, 247, 101, 14, 225, 90, 76, 174, 35, 47, 38, 34, 43, 33, 28, 51, 34, 47, 38, 35, 54, 28, 30, 51, 49, 38, 51, 38, 49, 54, 28, 43, 34, 49, 28, 34, 47, 47, 44, 47, 81};
        user_completeValue = [self StringFromFearData:value];
    }
    return user_completeValue;
}

//: showVideo:
+ (NSString *)mainEmotionWithUrl {
    /* static */ NSString *mainEmotionWithUrl = nil;
    if (!mainEmotionWithUrl) {
        Byte value[] = {10, 95, 9, 199, 237, 102, 175, 229, 230, 20, 9, 16, 24, 247, 10, 5, 6, 16, 219, 78};
        mainEmotionWithUrl = [self StringFromFearData:value];
    }
    return mainEmotionWithUrl;
}

//: message_helper_apply_to_group
+ (NSString *)dream_nuclearData {
    /* static */ NSString *dream_nuclearData = nil;
    if (!dream_nuclearData) {
        Byte value[] = {29, 57, 7, 175, 223, 205, 64, 52, 44, 58, 58, 40, 46, 44, 38, 47, 44, 51, 55, 44, 57, 38, 40, 55, 55, 51, 64, 38, 59, 54, 38, 46, 57, 54, 60, 55, 170};
        dream_nuclearData = [self StringFromFearData:value];
    }
    return dream_nuclearData;
}

//: content
+ (NSString *)notiProvedIdent {
    /* static */ NSString *notiProvedIdent = nil;
    if (!notiProvedIdent) {
        Byte value[] = {7, 59, 12, 235, 49, 156, 123, 227, 245, 160, 161, 201, 40, 52, 51, 57, 42, 51, 57, 242};
        notiProvedIdent = [self StringFromFearData:value];
    }
    return notiProvedIdent;
}

//: ** 该消息被屏蔽 **
+ (NSString *)k_tingName {
    /* static */ NSString *k_tingName = nil;
    if (!k_tingName) {
        Byte value[] = {24, 52, 5, 203, 96, 246, 246, 236, 180, 123, 113, 178, 130, 84, 178, 77, 123, 180, 110, 119, 177, 125, 91, 180, 96, 137, 236, 246, 246, 63};
        k_tingName = [self StringFromFearData:value];
    }
    return k_tingName;
}

//: zh-CHS
+ (NSString *)noti_requirementPressedName {
    /* static */ NSString *noti_requirementPressedName = nil;
    if (!noti_requirementPressedName) {
        Byte value[] = {6, 69, 3, 53, 35, 232, 254, 3, 14, 74};
        noti_requirementPressedName = [self StringFromFearData:value];
    }
    return noti_requirementPressedName;
}

//: 收藏失败
+ (NSString *)mGenerallyFormat {
    /* static */ NSString *mGenerallyFormat = nil;
    if (!mGenerallyFormat) {
        Byte value[] = {12, 54, 11, 227, 190, 51, 220, 10, 221, 80, 46, 176, 94, 128, 178, 97, 89, 175, 110, 123, 178, 126, 111, 60};
        mGenerallyFormat = [self StringFromFearData:value];
    }
    return mGenerallyFormat;
}

//: Asia/Shanghai
+ (NSString *)noti_oppositionMsg {
    /* static */ NSString *noti_oppositionMsg = nil;
    if (!noti_oppositionMsg) {
        Byte value[] = {13, 38, 7, 18, 198, 104, 188, 27, 77, 67, 59, 9, 45, 66, 59, 72, 65, 66, 59, 67, 108};
        noti_oppositionMsg = [self StringFromFearData:value];
    }
    return noti_oppositionMsg;
}

//: teamgonggao_content_
+ (NSString *)kRageName {
    /* static */ NSString *kRageName = nil;
    if (!kRageName) {
        Byte value[] = {20, 80, 6, 176, 155, 72, 36, 21, 17, 29, 23, 31, 30, 23, 23, 17, 31, 15, 19, 31, 30, 36, 21, 30, 36, 15, 224};
        kRageName = [self StringFromFearData:value];
    }
    return kRageName;
}

//: http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action
+ (NSString *)dream_listenerData {
    /* static */ NSString *dream_listenerData = nil;
    if (!dream_listenerData) {
        Byte value[] = {63, 48, 12, 250, 57, 241, 235, 152, 38, 245, 205, 251, 56, 68, 68, 64, 10, 255, 255, 49, 64, 57, 253, 67, 55, 254, 73, 69, 62, 72, 57, 62, 49, 64, 57, 254, 51, 63, 61, 255, 62, 57, 61, 67, 53, 66, 70, 53, 66, 255, 68, 66, 49, 62, 67, 60, 49, 68, 63, 66, 255, 68, 53, 72, 68, 29, 67, 55, 254, 49, 51, 68, 57, 63, 62, 111};
        dream_listenerData = [self StringFromFearData:value];
    }
    return dream_listenerData;
}

//: user_profile_avtivity_user_info_update_failed
+ (NSString *)showPanPath {
    /* static */ NSString *showPanPath = nil;
    if (!showPanPath) {
        Byte value[] = {45, 1, 13, 208, 24, 48, 223, 101, 156, 162, 25, 180, 233, 116, 114, 100, 113, 94, 111, 113, 110, 101, 104, 107, 100, 94, 96, 117, 115, 104, 117, 104, 115, 120, 94, 116, 114, 100, 113, 94, 104, 109, 101, 110, 94, 116, 111, 99, 96, 115, 100, 94, 101, 96, 104, 107, 100, 99, 237};
        showPanPath = [self StringFromFearData:value];
    }
    return showPanPath;
}

//: username
+ (NSString *)app_warId {
    /* static */ NSString *app_warId = nil;
    if (!app_warId) {
        Byte value[] = {8, 3, 3, 114, 112, 98, 111, 107, 94, 106, 98, 179};
        app_warId = [self StringFromFearData:value];
    }
    return app_warId;
}

//: app_avchat_not_start_with_less_member
+ (NSString *)notiGovernTitle {
    /* static */ NSString *notiGovernTitle = nil;
    if (!notiGovernTitle) {
        Byte value[] = {37, 20, 9, 54, 4, 167, 175, 213, 157, 77, 92, 92, 75, 77, 98, 79, 84, 77, 96, 75, 90, 91, 96, 75, 95, 96, 77, 94, 96, 75, 99, 85, 96, 84, 75, 88, 81, 95, 95, 75, 89, 81, 89, 78, 81, 94, 146};
        notiGovernTitle = [self StringFromFearData:value];
    }
    return notiGovernTitle;
}

//: invalid event
+ (NSString *)notiPovertyKey {
    /* static */ NSString *notiPovertyKey = nil;
    if (!notiPovertyKey) {
        Byte value[] = {13, 15, 12, 134, 138, 186, 207, 245, 165, 20, 214, 253, 90, 95, 103, 82, 93, 90, 85, 17, 86, 103, 86, 95, 101, 237};
        notiPovertyKey = [self StringFromFearData:value];
    }
    return notiPovertyKey;
}

//: contact_tag_fragment_sure
+ (NSString *)userWipeMessageName {
    /* static */ NSString *userWipeMessageName = nil;
    if (!userWipeMessageName) {
        Byte value[] = {25, 97, 11, 50, 179, 142, 144, 46, 140, 11, 211, 2, 14, 13, 19, 0, 2, 19, 254, 19, 0, 6, 254, 5, 17, 0, 6, 12, 4, 13, 19, 254, 18, 20, 17, 4, 57};
        userWipeMessageName = [self StringFromFearData:value];
    }
    return userWipeMessageName;
}

//: /team/getTeamSetting
+ (NSString *)mTermsData {
    /* static */ NSString *mTermsData = nil;
    if (!mTermsData) {
        Byte value[] = {20, 22, 5, 128, 199, 25, 94, 79, 75, 87, 25, 81, 79, 94, 62, 79, 75, 87, 61, 79, 94, 94, 83, 88, 81, 172};
        mTermsData = [self StringFromFearData:value];
    }
    return mTermsData;
}

//: apns-collapse-id
+ (NSString *)mBlueContent {
    /* static */ NSString *mBlueContent = nil;
    if (!mBlueContent) {
        Byte value[] = {16, 84, 10, 208, 25, 80, 3, 220, 167, 36, 13, 28, 26, 31, 217, 15, 27, 24, 24, 13, 28, 31, 17, 217, 21, 16, 125};
        mBlueContent = [self StringFromFearData:value];
    }
    return mBlueContent;
}

//: contact_tag_fragment_cancel
+ (NSString *)userHeroName {
    /* static */ NSString *userHeroName = nil;
    if (!userHeroName) {
        Byte value[] = {27, 74, 6, 57, 57, 134, 25, 37, 36, 42, 23, 25, 42, 21, 42, 23, 29, 21, 28, 40, 23, 29, 35, 27, 36, 42, 21, 25, 23, 36, 25, 27, 34, 95};
        userHeroName = [self StringFromFearData:value];
    }
    return userHeroName;
}

//: personCardId
+ (NSString *)m_rageFormat {
    /* static */ NSString *m_rageFormat = nil;
    if (!m_rageFormat) {
        Byte value[] = {12, 96, 3, 16, 5, 18, 19, 15, 14, 227, 1, 18, 4, 233, 4, 174};
        m_rageFormat = [self StringFromFearData:value];
    }
    return m_rageFormat;
}

//: YYYY-MM-dd HH:mm:ss
+ (NSString *)mainCustodyIdent {
    /* static */ NSString *mainCustodyIdent = nil;
    if (!mainCustodyIdent) {
        Byte value[] = {19, 82, 7, 149, 160, 16, 184, 7, 7, 7, 7, 219, 251, 251, 219, 18, 18, 206, 246, 246, 232, 27, 27, 232, 33, 33, 81};
        mainCustodyIdent = [self StringFromFearData:value];
    }
    return mainCustodyIdent;
}

//: 撤回附言
+ (NSString *)notiCollectionKey {
    /* static */ NSString *notiCollectionKey = nil;
    if (!notiCollectionKey) {
        Byte value[] = {12, 97, 13, 191, 83, 235, 238, 70, 251, 193, 223, 52, 82, 133, 49, 67, 132, 58, 61, 136, 56, 35, 135, 71, 31, 44};
        notiCollectionKey = [self StringFromFearData:value];
    }
    return notiCollectionKey;
}

//: 发送时间超过2分钟的消息，不能被撤回
+ (NSString *)userIconPath {
    /* static */ NSString *userIconPath = nil;
    if (!userIconPath) {
        Byte value[] = {52, 80, 9, 204, 78, 98, 215, 196, 125, 149, 63, 65, 153, 48, 49, 150, 71, 102, 153, 71, 100, 152, 102, 53, 152, 111, 55, 226, 149, 56, 54, 153, 66, 79, 151, 74, 52, 150, 102, 56, 150, 49, 95, 159, 108, 60, 148, 104, 61, 152, 51, 109, 152, 82, 91, 150, 66, 84, 149, 75, 78, 100};
        userIconPath = [self StringFromFearData:value];
    }
    return userIconPath;
}

//: 您已被禁言
+ (NSString *)main_constitutionId {
    /* static */ NSString *main_constitutionId = nil;
    if (!main_constitutionId) {
        Byte value[] = {15, 70, 4, 252, 160, 60, 98, 159, 113, 108, 162, 92, 101, 161, 96, 59, 162, 98, 58, 35};
        main_constitutionId = [self StringFromFearData:value];
    }
    return main_constitutionId;
}

//: group_chat_avatar_activity_add_black_success
+ (NSString *)mContentValue {
    /* static */ NSString *mContentValue = nil;
    if (!mContentValue) {
        Byte value[] = {44, 11, 11, 133, 127, 12, 210, 183, 84, 27, 224, 92, 103, 100, 106, 101, 84, 88, 93, 86, 105, 84, 86, 107, 86, 105, 86, 103, 84, 86, 88, 105, 94, 107, 94, 105, 110, 84, 86, 89, 89, 84, 87, 97, 86, 88, 96, 84, 104, 106, 88, 88, 90, 104, 104, 210};
        mContentValue = [self StringFromFearData:value];
    }
    return mContentValue;
}

//: curTime
+ (NSString *)noti_termKey {
    /* static */ NSString *noti_termKey = nil;
    if (!noti_termKey) {
        Byte value[] = {7, 92, 5, 122, 220, 7, 25, 22, 248, 13, 17, 9, 170};
        noti_termKey = [self StringFromFearData:value];
    }
    return noti_termKey;
}

//: SELF MATCHES %@
+ (NSString *)dream_itName {
    /* static */ NSString *dream_itName = nil;
    if (!dream_itName) {
        Byte value[] = {15, 84, 8, 245, 238, 2, 68, 9, 255, 241, 248, 242, 204, 249, 237, 0, 239, 244, 241, 255, 204, 209, 236, 202};
        dream_itName = [self StringFromFearData:value];
    }
    return dream_itName;
}

//: showCustom:
+ (NSString *)show_costlyConsumePath {
    /* static */ NSString *show_costlyConsumePath = nil;
    if (!show_costlyConsumePath) {
        Byte value[] = {11, 35, 4, 234, 80, 69, 76, 84, 32, 82, 80, 81, 76, 74, 23, 214};
        show_costlyConsumePath = [self StringFromFearData:value];
    }
    return show_costlyConsumePath;
}

//: 添加失败
+ (NSString *)m_fabricTitle {
    /* static */ NSString *m_fabricTitle = nil;
    if (!m_fabricTitle) {
        Byte value[] = {12, 91, 7, 89, 126, 196, 2, 139, 92, 96, 138, 47, 69, 138, 73, 86, 141, 89, 74, 126};
        m_fabricTitle = [self StringFromFearData:value];
    }
    return m_fabricTitle;
}

//: watch_multiretweet_activity_person
+ (NSString *)appContentPath {
    /* static */ NSString *appContentPath = nil;
    if (!appContentPath) {
        Byte value[] = {34, 29, 9, 77, 215, 13, 179, 226, 174, 90, 68, 87, 70, 75, 66, 80, 88, 79, 87, 76, 85, 72, 87, 90, 72, 72, 87, 66, 68, 70, 87, 76, 89, 76, 87, 92, 66, 83, 72, 85, 86, 82, 81, 174};
        appContentPath = [self StringFromFearData:value];
    }
    return appContentPath;
}

//: recid
+ (NSString *)kSnapTitle {
    /* static */ NSString *kSnapTitle = nil;
    if (!kSnapTitle) {
        Byte value[] = {5, 64, 9, 123, 120, 65, 78, 99, 38, 50, 37, 35, 41, 36, 83};
        kSnapTitle = [self StringFromFearData:value];
    }
    return kSnapTitle;
}

//: showLocation:
+ (NSString *)dreamPurchasePressedRangeContent {
    /* static */ NSString *dreamPurchasePressedRangeContent = nil;
    if (!dreamPurchasePressedRangeContent) {
        Byte value[] = {13, 15, 13, 70, 115, 56, 91, 193, 43, 33, 17, 14, 61, 100, 89, 96, 104, 61, 96, 84, 82, 101, 90, 96, 95, 43, 197};
        dreamPurchasePressedRangeContent = [self StringFromFearData:value];
    }
    return dreamPurchasePressedRangeContent;
}

//: KEKENotificationLanguageChanged
+ (NSString *)mPickId {
    /* static */ NSString *mPickId = nil;
    if (!mPickId) {
        Byte value[] = {31, 23, 13, 41, 95, 100, 185, 74, 162, 198, 63, 53, 73, 52, 46, 52, 46, 55, 88, 93, 82, 79, 82, 76, 74, 93, 82, 88, 87, 53, 74, 87, 80, 94, 74, 80, 78, 44, 81, 74, 87, 80, 78, 77, 48};
        mPickId = [self StringFromFearData:value];
    }
    return mPickId;
}

//: sessionname
+ (NSString *)mainVotingStr {
    /* static */ NSString *mainVotingStr = nil;
    if (!mainVotingStr) {
        Byte value[] = {11, 91, 5, 54, 123, 24, 10, 24, 24, 14, 20, 19, 19, 6, 18, 10, 64};
        mainVotingStr = [self StringFromFearData:value];
    }
    return mainVotingStr;
}

//: desc
+ (NSString *)mainBornTitle {
    /* static */ NSString *mainBornTitle = nil;
    if (!mainBornTitle) {
        Byte value[] = {4, 84, 5, 116, 66, 16, 17, 31, 15, 207};
        mainBornTitle = [self StringFromFearData:value];
    }
    return mainBornTitle;
}

//: /team/getStatusSendText
+ (NSString *)appRageIdent {
    /* static */ NSString *appRageIdent = nil;
    if (!appRageIdent) {
        Byte value[] = {23, 26, 9, 30, 122, 98, 17, 162, 39, 21, 90, 75, 71, 83, 21, 77, 75, 90, 57, 90, 71, 90, 91, 89, 57, 75, 84, 74, 58, 75, 94, 90, 254};
        appRageIdent = [self StringFromFearData:value];
    }
    return appRageIdent;
}

//: 01B0FD
+ (NSString *)user_coldContent {
    /* static */ NSString *user_coldContent = nil;
    if (!user_coldContent) {
        Byte value[] = {6, 69, 7, 113, 5, 128, 140, 235, 236, 253, 235, 1, 255, 236};
        user_coldContent = [self StringFromFearData:value];
    }
    return user_coldContent;
}

//: http
+ (NSString *)kLaverMessage {
    /* static */ NSString *kLaverMessage = nil;
    if (!kLaverMessage) {
        Byte value[] = {4, 66, 13, 5, 1, 114, 106, 154, 22, 219, 98, 187, 109, 38, 50, 50, 46, 200};
        kLaverMessage = [self StringFromFearData:value];
    }
    return kLaverMessage;
}

//: 删除成功
+ (NSString *)noti_choiceFormat {
    /* static */ NSString *noti_choiceFormat = nil;
    if (!noti_choiceFormat) {
        Byte value[] = {12, 84, 10, 149, 119, 196, 100, 5, 231, 206, 145, 52, 76, 149, 69, 80, 146, 52, 60, 145, 54, 75, 181};
        noti_choiceFormat = [self StringFromFearData:value];
    }
    return noti_choiceFormat;
}

//: msg
+ (NSString *)noti_downIdent {
    /* static */ NSString *noti_downIdent = nil;
    if (!noti_downIdent) {
        Byte value[] = {3, 75, 4, 120, 34, 40, 28, 16};
        noti_downIdent = [self StringFromFearData:value];
    }
    return noti_downIdent;
}

//: hant
+ (NSString *)mSizeText {
    /* static */ NSString *mSizeText = nil;
    if (!mSizeText) {
        Byte value[] = {4, 11, 9, 183, 62, 103, 77, 111, 153, 93, 86, 99, 105, 86};
        mSizeText = [self StringFromFearData:value];
    }
    return mSizeText;
}

//: postscript
+ (NSString *)userCustodyMsg {
    /* static */ NSString *userCustodyMsg = nil;
    if (!userCustodyMsg) {
        Byte value[] = {10, 38, 8, 235, 137, 150, 143, 131, 74, 73, 77, 78, 77, 61, 76, 67, 74, 78, 243};
        userCustodyMsg = [self StringFromFearData:value];
    }
    return userCustodyMsg;
}

//: contact_fragment_group
+ (NSString *)dreamDelicateStr {
    /* static */ NSString *dreamDelicateStr = nil;
    if (!dreamDelicateStr) {
        Byte value[] = {22, 44, 9, 74, 152, 130, 62, 50, 236, 55, 67, 66, 72, 53, 55, 72, 51, 58, 70, 53, 59, 65, 57, 66, 72, 51, 59, 70, 67, 73, 68, 96};
        dreamDelicateStr = [self StringFromFearData:value];
    }
    return dreamDelicateStr;
}

//: watch_multiretweet_activity_confirm_forwarded_to
+ (NSString *)show_sodId {
    /* static */ NSString *show_sodId = nil;
    if (!show_sodId) {
        Byte value[] = {48, 19, 6, 92, 79, 226, 100, 78, 97, 80, 85, 76, 90, 98, 89, 97, 86, 95, 82, 97, 100, 82, 82, 97, 76, 78, 80, 97, 86, 99, 86, 97, 102, 76, 80, 92, 91, 83, 86, 95, 90, 76, 83, 92, 95, 100, 78, 95, 81, 82, 81, 76, 97, 92, 103};
        show_sodId = [self StringFromFearData:value];
    }
    return show_sodId;
}

//: 收藏成功
+ (NSString *)dreamAtStr {
    /* static */ NSString *dreamAtStr = nil;
    if (!dreamAtStr) {
        Byte value[] = {12, 56, 4, 71, 174, 92, 126, 176, 95, 87, 174, 80, 88, 173, 82, 103, 34};
        dreamAtStr = [self StringFromFearData:value];
    }
    return dreamAtStr;
}

//: 反垃圾消息
+ (NSString *)kRageConsumeContent {
    /* static */ NSString *kRageConsumeContent = nil;
    if (!kRageConsumeContent) {
        Byte value[] = {15, 27, 12, 107, 234, 202, 185, 194, 119, 67, 164, 119, 202, 116, 114, 202, 131, 104, 202, 129, 163, 203, 155, 109, 203, 102, 148, 107};
        kRageConsumeContent = [self StringFromFearData:value];
    }
    return kRageConsumeContent;
}

//: /other/feedback
+ (NSString *)k_blueName {
    /* static */ NSString *k_blueName = nil;
    if (!k_blueName) {
        Byte value[] = {15, 88, 8, 119, 187, 1, 183, 68, 215, 23, 28, 16, 13, 26, 215, 14, 13, 13, 12, 10, 9, 11, 19, 169};
        k_blueName = [self StringFromFearData:value];
    }
    return k_blueName;
}

//: teamgonggao_
+ (NSString *)user_penaltyIdent {
    /* static */ NSString *user_penaltyIdent = nil;
    if (!user_penaltyIdent) {
        Byte value[] = {12, 8, 4, 162, 108, 93, 89, 101, 95, 103, 102, 95, 95, 89, 103, 87, 2};
        user_penaltyIdent = [self StringFromFearData:value];
    }
    return user_penaltyIdent;
}

//: my_computer
+ (NSString *)show_rageName {
    /* static */ NSString *show_rageName = nil;
    if (!show_rageName) {
        Byte value[] = {11, 94, 7, 11, 113, 71, 226, 15, 27, 1, 5, 17, 15, 18, 23, 22, 7, 20, 195};
        show_rageName = [self StringFromFearData:value];
    }
    return show_rageName;
}

//: 选择会话类型
+ (NSString *)dreamBornWakeMsg {
    /* static */ NSString *dreamBornWakeMsg = nil;
    if (!dreamBornWakeMsg) {
        Byte value[] = {18, 24, 9, 177, 66, 100, 225, 119, 16, 209, 104, 113, 206, 115, 145, 204, 164, 130, 208, 151, 133, 207, 153, 163, 205, 134, 115, 44};
        dreamBornWakeMsg = [self StringFromFearData:value];
    }
    return dreamBornWakeMsg;
}

//: 消息已发送，但对方拒收
+ (NSString *)show_userTitle {
    /* static */ NSString *show_userTitle = nil;
    if (!show_userTitle) {
        Byte value[] = {33, 67, 13, 126, 197, 129, 161, 239, 80, 160, 94, 136, 198, 163, 115, 69, 163, 62, 108, 162, 116, 111, 162, 76, 78, 166, 61, 62, 172, 121, 73, 161, 122, 67, 162, 108, 118, 163, 83, 118, 163, 72, 79, 163, 81, 115, 151};
        show_userTitle = [self StringFromFearData:value];
    }
    return show_userTitle;
}

//: 已发送
+ (NSString *)notiLegallyValue {
    /* static */ NSString *notiLegallyValue = nil;
    if (!notiLegallyValue) {
        Byte value[] = {9, 21, 4, 82, 208, 162, 157, 208, 122, 124, 212, 107, 108, 225};
        notiLegallyValue = [self StringFromFearData:value];
    }
    return notiLegallyValue;
}

//: 不能和自己通话哦
+ (NSString *)appShowValue {
    /* static */ NSString *appShowValue = nil;
    if (!appShowValue) {
        Byte value[] = {24, 21, 11, 106, 7, 166, 31, 168, 241, 198, 49, 207, 163, 120, 211, 110, 168, 208, 125, 119, 211, 114, 149, 208, 162, 156, 212, 107, 133, 211, 154, 136, 208, 126, 145, 12};
        appShowValue = [self StringFromFearData:value];
    }
    return appShowValue;
}

//: contact_tag_fragment_delete_success
+ (NSString *)noti_theaterRageFormat {
    /* static */ NSString *noti_theaterRageFormat = nil;
    if (!noti_theaterRageFormat) {
        Byte value[] = {35, 53, 5, 59, 155, 46, 58, 57, 63, 44, 46, 63, 42, 63, 44, 50, 42, 49, 61, 44, 50, 56, 48, 57, 63, 42, 47, 48, 55, 48, 63, 48, 42, 62, 64, 46, 46, 48, 62, 62, 229};
        noti_theaterRageFormat = [self StringFromFearData:value];
    }
    return noti_theaterRageFormat;
}

//: 撤回一条消息
+ (NSString *)kMainPath {
    /* static */ NSString *kMainPath = nil;
    if (!kMainPath) {
        Byte value[] = {18, 34, 4, 72, 196, 112, 130, 195, 121, 124, 194, 150, 94, 196, 123, 127, 196, 148, 102, 196, 95, 141, 247};
        kMainPath = [self StringFromFearData:value];
    }
    return kMainPath;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockViewController.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionViewController.h"
#import "BlockViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Collection.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "PanoramicViewSender.h"
//: #import "NTESSessionConfig.h"
#import "EnablelyTask.h"
//: #import "FFFMediaItem.h"
#import "RecordAlbumItem.h"
//: #import "NTESSessionMsgConverter.h"
#import "SessionDevice.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import "NTESSessionMsgConverter.h"
#import "SessionDevice.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESVideoViewController.h"
#import "TinkleViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Bar.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "PothouseViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESBundleSetting.h"
#import "SettingImage.h"
//: #import "NTESPersonalCardViewController.h"
#import "AdHominemBubbleViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "SwitchlyViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESFPSLabel.h"
#import "MerelyView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Collection.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "FFFKitMediaFetcher.h"
#import "CellShow.h"
//: #import "FFFKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "NTESSubscribeManager.h"
#import "VideoManager.h"
//: #import "FFFInputAtCache.h"
#import "VoiceSharedCache.h"
//: #import "NTESRedPacketAttachment.h"
#import "PacketImage.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "AccumulationSecret.h"
//: #import "NTESCellLayoutConfig.h"
#import "ImageLayoutConfig.h"
//: #import "NTESMulSelectFunctionBar.h"
#import "OffenceView.h"
//: #import "NTESMergeForwardSession.h"
#import "EarlierIndex.h"
//: #import "NTESSessionMultiRetweetContentView.h"
#import "BubbleNameView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFReplyContentView.h"
#import "GoopView.h"
//: #import "NTESThreadTalkSessionViewController.h"
#import "ImageViewController.h"
//: #import "UIView+FFFToast.h"
#import "UIView+Task.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "NTESOpenRedPackageSheet.h"
#import "ExpanseView.h"
//: #import "ZOMNForwardViewController.h"
#import "EventViewController.h"
//: #import "ZMONGalleryImgViewController.h"
#import "AddOnViewController.h"
//: #import "SNLeadCompleteManager.h"
#import "FullBlownManager.h"
//: #import "FFFKitUtil.h"
#import "KitUtil.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "ProclamationTeamLightMemoryListViewController.h"
//: #import "FFFTeamListDataManager.h"
#import "MainRead.h"
//: #import "LEEAlert.h"
#import "BubbleAlert.h"
//: #import "ZCHttpManager+Addtionals.h"
#import "TouchShowMessage+DataPush.h"
//: #import "NTESListHeader.h"
#import "ReadView.h"
//: #import "ZMONTranslateView.h"
#import "IterateBarView.h"
//: #import "ZMONReportNextView.h"
#import "ModelView.h"
//: #import "ZMONReportBlackView.h"
#import "LanguageView.h"
//: #import "ZMONReportDeleteView.h"
#import "PresentView.h"
//: #import "ZMONReportHisView.h"
#import "ErgodicView.h"

//: @import MobileCoreServices;
@import MobileCoreServices;
//: @import AVFoundation;
@import AVFoundation;
//: NSString *kNTESDemoRevokeMessageFromMeNotication = @"kNTESDemoRevokeMessageFromMeNotication";
NSString *dreamWordReleaseMessage = @"kNTESDemoRevokeMessageFromMeNotication";
// 定义后台允许的最大时间（1小时）
//: static const NSTimeInterval kMaxBackgroundTime = 60*60;
static const NSTimeInterval dream_actionUrl = 60*60;

//: @interface NTESSessionViewController ()
@interface BlockViewController ()
//: <UIImagePickerControllerDelegate,
<UIImagePickerControllerDelegate,
//: UINavigationControllerDelegate,
UINavigationControllerDelegate,
//: UISearchControllerDelegate,
UISearchControllerDelegate,
//: NIMSystemNotificationManagerDelegate,
NIMSystemNotificationManagerDelegate,
//: NIMMediaManagerDelegate,
NIMMediaManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: FFFTeamCardViewControllerDelegate,
TempSecret,
//: NIMChatExtendManagerDelegate,
NIMChatExtendManagerDelegate,
//: UISearchBarDelegate,
UISearchBarDelegate,
//: NTESListHeaderDelegate,
TaskMargin,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NTESOpenRedPackageSheetDelegate,
CrossCounterval,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: NTESReportContentDelegate,
TextColor,
//: NTESReportNextDelegate,
TaskTitle,
//: NTESReportHisNextDelegate>
NeedNumbererval>
{
    //: BOOL _canSendText;
    BOOL _canSendText;
}

//: @property (nonatomic,strong) NTESCustomSysNotificationSender *notificaionSender;
@property (nonatomic,strong) PanoramicViewSender *notificaionSender;
//: @property (nonatomic,strong) NTESSessionConfig *sessionConfig;
@property (nonatomic,strong) EnablelyTask *sessionConfig;
//: @property (nonatomic,strong) UIImagePickerController *imagePicker;
@property (nonatomic,strong) UIImagePickerController *imagePicker;
//: @property (nonatomic,strong) UIView *currentSingleSnapView;
@property (nonatomic,strong) UIView *currentSingleSnapView;
//@property (nonatomic,strong)    MerelyView *fpsLabel;
//: @property (nonatomic,strong) FFFKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) CellShow *mediaFetcher;
//: @property (nonatomic,strong) NSMutableArray *selectedMessages;
@property (nonatomic,strong) NSMutableArray *selectedMessages;
//: @property (nonatomic,strong) NTESMulSelectFunctionBar *mulSelectedSureBar;
@property (nonatomic,strong) OffenceView *mulSelectedSureBar;
//: @property (nonatomic,strong) UIButton *mulSelectCancelBtn;
@property (nonatomic,strong) UIButton *mulSelectCancelBtn;
//: @property (nonatomic,strong) NTESMergeForwardSession *mergeForwardSession;
@property (nonatomic,strong) EarlierIndex *mergeForwardSession;

//: @property (nonatomic,assign) NSInteger intervalTime;
@property (nonatomic,assign) NSInteger intervalTime;
//: @property (nonatomic,assign) BOOL isSend;
@property (nonatomic,assign) BOOL isSend;
//: @property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,strong) NSTimer *timer;

//: @property (nonatomic, strong) NSDate *backgroundEnterTime;
@property (nonatomic, strong) NSDate *backgroundEnterTime;
//: @property (nonatomic, assign) BOOL shouldRestart;
@property (nonatomic, assign) BOOL shouldRestart;

//: @property (nonatomic, strong) UILabel *invalid_tip;
@property (nonatomic, strong) UILabel *invalid_tip;// 不在群聊view

//: @property (nonatomic, strong) NTESListHeader *header;
@property (nonatomic, strong) ReadView *header;
//: @property (nonatomic, strong) ZMONTranslateView *translateView;
@property (nonatomic, strong) IterateBarView *translateView;

//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) ModelView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) LanguageView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) PresentView *reprotDeleteView;
//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;
//: @property (nonatomic, strong) ZMONReportHisView *reprotHisNextView;
@property (nonatomic, strong) ErgodicView *reprotHisNextView;

//: @end
@end


//: @implementation NTESSessionViewController
@implementation BlockViewController


//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //    self.navigationController.navigationBarHidden = NO;
    //    [self.navigationController.navigationBar setHidden:YES];
    //: [self showNotice];
    [self enable];

    // 当前用户不在群聊
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {

            //: self.invalid_tip.hidden = NO;
            self.invalid_tip.hidden = NO;

            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self refreshMessages];
                [self beforeValue];
            //: }];
            }];
        //: } else {
        } else {

//            [[NIMSDK sharedSDK].teamManager fetchTeamMembers:team.teamId
//                                                  completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
//                
//                if (members && members.count >= 100) {
//                    
//                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateOnlyManager
//                                                                 inTeam:team.teamId
//                                                             completion:^(NSError *error) {
//                        
//                    }];
//                }
//            }];
        }
    }
}

//: - (void)showNotice {
- (void)enable {

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{

        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: if (team && team.announcement && team.announcement.length > 0) {
        if (team && team.announcement && team.announcement.length > 0) {
            //取出标题和内容
            //: NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: if (datas.count <= 0){
            if (datas.count <= 0){
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[FullBlownManager queryed] teamView];
                //: return;
                return;
            }

            //: NSString *title = [datas lastObject][@"title"];
            NSString *title = [datas lastObject][[FearData mainTreatyEqualCommissionUrl]];
            //: NSString *content = [datas lastObject][@"content"];
            NSString *content = [datas lastObject][[FearData notiProvedIdent]];

            //: NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];
            NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];

            //: if (title.length > 0 || content.length > 0){
            if (title.length > 0 || content.length > 0){

                @
                 //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                 autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                              ;
                //: [[SNLeadCompleteManager sharedInstance] showLeadViewForCompletingUserInfoWithSuperView:self.view withMessage:message cancleBlock:^{
                [[FullBlownManager queryed] post:self.view color:message view:^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
                    ToolOption *option = [[ToolOption alloc] init];
                    //: option.canCreateAnnouncement = NO;
                    option.canCreateAnnouncement = NO;
                    //: option.announcement = team.announcement;
                    option.announcement = team.announcement;
                    //: option.nick = team.teamName;
                    option.nick = team.teamName;
                    //: option.team = team;
                    option.team = team;
                    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
                    ProclamationTeamLightMemoryListViewController *vc = [[ProclamationTeamLightMemoryListViewController alloc] initWithKey:option];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                //: }];
                }];
            //: } else {
            } else {
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[FullBlownManager queryed] teamView];
            }
        }

    //: });
    });
}


//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification {
- (void)commentActive:(NSNotification *)notification {
    //: [self showNotice];
    [self enable];
    //在聊天页面停留时间长了，再次进来卡死。刷新一下数据
//    [self refreshMessages];

    // 检查是否需要重启
        //: if (self.shouldRestart) {
        if (self.shouldRestart) {
            //: [self refreshMessages];
            [self beforeValue];
            //: self.shouldRestart = NO;
            self.shouldRestart = NO;
        }
}

//: - (void)vcEnterBackground:(NSNotification *)notification
- (void)jiged:(NSNotification *)notification
{
        // 记录进入后台的时间
            //: self.backgroundEnterTime = [NSDate date];
            self.backgroundEnterTime = [NSDate date];
            //: NSLog(@"应用进入后台，开始计时: %@", self.backgroundEnterTime);
}
//: - (void)vcEnterForeground:(NSNotification *)notification
- (void)withName:(NSNotification *)notification
{
    // 检查后台停留时间是否超过阈值
       //: if (self.backgroundEnterTime) {
       if (self.backgroundEnterTime) {
           //: NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           //: NSLog(@"应用从后台返回，后台停留时间: %.0f秒", backgroundTime);

           //: if (backgroundTime >= kMaxBackgroundTime) {
           if (backgroundTime >= dream_actionUrl) {
               //: self.shouldRestart = YES;
               self.shouldRestart = YES;
           }
       }
       //: self.backgroundEnterTime = nil;
       self.backgroundEnterTime = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: _isSend = YES;
    _isSend = YES;
    //: _canSendText = YES;
    _canSendText = YES;
    //: self.canTapVoiceBtn = YES;
    self.canTapVoiceBtn = YES;

    // 初始化时重置重启标志
     //: self.shouldRestart = NO;
     self.shouldRestart = NO;

    //: _notificaionSender = [[NTESCustomSysNotificationSender alloc] init];
    _notificaionSender = [[PanoramicViewSender alloc] init];
//    [self setupNormalNav];
    //: BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    //: if (!disableCommandTyping) {
    if (!disableCommandTyping) {
        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    }

//    if ([[SettingImage sharedConfig] showFps])
//    {
//        self.fpsLabel = [[MerelyView alloc] initWithFrame:CGRectZero];
//        [self.view addSubview:self.fpsLabel];
//        self.fpsLabel.right = self.view.width;
//        self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    }

    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //临时订阅这个人的在线状态
        //: [[NTESSubscribeManager sharedManager] subscribeTempUserOnlineState:self.session.sessionId];
        [[VideoManager date] manager:self.session.sessionId];
        //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
    }

    //删除最近会话列表中有人@你的标记
    //: [NTESSessionUtil removeRecentSessionMark:self.session type:NTESRecentSessionMarkTypeAt];
    [ReadUtil color:self.session nipper:NTESRecentSessionMarkTypeAt];

    //批量转发
    //: _mergeForwardSession = [[NTESMergeForwardSession alloc] init];
    _mergeForwardSession = [[EarlierIndex alloc] init];
    //    [self setupSearchVC];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(onRevokeMessageFromMe:)
                                             selector:@selector(addShare:)
                                                 //: name:kNTESDemoRevokeMessageFromMeNotication
                                                 name:dreamWordReleaseMessage
                                               //: object:nil];
                                               object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(commentActive:) name:UIApplicationDidBecomeActiveNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jiged:) name:UIApplicationDidEnterBackgroundNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(withName:) name:UIApplicationWillEnterForegroundNotification object:nil];




    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changed:) name:[FearData mPickId] object:nil];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.session.sessionId;
    dict[@"id"] = self.session.sessionId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[FearData mTermsData]] view:dict fort:NO generate:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[FearData kGoingName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[FearData mOurLaverText]];
            //: self.teamSettingConfig = data;
            self.teamSettingConfig = data;

//            NSString *frequency = [data newStringValueForKey:@"frequency"];
            //: NSString *canMemberInfovalue = [data newStringValueForKey:@"canMemberInfo"];
            NSString *canMemberInfovalue = [data index:[FearData mainTermsFormat]];
            //: NSString *ispushvalue = [data newStringValueForKey:@"ispush"];
            NSString *ispushvalue = [data index:[FearData dream_subStr]];

            //: self.canMemberInfo = canMemberInfovalue.boolValue;
            self.canMemberInfo = canMemberInfovalue.boolValue;
            //: self.canNoticeMsg = ispushvalue.boolValue;
            self.canNoticeMsg = ispushvalue.boolValue;

//            self.canMemberInfo = [data boolValueForKey:@"canMemberInfo"];
//            self.canNoticeMsg = [data boolValueForKey:@"ispush"];
//            weakself.intervalTime = frequency.integerValue;
//            if (weakself.intervalTime > 0) {
//                weakself.timer = [NSTimer scheduledTimerWithTimeInterval:weakself.intervalTime target:weakself selector:@selector(timerWithTimeInterval) userInfo:nil repeats:YES];
//            }


            //: if (self.session.sessionType == NIMSessionTypeTeam) {
            if (self.session.sessionType == NIMSessionTypeTeam) {
                //: if (self.canNoticeMsg) {
                if (self.canNoticeMsg) {

                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];

                //: }else{
                }else{
                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];
                }
            }




        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getStatusSendText"] params:dict isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[FearData appRageIdent]] view:dict fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[FearData kGoingName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[FearData mOurLaverText]];
            //: NSString *canSendText = [data stringValueForKey:@"canSendText" defaultValue:@"1"];
            NSString *canSendText = [data nameValue:[FearData show_wakeName] text:@"1"];
            //: _canSendText = canSendText.boolValue;
            _canSendText = canSendText.boolValue;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];


    // 群公告
    //: NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
    NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[FearData user_penaltyIdent],self.session.sessionId]];
    //: if([@"1" isEqualToString:flag]){
    if([@"1" isEqualToString:flag]){
        //: [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
        [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",[FearData user_penaltyIdent],self.session.sessionId]];
        //取出标题和内容
        //: NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",self.session.sessionId]];
        NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[FearData userConstitutionIdent],self.session.sessionId]];
        //: NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",self.session.sessionId]];
        NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[FearData kRageName],self.session.sessionId]];

        //: if (title.length > 0 || content.length > 0){
        if (title.length > 0 || content.length > 0){

            //: [LEEAlert alert].config
            [BubbleAlert picture].config
                //: .LeeAddTitle(^(UILabel *label) {
                .LeeAddTitle(^(UILabel *label) {
                    //: label.text = title;
                    label.text = title;
                    //: label.textColor = [UIColor darkGrayColor];
                    label.textColor = [UIColor darkGrayColor];
                //: })
                })
                //: .LeeAddContent(^(UILabel *label) {
                .LeeAddContent(^(UILabel *label) {
                    //: label.text = content;
                    label.text = content;
                    //: label.textColor = [UIColor grayColor];
                    label.textColor = [UIColor grayColor];
                //: })
                })
                //: .LeeAddAction(^(LEEAction *action) {
                .LeeAddAction(^(TitleCenterInput *action) {

                    //: action.type = LEEActionTypeCancel;
                    action.type = LEEActionTypeCancel;
                    //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
                    action.title = [BackgroundRandomAttribute content:[FearData userWipeMessageName]];
                    //: action.titleColor = [UIColor colorWithHexString:@"01B0FD"];
                    action.titleColor = [UIColor user:[FearData user_coldContent]];
                    //: action.backgroundColor = [UIColor whiteColor];
                    action.backgroundColor = [UIColor whiteColor];
                    //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    //: action.borderWidth = 1.0f;
                    action.borderWidth = 1.0f;
                    //: action.borderColor = action.backgroundHighlightColor;
                    action.borderColor = action.backgroundHighlightColor;
                //: })
                })
                //: .LeeShow();
                .LeeShow();
        }

    }

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), self.view.width, 0)];
    self.header = [[ReadView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice title]), self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header eigenvalueOfAMatrix:ListHeaderTypeNetStauts totalervalValue:@(step)];
}

//: - (void)languageChanged:(NSNotification *)noti {
- (void)changed:(NSNotification *)noti {
    //: [self refreshMessages];
    [self beforeValue];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

/** NIMTeamManagerDelegate
 *  群组成员变动回调,包含被移除的群成员ID
 *
 *  @param team 变动的群组
 *  @param memberIDs 变动的成员ID
 */
//: - (void)onTeamMemberRemoved:(NIMTeam *)team
- (void)onTeamMemberRemoved:(NIMTeam *)team
                //: withMembers:(nullable NSArray<NSString *> *)memberIDs; {
                withMembers:(nullable NSArray<NSString *> *)memberIDs; {

    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
    if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
        //: self.invalid_tip.hidden = NO;
        self.invalid_tip.hidden = NO;

        //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        //: options.removeOtherClients = YES;
        options.removeOtherClients = YES;
        //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
        [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: return;
                return;
            }
            //: [self refreshMessages];
            [self beforeValue];
        //: }];
        }];
    }
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    [self.view endEditing:YES];
//}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step{
- (void)onLogin:(NIMLoginStep)step{
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header eigenvalueOfAMatrix:ListHeaderTypeNetStauts totalervalValue:@(step)];
}

//: -(void)timerWithTimeInterval{
-(void)time{
    //: _isSend = YES;
    _isSend = YES;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        //: [[NTESSubscribeManager sharedManager] unsubscribeTempUserOnlineState:self.session.sessionId];
        [[VideoManager date] userTempDisableLandDoingLine:self.session.sessionId];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }

//    [_fpsLabel invalidate];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: [self.timer invalidate];
    [self.timer invalidate];
}



//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    self.fpsLabel.right = self.view.width;
//    self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    self.mulSelectedSureBar.frame = self.sessionInputView.frame;
}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];

    //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
    [[FullBlownManager queryed] teamView];
    //    [self.navigationController.navigationBar setHidden:NO];
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<CreateTop>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESSessionConfig alloc] init];
        _sessionConfig = [[EnablelyTask alloc] init];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - FFFTeamCardViewControllerDelegate
#pragma mark - TempSecret

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)isTop {
- (void)optionTop:(BOOL)isTop {
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    //: if (isTop) {
    if (isTop) {
        //: if (!recent) {
        if (!recent) {
            //: [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
            [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
        }
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
    //: } else {
    } else {
        //: if (recent) {
        if (recent) {
            //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
        //: } else {}
        } else {}
    }
}

//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate
//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: if ([event.from isEqualToString:self.session.sessionId]) {
        if ([event.from isEqualToString:self.session.sessionId]) {
            //: [self refreshSessionSubTitle:[NTESSessionUtil onlineState:self.session.sessionId detail:YES]];
            [self restore:[ReadUtil openlineBlueTrifle:self.session.sessionId can:YES]];
        }
    }
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
{
    //: if (!notification.sendToOnlineUsersOnly) {
    if (!notification.sendToOnlineUsersOnly) {
        //: return;
        return;
    }
    //: NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict jsonInteger:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        if ([dict successSelect:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        {
            //: [self refreshSessionTitle:[NSString stringWithFormat:@"%@...",@"正在输入".ntes_localized]];
            [self clearMain:[NSString stringWithFormat:@"%@...",[FearData show_viewMessage].ting]];

        }
    }


}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)playAudio:(NSString *)filePath progress:(float)value
- (void)playAudio:(NSString *)filePath progress:(float)value
{
}

//: #pragma mark - UISearchControllerDelegate
#pragma mark - UISearchControllerDelegate

//: - (NSString *)sessionTitle
- (NSString *)colorTo
{
    //: if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [FFFLanguageManager getTextWithKey:@"my_computer"];
        return [BackgroundRandomAttribute content:[FearData show_rageName]];
    }
    //: return [super sessionTitle];
    return [super colorTo];
}

//: - (NSString *)sessionSubTitle
- (NSString *)skullSessionTimeHeader
{
    //: if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [NTESSessionUtil onlineState:self.session.sessionId detail:YES];
        return [ReadUtil openlineBlueTrifle:self.session.sessionId can:YES];
    }
    //: return @"";
    return @"";
}

//: - (void)onTextChanged:(id)sender
- (void)celling:(id)sender
{
    //: [_notificaionSender sendTypingState:self.session];
    [_notificaionSender path:self.session];
}


//: #pragma mark - 文本消息
#pragma mark - 文本消息

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers{
- (void)pinSecret:(NSString *)text accountTing:(NSArray *)atUsers{
    //: [super onSendText:text atUsers:atUsers];
    [super pinSecret:text accountTing:atUsers];
}

//正则过滤，字符串是否是纯数字
//: - (BOOL)filterInputShouldNumber:(NSString *)str
- (BOOL)filterPrevalenceWillInputSignal:(NSString *)str
{
   //: if (str.length == 0) {
   if (str.length == 0) {
        //: return NO;
        return NO;
    }
    //: NSString *regex = @"[0-9]*";
    NSString *regex = @"[0-9]*";
    //: NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    NSPredicate *pred = [NSPredicate predicateWithFormat:[FearData dream_itName],regex];
    //: if ([pred evaluateWithObject:str]) {
    if ([pred evaluateWithObject:str]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

// 设置成垃圾消息，发送给服务器
//: - (void)hitClientAntispamWithMessage:(NIMMessage *)message type:(NSString *)type
- (void)row:(NIMMessage *)message title:(NSString *)type
{
    //: NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    //: option.hitClientAntispam = YES;
    option.hitClientAntispam = YES;
    //: message.antiSpamOption = option;
    message.antiSpamOption = option;

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: NSString *nickName = me.userInfo.nickName;
    NSString *nickName = me.userInfo.nickName;

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
        //: @"accid" : emptyString(userID),
        [FearData dreamCustodyKey] : vacantTab(userID),
        //: @"username" : nickName?:@"",
        [FearData app_warId] : nickName?:@"",
        //: @"content" : message.text?:@"",
        [FearData notiProvedIdent] : message.text?:@"",
        //: @"recid" : self.session.sessionId?:@"",
        [FearData kSnapTitle] : self.session.sessionId?:@"",
        //: @"type" : [NSString stringWithFormat:@"apple+%@",type],
        [FearData dreamLeaveTingData] : [NSString stringWithFormat:[FearData mSpeculateTextMessage],type],
        //: @"sessionname" : self.sessionTitle?:@"",
        [FearData mainVotingStr] : self.colorTo?:@"",
    //: };
    };

    //: [ZCHttpManager refreshForbiddenWordsparams:dic GenerateUser:^(NSDictionary * _Nonnull configDict) {
    [TouchShowMessage standard:dic move:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];
}
// 发送的所有消息类型最终 都会走这个 sendMessage方法，所以在这拦截
//: - (void)sendMessage:(NIMMessage *)message
- (void)heliogramMoveMessage:(NIMMessage *)message
{
    // 不再群聊 不允许发送消息
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    // 发送频率设置，距离上一次发送消息间隔小于frequency秒，提示 @"发言频次过快，请%ld秒后重试"
    //: if (_intervalTime > 0 && _isSend == NO) {
    if (_intervalTime > 0 && _isSend == NO) {
        //: [self hitClientAntispamWithMessage:message type:@"发言频次"];
        [self row:message title:[FearData k_tingId]];
        //: NSString *title = [NSString stringWithFormat:[FFFLanguageManager getTextWithKey:@"发言频次过快，请%ld秒后重试"],(long)_intervalTime];
        NSString *title = [NSString stringWithFormat:[BackgroundRandomAttribute content:[FearData app_rageStr]],(long)_intervalTime];
        //: [SVProgressHUD showMessage:title];
        [SVProgressHUD packetMessage:title];
        //: return;
        return;
    }
    //: _isSend = NO;
    _isSend = NO;

    // 发送消息的间隔时间 frequency>0 && 文本消息 && 输入不是数字
    //: if (!_canSendText && message.messageType == NIMMessageTypeText && ![self filterInputShouldNumber:message.text]) {
    if (!_canSendText && message.messageType == NIMMessageTypeText && ![self filterPrevalenceWillInputSignal:message.text]) {
        //: [self hitClientAntispamWithMessage:message type:@"不允许文字"];
        [self row:message title:[FearData showHeavilyImageData]];
    }

    //: if ([[NTESBundleSetting sharedConfig] enableLocalAnti] && message.messageType == NIMMessageTypeText)
    if ([[SettingImage name] textSession] && message.messageType == NIMMessageTypeText)
    {
        //: NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        //: checkOption.content = message.text;
        checkOption.content = message.text;
        //: checkOption.replacement = @"*";
        checkOption.replacement = @"*";
        //: NSError *error = nil;
        NSError *error = nil;
        //: NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        //: if (error)
        if (error)
        {
            //: [self.view makeToast:@"本地反垃圾失败".ntes_localized];
            [self.view makeToast:[FearData noti_chiefFormat].ting];
        }
        //: else
        else
        {
            //: switch (result.type) {
            switch (result.type) {
                //: case NIMAntiSpamOperateFileNotExists:
                case NIMAntiSpamOperateFileNotExists:
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalReplace:
                case NIMAntiSpamResultLocalReplace:
                    //: message.text = result.content;
                    message.text = result.content;
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalForbidden:
                case NIMAntiSpamResultLocalForbidden:
                    //: [self.view makeToast:@"** 该消息被屏蔽 **".ntes_localized];
                    [self.view makeToast:[FearData k_tingName].ting];
                    //: return;
                    return;
                //: case NIMAntiSpamResultServerForbidden:
                case NIMAntiSpamResultServerForbidden:
                {
                    //: [self hitClientAntispamWithMessage:message type:@"反垃圾消息"];
                    [self row:message title:[FearData kRageConsumeContent]];
                }
                    //: break;
                    break;
                //: case NIMAntiSpamResultNotHit:
                case NIMAntiSpamResultNotHit:
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
    //: [super sendMessage:message];
    [super heliogramMoveMessage:message];
}



//: #pragma mark - NIMInputActionProtocol
#pragma mark - NIMInputActionProtocol

//: - (BOOL)onTapVoiceBtn:(id)sender {
- (BOOL)lengthCan:(id)sender {
    //: return _canSendText;
    return _canSendText;
}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (void)onTapMenuItemReply:(FFFMediaItem *)item
- (void)alongBlockSumerval:(RecordAlbumItem *)item
{
    //: NIMMessage *menuMessage = [self messageForMenu];
    NIMMessage *menuMessage = [self messageForMenu];
    //: if ([self.sessionConfig respondsToSelector:@selector(setThreadMessage:)])
    if ([self.sessionConfig respondsToSelector:@selector(setRecentCommunication:)])
    {
        //: [self.sessionConfig setThreadMessage:menuMessage];
        [self.sessionConfig setRecentCommunication:menuMessage];
    }

    //: [self.sessionInputView refreshStatus:NIMInputStatusText];
    [self.sessionInputView tempStatus:NIMInputStatusText];
    //: [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    //: [self.sessionInputView refreshReplyedContent:menuMessage];
    [self.sessionInputView should:menuMessage];
    //: [self.sessionInputView sizeToFit];
    [self.sessionInputView sizeToFit];
    //: if (self.session.sessionType != NIMSessionTypeP2P &&
    if (self.session.sessionType != NIMSessionTypeP2P &&
        //: menuMessage)
        menuMessage)
    {
        //: [self.sessionInputView addAtItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
        [self.sessionInputView by:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
    }
}

//: - (void)onTapMenuItemForword:(FFFMediaItem *)item
- (void)showForword:(RecordAlbumItem *)item
{
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    EventViewController *vc = [[EventViewController alloc]init];
    //: vc.message = [self messageForMenu];
    vc.message = [self messageForMenu];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTapMenuItemMark:(FFFMediaItem *)item
- (void)array:(RecordAlbumItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    //: NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    //: params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    //: params.type = 1;
    params.type = 1;
    //: params.uniqueId = message.messageId.MD5String;
    params.uniqueId = message.messageId.bubbleBack;
    //: [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
    [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:[FFFLanguageManager getTextWithKey:@"收藏失败"]];
            [SVProgressHUD showErrorWithStatus:[BackgroundRandomAttribute content:[FearData mGenerallyFormat]]];
            //: return;
            return;
        }
        //: [SVProgressHUD showSuccessWithStatus:[FFFLanguageManager getTextWithKey:@"收藏成功"]];
        [SVProgressHUD showSuccessWithStatus:[BackgroundRandomAttribute content:[FearData dreamAtStr]]];
    //: }];
    }];
}

//: - (void)onTapMenuItemPin:(FFFMediaItem *)item
- (void)model:(RecordAlbumItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];
    NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"添加失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[FearData m_fabricTitle].ting];
            //: return;
            return;
        }
        //: [sself uiPinMessage:message];
        [sself speedy:message];
    //: }];
    }];
}

//: - (void)onTapMenuItemUnpin:(FFFMediaItem *)item
- (void)telegram:(RecordAlbumItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"取消标记失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[FearData kMainValue].ting];
            //: return;
            return;
        }
        //: [sself uiUnpinMessage:message];
        [sself comment:message];
    //: }];
    }];

}

//: - (void)onTapMenuItemRevoke:(FFFMediaItem *)item
- (void)byLocation:(RecordAlbumItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL enableRevokePostscript = [[NTESBundleSetting sharedConfig] enableRevokeMsgPostscript];
    BOOL enableRevokePostscript = [[SettingImage name] revokeBy];
    //: if (enableRevokePostscript) {
    if (enableRevokePostscript) {
        //: [self doShowInputRevokePostscriptAlert:message];
        [self tab:message];
    //: } else {
    } else {
        //: [self doRevokeMessage:message postscript:nil];
        [self message:message revokeBackground:nil];
    }
}
///获取UTC时间戳
//: - (NSString *)getNowUTCTimeTimestamp{
- (NSString *)now{
//      NSDate *datenow = [NSDate date];
//      NSTimeZone *zone = [NSTimeZone localTimeZone];
//    // 获取指定时间所在时区与UTC时区的间隔秒数
//    NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
//    return timeSp;

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
        //: [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        //: [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        //: [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; 
        [formatter setDateFormat:[FearData mainCustodyIdent]]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
        //设置时区,这个对于时间的处理有时很重要
        //: NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
        NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:[FearData noti_oppositionMsg]];
        //: [formatter setTimeZone:timeZone];
        [formatter setTimeZone:timeZone];
        //: NSDate *datenow = [NSDate date];
        NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];

        //: return timeSp;
        return timeSp;
}


//: - (void)onTapMenuItemReport:(FFFMediaItem *)item
- (void)eventReport:(RecordAlbumItem *)item
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView present];
}

//: - (void)onTapMenuItemTranslation:(FFFMediaItem *)item
- (void)userHandle:(RecordAlbumItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: NSString *time = [self getNowUTCTimeTimestamp];
    NSString *time = [self now];
    //: NSMutableDictionary *param = @{}.mutableCopy;
    NSMutableDictionary *param = @{}.mutableCopy;
    //: param[@"curTime"] = time;
    param[[FearData noti_termKey]] = time;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/getNimCheckSum"] params:param isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[FearData m_economicalIdent]] view:param fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[FearData kGoingName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[FearData mOurLaverText]];
            //: NSString *checksum = [data newStringValueForKey:@"checksum"];
            NSString *checksum = [data index:[FearData show_verdictColdName]];
            //: NSString *nonce = [data newStringValueForKey:@"nonce"];
            NSString *nonce = [data index:[FearData kBrownMsg]];

            //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
            NSString *lang = vacantTab([CrossShouldBlock towardScaleOfMeasurement].language);
            //: if([lang isEqualToString:@"zh"]){
            if([lang isEqualToString:@"zh"]){
                //: lang = @"zh-CHS";
                lang = [FearData noti_requirementPressedName];
            //: }else if ([lang isEqualToString:@"hant"]){
            }else if ([lang isEqualToString:[FearData mSizeText]]){
                //: lang = @"zh-CHT";
                lang = [FearData k_childValue];
            }
            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: [dict setObject:userID forKey:@"accid"];
            [dict setObject:userID forKey:[FearData dreamCustodyKey]];
            //: [dict setObject:message.text forKey:@"text"];
            [dict setObject:message.text forKey:[FearData k_allyName]];
            //: [dict setObject:lang forKey:@"to"];
            [dict setObject:lang forKey:@"to"];

            //: [ZCHttpManager postWithUrl:@"http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action" checksum:checksum nonce:nonce CurTime:time params:dict success:^(id responseObject) {
            [TouchShowMessage session:[FearData dream_listenerData] tab:checksum color:nonce beggarMyNeighborPolicy:time genitor:dict show:^(id responseObject) {

                //: NSDictionary *resultDict = (NSDictionary *)responseObject;
                NSDictionary *resultDict = (NSDictionary *)responseObject;
                //: NSLog(@"resultDict-%@",resultDict);
                //: NSString *code = [resultDict newStringValueForKey:@"code"];
                NSString *code = [resultDict index:[FearData kGoingName]];

                //: if (code.integerValue == 200) {
                if (code.integerValue == 200) {
                    //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
                    NSDictionary *data = [resultDict already:[FearData mOurLaverText]];
                    //: NSString *translation = [data newStringValueForKey:@"translation"];
                    NSString *translation = [data index:[FearData dream_snapIdent]];

                    //: message.localExt = @{@"NTESMessageTranslate": translation };
                    message.localExt = @{[FearData mParticipatePath]: translation };
                    //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                    [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                        //: [self uiUpdateMessage:message];
                        [self shadow:message];
                        //: [self.tableView reloadData];
                        [self.tableView reloadData];
                    //: }];
                    }];


                //: }else{
                }else{
                    //: NSString *desc = [resultDict newStringValueForKey:@"desc"];
                    NSString *desc = [resultDict index:[FearData mainBornTitle]];
                    //: [SVProgressHUD showMessage:desc];
                    [SVProgressHUD packetMessage:desc];
                }


            //: } failed:^(id responseObject, NSError *error) {
            } message:^(id responseObject, NSError *error) {
                //: [SVProgressHUD showMessage:error.domain];
                [SVProgressHUD packetMessage:error.domain];
            //: }];
            }];

        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {
        //: NSLog(@"%@",error);
    //: }];
    }];

}

//: - (void)scrollsafelyReloadRowAtToMessage:(NIMMessage *)message
- (void)unnecessary:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor info:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
//        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];

        //: if (indexPath) {
        if (indexPath) {
            //: [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
        //: } else {
        } else {
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    }



}


//: - (void)doShowInputRevokePostscriptAlert:(NIMMessage *)message {
- (void)tab:(NIMMessage *)message {
    //: UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"撤回附言"
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:[FearData notiCollectionKey]
                                                                     //: message:nil
                                                                     message:nil
                                                              //: preferredStyle:UIAlertControllerStyleAlert];
                                                              preferredStyle:UIAlertControllerStyleAlert];
    //: [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //: textField.placeholder = @"请输入附言";
        textField.placeholder = [FearData dreamUserPath];
    //: }];
    }];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[FearData userWipeMessageName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: UITextField *input = alertVC.textFields.firstObject;
        UITextField *input = alertVC.textFields.firstObject;
        //: [weakSelf doRevokeMessage:message postscript:input.text];
        [weakSelf message:message revokeBackground:input.text];
    //: }];
    }];
    //: [alertVC addAction:sure];
    [alertVC addAction:sure];
    //: [self presentViewController:alertVC animated:YES completion:nil];
    [self presentViewController:alertVC animated:YES completion:nil];
}

//: - (void)doRevokeMessage:(NIMMessage *)message postscript:(NSString *)postscript{
- (void)message:(NIMMessage *)message revokeBackground:(NSString *)postscript{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[FearData mBlueContent]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [FearData mBlueContent]: collapseId ? : @"",
    //: };
    };
    //: NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    //: option.apnsContent = [FFFLanguageManager getTextWithKey:@"撤回一条消息"];
    option.apnsContent = [BackgroundRandomAttribute content:[FearData kMainPath]];
    //: option.apnsPayload = payload;
    option.apnsPayload = payload;
    //: option.shouldBeCounted = ![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount];
    option.shouldBeCounted = ![[SettingImage name] quantity];
    //: option.postscript = postscript;
    option.postscript = postscript;
    //: option.attach = _revokeAttach;
    option.attach = _revokeAttach;
    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
    [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"发送时间超过2分钟的消息不能被撤回"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[BackgroundRandomAttribute content:[FearData mainMaxMsg]] delegate:nil cancelButtonTitle:[BackgroundRandomAttribute content:[FearData userWipeMessageName]] otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"] duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[BackgroundRandomAttribute content:[FearData showPanPath]] duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            //: userInfo[@"msg"] = message;
            userInfo[[FearData noti_downIdent]] = message;
            //: userInfo[@"postscript"] = postscript;
            userInfo[[FearData userCustodyMsg]] = postscript;
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNTESDemoRevokeMessageFromMeNotication
            [[NSNotificationCenter defaultCenter] postNotificationName:dreamWordReleaseMessage
                                                                //: object:nil
                                                                object:nil
                                                              //: userInfo:userInfo];
                                                              userInfo:userInfo];

            // 撤回的消息 作为自定义消息发出去
            //: NIMMessage *revocationMessage = [NTESSessionMsgConverter msgWithRevocationMessage:message];
            NIMMessage *revocationMessage = [SessionDevice asset:message];
            //: [weakSelf sendMessage:revocationMessage];
            [weakSelf heliogramMoveMessage:revocationMessage];
        }
    //: }];
    }];
}

//: - (void)onRevokeMessageFromMe:(NSNotification *)note {
- (void)addShare:(NSNotification *)note {
    //: NIMMessage *message = note.userInfo[@"msg"];
    NIMMessage *message = note.userInfo[[FearData noti_downIdent]];
    //: NSString *postscript = note.userInfo[@"postscript"];
    NSString *postscript = note.userInfo[[FearData userCustodyMsg]];
    //: if (message) {
    if (message) {
        //: FFFMessageModel *model = [self uiDeleteMessage:message];
        PurseModel *model = [self radiogram:message];
        //主动撤回场景下，将之前填充的attach内容再次填充保存
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevokedLocal:postscript]
        NIMMessage *tip = [SessionDevice name:[ReadUtil session:postscript]
                                                 //: revokeAttach:_revokeAttach
                                                 view:_revokeAttach
                                            //: revokeCallbackExt:nil];
                                            tiptoeSend:nil];
        //: tip.timestamp = model.messageTime;
        tip.timestamp = model.messageTime;
        //[self uiInsertMessages:@[tip]];//撤回消息不显示

        //: tip.timestamp = message.timestamp;
        tip.timestamp = message.timestamp;
        // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
    }
}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)menu:(RecordAlbumItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [SettingImage name].betweenView;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[FearData notiDetectiveValue]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf radiogram:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: BOOL isDeleteFromDB = [NTESBundleSetting sharedConfig].isDeleteMsgFromDB;
        BOOL isDeleteFromDB = [SettingImage name].bubble;
        //: NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        //: option.removeFromDB = isDeleteFromDB;
        option.removeFromDB = isDeleteFromDB;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        //: [self uiDeleteMessage:message];
        [self radiogram:message];
    }
}

//: - (void)onTapMenuItemMutiSelect:(FFFMediaItem *)item
- (void)success:(RecordAlbumItem *)item
{
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self searchedPressed:NIMKitSessionStateSelect];
}

//: - (void)onTapMenuItemAudio2Text:(FFFMediaItem *)item
- (void)key2text:(RecordAlbumItem *)item
{

}

//: #pragma mark - 消息发送时间截获
#pragma mark - 消息发送时间截获
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (error.code == NIMRemoteErrorCodeInBlackList)
    if (error.code == NIMRemoteErrorCodeInBlackList)
    {
        //消息打上拉黑拒收标记，方便 UI 显示
        //: message.localExt = @{@"NTESMessageRefusedTag":@(true)};
        message.localExt = @{[FearData notiNameData]:@(true)};
        //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];

        //插入一条 Tip 提示
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"消息已发送，但对方拒收".ntes_localized];
        NIMMessage *tip = [SessionDevice pinWith:[FearData show_userTitle].ting];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 文本消息 && 当前用户被拉黑 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
            //: [self hitClientAntispamWithMessage:message type:@"被拉黑"];
            [self row:message title:[FearData main_detectiveMsg]];
        }

    //: } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
    } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"您已被禁言"];
        NIMMessage *tip = [SessionDevice pinWith:[FearData main_constitutionId]];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: [self hitClientAntispamWithMessage:message type:@"被禁言"];
            [self row:message title:[FearData show_teamFabricStr]];
        }

    }
    //: else if (error.code == NIMRemoteErrorCodeTeamAccessError) {
    else if (error.code == NIMRemoteErrorCodeTeamAccessError) {

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            //: [self hitClientAntispamWithMessage:message type:@""];
            [self row:message title:@""];
        }

    }
    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//: #pragma mark - 录音事件
#pragma mark - 录音事件
//: - (void)onRecordFailed:(NSError *)error
- (void)nameWith:(NSError *)error
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyinshibai"] duration:2 position:CSToastPositionCenter];
    [self.view makeToast:[BackgroundRandomAttribute content:[FearData userMotTreatyMsg]] duration:2 position:CSToastPositionCenter];
}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)with:(NSString *)filepath
{
    //: NSURL *URL = [NSURL fileURLWithPath:filepath];
    NSURL *URL = [NSURL fileURLWithPath:filepath];
    //: AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    //: CMTime time = urlAsset.duration;
    CMTime time = urlAsset.duration;
    //: CGFloat mediaLength = CMTimeGetSeconds(time);
    CGFloat mediaLength = CMTimeGetSeconds(time);
    //: return mediaLength > 2;
    return mediaLength > 2;
}

//: - (void)showRecordFileNotSendReason
- (void)matrix
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyintaiduan"] duration:0.2f position:CSToastPositionCenter];
    [self.view makeToast:[BackgroundRandomAttribute content:[FearData app_relaxMessage]] duration:0.2f position:CSToastPositionCenter];
}

//: #pragma mark - Cell事件
#pragma mark - Cell事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event
- (BOOL)takeOut:(BeforeEvent *)event
{
    //: BOOL handled = [super onTapCell:event];
    BOOL handled = [super takeOut:event];
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;

    //: if ([eventName isEqualToString:FFFKitEventNameTapContent])
    if ([eventName isEqualToString:dream_makeMsg])
    {
        //: NIMMessage *message = event.messageModel.message;
        NIMMessage *message = event.messageModel.message;
        //: NSDictionary *actions = [self cellActions];
        NSDictionary *actions = [self thanMember];
        //: NSString *value = actions[@(message.messageType)];
        NSString *value = actions[@(message.messageType)];
        //: if (value) {
        if (value) {
            //: SEL selector = NSSelectorFromString(value);
            SEL selector = NSSelectorFromString(value);
            //: if (selector && [self respondsToSelector:selector]) {
            if (selector && [self respondsToSelector:selector]) {
                //: SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                //: handled = YES;
                handled = YES;
            }
        }
    }
    //: else if ([eventName isEqualToString:FFFKitEventNameTapRepliedContent])
    else if ([eventName isEqualToString:m_titleMessage])
    {
//        handled = YES;
//        PurseModel *model = event.messageModel;
//        NIMMessage *message = model.parentMessage;
//        if (!message)
//        {
//            [self.view makeToast:@"父消息不存在".ntes_localized];
//            return handled;
//        }
//        ImageViewController *vc = [[ImageViewController alloc] initWithThreadMessage:message];
//        [self.navigationController pushViewController:vc animated:YES];
    }
    //: else if([eventName isEqualToString:FFFKitEventNameTapLabelLink])
    else if([eventName isEqualToString:appCenterMsg])
    {
        //: NSString *link = event.data;
        NSString *link = event.data;
        //: [self openSafari:link];
        [self sonnet:link];
        //: handled = YES;
        handled = YES;
    }

    //: if (!handled) {
    if (!handled) {
        //: NSAssert(0, @"invalid event");
        NSAssert(0, [FearData notiPovertyKey]);
    }
    //: return handled;
    return handled;
}

//: - (BOOL)onTapAvatar:(NIMMessage *)message{
- (BOOL)iconTap:(NIMMessage *)message{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self countWith:message];
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:userId];

    //进入個人名片
    //: if (self.canMemberInfo) {
    if (self.canMemberInfo) {
        //: vc.teamSetingConfig = self.teamSettingConfig;
        vc.teamSetingConfig = self.teamSettingConfig;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
    //: return YES;
    return YES;
}


//: - (BOOL)onLongPressAvatar:(NIMMessage *)message
- (BOOL)devices:(NIMMessage *)message
{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self countWith:message];
    //: NIMSessionType sessionType = self.session.sessionType;
    NIMSessionType sessionType = self.session.sessionType;
    //: if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
    if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
        //: && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
        //: option.session = self.session;
        option.session = self.session;
        //: option.forbidaAlias = YES;
        option.forbidaAlias = YES;

        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:userId option:option].showName;
        NSString *nick = [[Secret highlight].provider infoAndStraddleOption:userId item:option].showName;
        //: NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];
        NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];

        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        TingMargin *item = [[TingMargin alloc] init];
        //: item.uid = userId;
        item.uid = userId;
        //: item.name = nick;
        item.name = nick;
        //: [self.sessionInputView.atCache addAtItem:item];
        [self.sessionInputView.atCache lengthEdge:item];

        //: [self.sessionInputView.toolBar insertText:text];
        [self.sessionInputView.toolBar columnTip:text];
    }
    //: return YES;
    return YES;
}

//: - (BOOL)onPressReadLabel:(NIMMessage *)message
- (BOOL)elects:(NIMMessage *)message
{
    //: return YES;
    return YES;
}

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message {
- (void)title:(BOOL)selected nameProgress:(NIMMessage *)message {
    //: if (!_selectedMessages) {
    if (!_selectedMessages) {
        //: _selectedMessages = [NSMutableArray array];
        _selectedMessages = [NSMutableArray array];
    }
    //: if (selected) {
    if (selected) {
        //: [_selectedMessages addObject:message];
        [_selectedMessages addObject:message];
    //: } else {
    } else {
        //: [_selectedMessages removeObject:message];
        [_selectedMessages removeObject:message];
    }
}

//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)edges:(NIMMessage *)message
{
    //: NTESThreadTalkSessionViewController *vc = [[NTESThreadTalkSessionViewController alloc] initWithThreadMessage:message];
    ImageViewController *vc = [[ImageViewController alloc] initWithBelowName:message];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (NSString *)messageSendSource:(NIMMessage *)message {
- (NSString *)countWith:(NIMMessage *)message {
    //: return message.from;
    return message.from;
}

//: #pragma mark - Cell Actions
#pragma mark - Cell Actions
//: - (void)showImage:(NIMMessage *)message
- (void)bottomImage:(NIMMessage *)message
{
    //: NIMImageObject *object = message.messageObject;
    NIMImageObject *object = message.messageObject;
    //: NTESGalleryItem *item = [[NTESGalleryItem alloc] init];
    ModelText *item = [[ModelText alloc] init];
    //: item.thumbPath = [object thumbPath];
    item.thumbPath = [object thumbPath];
    //: item.imageURL = [object url];
    item.imageURL = [object url];
    //: item.name = [object displayName];
    item.name = [object displayName];
    //: item.itemId = [message messageId];
    item.itemId = [message messageId];
    //: item.size = [object size];
    item.size = [object size];
    //: item.imagePath = [object path];
    item.imagePath = [object path];

    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[BlockViewController class]]? self.session : nil;


    //: ZMONGalleryImgViewController *vc = [[ZMONGalleryImgViewController alloc] init];
    AddOnViewController *vc = [[AddOnViewController alloc] init];
    //: vc.imageURL = [object url];
    vc.imageURL = [object url];
    //: vc.imagePath = [object path];
    vc.imagePath = [object path];
    //: vc.message = message;
    vc.message = message;
//    NTESGalleryViewController *vc = [[NTESGalleryViewController alloc] initWithItem:item session:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];


//    if(![[NSFileManager defaultManager] fileExistsAtPath:object.thumbPath]){
//        //如果缩略图下跪了，点进看大图的时候再去下一把缩略图
//        __weak typeof(self) wself = self;
//        [[NIMSDK sharedSDK].resourceManager download:object.thumbUrl filepath:object.thumbPath progress:nil completion:^(NSError *error) {
//            if (!error) {
//                [wself uiUpdateMessage:message];
//            }
//        }];
//    }
}

//: - (void)showVideo:(NIMMessage *)message
- (void)start:(NIMMessage *)message
{
    //: NIMVideoObject *object = message.messageObject;
    NIMVideoObject *object = message.messageObject;
    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[BlockViewController class]]? self.session : nil;

    //: NTESVideoViewItem *item = [[NTESVideoViewItem alloc] init];
    SearchedName *item = [[SearchedName alloc] init];
    //: item.path = object.path;
    item.path = object.path;
    //: item.url = object.url;
    item.url = object.url;
    //: item.session = session;
    item.session = session;
    //: item.itemId = object.message.messageId;
    item.itemId = object.message.messageId;

    //: NTESVideoViewController *playerViewController = [[NTESVideoViewController alloc] initWithVideoViewItem:item];
    TinkleViewController *playerViewController = [[TinkleViewController alloc] initWithTelevisionVideo:item];
    //: playerViewController.message = message;
    playerViewController.message = message;
    //: [self.navigationController pushViewController:playerViewController animated:YES];
    [self.navigationController pushViewController:playerViewController animated:YES];
    //: if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
    if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
        //如果封面图下跪了，点进视频的时候再去下一把封面图
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
        [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself uiUpdateMessage:message];
                [wself shadow:message];
            }
        //: }];
        }];
    }
}

//: - (void)showCustom:(NIMMessage *)message
- (void)teamCustom:(NIMMessage *)message
{
   //普通的自定义消息点击事件可以在这里做哦~

    //: NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[FearData dreamLeaveTingData]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[FearData mOurLaverText]];
            //: if (type == 105) {
            if (type == 105) {
                //: NSString *type = [datatyl stringValueForKey:@"type" defaultValue:@"0"];
                NSString *type = [datatyl nameValue:[FearData dreamLeaveTingData] text:@"0"];
                //: NSString *personCardId = [datatyl objectForKey:@"personCardId"];
                NSString *personCardId = [datatyl objectForKey:[FearData m_rageFormat]];
                //: if ([type boolValue]) {
                if ([type boolValue]) {
                    //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
//                    if (!team) {
//                        [self.view makeToast:LangKey(@"group_info_activity_group_already_jiesan") duration:2.0 position:CSToastPositionCenter];
//                        return;
//                    }
                    //: if (isMyTeam) {
                    if (isMyTeam) {
                        //: NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];
                        NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];

//                        OrientationBackground *option = [[OrientationBackground alloc] init];
//                        option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//                        HarmViewController *vc = [[PothouseViewController alloc] initWithTeam:team session:session option:option];
//                        vc.delegate = self;
//                        [self.navigationController pushViewController:vc animated:YES];

                        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                        BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    //: } else {
                    } else {
                        //: [self onJionTeamWithTeam:team];
                        [self reddish:team];
                    }
                //: } else {
                } else {

                    //: if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                    if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:personCardId];
                        AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:personCardId];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    }

                }
            }
        }
    }
}



//: - (void)onJionTeamWithTeam:(NIMTeam *)team {
- (void)reddish:(NIMTeam *)team {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if(team.joinMode == NIMTeamJoinModeNoAuth) {
    if(team.joinMode == NIMTeamJoinModeNoAuth) {
        //: [self didApplyToTeamWithMessage:@"" WithTeam:team];
        [self sureTeam:@"" exceptHolder:team];
    //: } else {
    } else {
        //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[FFFLanguageManager getTextWithKey:@"activity_friend_verify_info"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[BackgroundRandomAttribute content:[FearData show_custodyTitle]] delegate:nil cancelButtonTitle:[BackgroundRandomAttribute content:[FearData userWipeMessageName]] otherButtonTitles:nil, nil];
        //: alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
        [alert ransackedModel:^(NSInteger index) {
            //: NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            //: [wself didApplyToTeamWithMessage:message WithTeam:team];
            [wself sureTeam:message exceptHolder:team];
        //: }];
        }];
    }

}

//: - (void)handleApplyToTeam:(NSError *)error status:(NIMTeamApplyStatus)status WithId:(NSString *)cardId{
- (void)teamName:(NSError *)error streetSmart:(NIMTeamApplyStatus)status inputCurrent:(NSString *)cardId{
    //: if (!error) {
    if (!error) {
        //: switch (status) {
        switch (status) {
            //: case NIMTeamApplyStatusAlreadyInTeam:{
            case NIMTeamApplyStatusAlreadyInTeam:{
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
                //: break;
                break;
            }
            //: case NIMTeamApplyStatusWaitForPass:
            case NIMTeamApplyStatusWaitForPass:
                //: [self.view makeToast:@"申请成功，等待验证".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[FearData dream_resembleButtValue].minIn duration:2.0 position:CSToastPositionCenter];
            //: default:
            default:
                //: break;
                break;
        }
    //: }else{
    }else{
        //: switch (error.code) {
        switch (error.code) {
            //: case NIMRemoteErrorCodeTeamAlreadyIn:
            case NIMRemoteErrorCodeTeamAlreadyIn:
            {
                //                [self.view makeToast:@"已经在群里" duration:2.0 position:CSToastPositionCenter];
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                BlockViewController *vc = [[BlockViewController alloc] initWithButton:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            }
                //: break;
                break;
            //: default:
            default:
                //: [self.view makeToast:@"群申请失败".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[FearData show_panInsideName].minIn duration:2.0 position:CSToastPositionCenter];
                //: break;
                break;
        }
    }
}

//: - (void)didApplyToTeamWithMessage:(NSString *)message WithTeam:(NIMTeam *)team {
- (void)sureTeam:(NSString *)message exceptHolder:(NIMTeam *)team {

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: [LEEAlert alert].config
    [BubbleAlert picture].config
        //: .LeeAddTitle(^(UILabel *label) {
        .LeeAddTitle(^(UILabel *label) {
            //: NSString *msg = [NSString stringWithFormat:@"%@: %@",[FFFLanguageManager getTextWithKey:@"message_helper_apply_to_group"],team.teamName];
            NSString *msg = [NSString stringWithFormat:@"%@: %@",[BackgroundRandomAttribute content:[FearData dream_nuclearData]],team.teamName];
            //: label.text = msg;
            label.text = msg;
            //: label.textColor = [UIColor grayColor];
            label.textColor = [UIColor grayColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(TitleCenterInput *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"];
            action.title = [BackgroundRandomAttribute content:[FearData userHeroName]];//@"取消"
            //: action.titleColor = [UIColor grayColor];
            action.titleColor = [UIColor grayColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

            //: };
            };
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(TitleCenterInput *action) {

            //: action.type = LEEActionTypeDefault;
            action.type = LEEActionTypeDefault;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"]; 
            action.title = [BackgroundRandomAttribute content:[FearData userWipeMessageName]]; //@"确定";
            //: action.titleColor = [UIColor redColor];
            action.titleColor = [UIColor redColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

                //: [SVProgressHUD show];
                [SVProgressHUD show];
                //: [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                                                    //: message:message
                                                    message:message
                                                 //: completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                                                 completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: [wself handleApplyToTeam:error status:applyStatus WithId:team.teamId];
                    [wself teamName:error streetSmart:applyStatus inputCurrent:team.teamId];
                //: }];
                }];
            //: };
            };
        //: })
        })
        //: .LeeHeaderColor([UIColor whiteColor])
        .LeeHeaderColor([UIColor whiteColor])
        //: .LeeShow();
        .LeeShow();
}


//: - (void)openSafari:(NSString *)link
- (void)sonnet:(NSString *)link
{
    //: NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    //: if (components)
    if (components)
    {
        //: if (!components.scheme)
        if (!components.scheme)
        {
            //默认添加 http
            //: components.scheme = @"http";
            components.scheme = [FearData kLaverMessage];
        }
        //: [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
        [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
    }
}


//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)enterPersonInfoCard:(id)sender
- (void)messages:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    AdHominemBubbleViewController *vc = [[AdHominemBubbleViewController alloc] initWithButtonBy:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}


//: - (void)showDeleteSureVCWithTitle:(NSString *)title confirmBlock:(void(^)(void))confirmBlock {
- (void)pageBlock:(NSString *)title position:(void(^)(void))confirmBlock {
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".ting style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: if (confirmBlock) {
        if (confirmBlock) {
            //: confirmBlock();
            confirmBlock();
        }
    //: }];
    }];
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".ntes_localized
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".ting
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [sheet addAction:sure];
    [sheet addAction:sure];
    //: [sheet addAction:cancel];
    [sheet addAction:cancel];
    //: [self presentViewController:sheet animated:YES completion:nil];
    [self presentViewController:sheet animated:YES completion:nil];
}


//- (void)enterTeamCard:(id)sender {
//    HarmViewController *vc = nil;
//    OrientationBackground *option = [[OrientationBackground alloc] init];
//    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//
//    if (self.session.sessionType == NIMSessionTypeTeam) {
//        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
//        if(team.type == NIMTeamTypeAdvanced){
//            vc = [[PothouseViewController alloc] initWithTeam:team
//                                                                 session:self.session
//                                                                  option:option];
//            vc.delegate = self;
//        }
//    }
//    if (vc) {
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//}

//: - (void)enterSuperTeamCard:(id)sender{
- (void)enter:(id)sender{

}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (NSArray *)menusItems:(NIMMessage *)message
- (NSArray *)flushItems:(NIMMessage *)message
{
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: NSArray *defaultItems = [super menusItems:message];
    NSArray *defaultItems = [super flushItems:message];
    //: if (defaultItems) {
    if (defaultItems) {
        //: [items addObjectsFromArray:defaultItems];
        [items addObjectsFromArray:defaultItems];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([ReadUtil date:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"转发"] action:@selector(forwardMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[BackgroundRandomAttribute content:@"转发"] action:@selector(empties:)]];
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".ntes_localized action:@selector(multiSelect:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".ting action:@selector(destabilizationing:)]];
    }

    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([ReadUtil marginSub:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"撤回"] action:@selector(revokeMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[BackgroundRandomAttribute content:@"撤回"] action:@selector(colorPin:)]];
    }

    //: return items;
    return items;

}

//: - (void)cancelMessage:(id)sender {
- (void)tableText:(id)sender {
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
    [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
}

//: - (void)audio2Text:(id)sender
- (void)next2text:(id)sender
{
//    NIMMessage *message = [self messageForMenu];
//    __weak typeof(self) wself = self;
//    NTESAudio2TextViewController *vc = [[NTESAudio2TextViewController alloc] initWithMessage:message];
//    vc.completeHandler = ^(void){
//        [wself uiUpdateMessage:message];
//    };
//    [self presentViewController:vc
//                       animated:YES
//                     completion:nil];
}

//: - (void)deleteMsg:(id)sender
- (void)phaseOfTheMoon:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [SettingImage name].betweenView;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[FearData notiDetectiveValue]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf radiogram:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: [self uiDeleteMessage:message];
        [self radiogram:message];
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
    }

}

//: #pragma mark - 转发
#pragma mark - 转发
//: - (void)doMergerForwardToSession:(NIMSession *)session {
- (void)sub:(NIMSession *)session {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NTESMergeForwardTask *task = [_mergeForwardSession forwardTaskWithMessages:_selectedMessages process:nil completion:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
    ArtifactAttribute *task = [_mergeForwardSession messagesCompletion:_selectedMessages shouldObjectTap:nil elect:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
        //: if (error) {
        if (error) {
            //: NSString *msg = [NSString stringWithFormat:@"%@：%zd",@"消息合并转发失败".ntes_localized, error.code];
            NSString *msg = [NSString stringWithFormat:@"%@：%zd",[FearData k_promotionIdent].ting, error.code];
            //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: } else {
        } else {
            //: [weakSelf forwardMessage:message toSession:session];
            [weakSelf everyKit:message byIntervalerval:session];
        }
    //: }];
    }];
    //: [task resume];
    [task pin];
}

//: - (void)switchUIWithSessionState:(NIMKitSessionState)state {
- (void)searchedPressed:(NIMKitSessionState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMKitSessionStateSelect:
        case NIMKitSessionStateSelect:
        {
            //: [self setupSelectedNav];
            [self screen];
            //: [self setSessionState:NIMKitSessionStateSelect];
            [self setFileInputState:NIMKitSessionStateSelect];
            //: [self.view addSubview:self.mulSelectedSureBar];
            [self.view addSubview:self.mulSelectedSureBar];
            //: break;
            break;
        }
        //: case NIMKitSessionStateNormal:
        case NIMKitSessionStateNormal:
        //: default:
        default:
        {
            //: [self.mulSelectedSureBar removeFromSuperview];
            [self.mulSelectedSureBar removeFromSuperview];
            //: [self setSessionState:NIMKitSessionStateNormal];
            [self setFileInputState:NIMKitSessionStateNormal];
//            [self setupNormalNav];
            //: _selectedMessages = nil;
            _selectedMessages = nil;
            //: break;
            break;
        }
    }
}

//: - (void)cancelSelected:(id)sender {
- (void)rangeSearched:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
    [self searchedPressed:NIMKitSessionStateNormal];
}

//: - (void)confirmSelected:(id)sender {
- (void)fullSelected:(id)sender {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
    [self languageVoice:^(NIMSession *targetSession) {
        //转发批量消息
        //: [weakSelf doMergerForwardToSession:targetSession];
        [weakSelf sub:targetSession];
        //返回正常页面
        //: [weakSelf switchUIWithSessionState:NIMKitSessionStateNormal];
        [weakSelf searchedPressed:NIMKitSessionStateNormal];
    //: }];
    }];
}

//: - (void)confirmDelete:(id)sender
- (void)titleTop:(id)sender
{
    //: [self showDeleteSureVCWithTitle:@"确定删除？".ntes_localized confirmBlock:^{
    [self pageBlock:[FearData mainGoingFormat].ting position:^{
        //: [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
        [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
                                                              //: exts: nil
                                                              exts: nil
                                                        //: completion:^(NSError * _Nullable error) {
                                                        completion:^(NSError * _Nullable error) {
            //: [self.view makeToast:error.localizedDescription ?: @"删除成功".ntes_localized];
            [self.view makeToast:error.localizedDescription ?: [FearData noti_choiceFormat].ting];
            //: if (!error) {
            if (!error) {
                //: [self.interactor resetMessages:^(NSError *error) {
                [self.interactor viewMessages:^(NSError *error) {
                    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
                    [self searchedPressed:NIMKitSessionStateNormal];
                //: }];
                }];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (void)multiSelect:(id)sender {
- (void)destabilizationing:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self searchedPressed:NIMKitSessionStateSelect];
}

//: - (void)forwardMessage:(id)sender
- (void)empties:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: message.setting.teamReceiptEnabled = NO;
    message.setting.teamReceiptEnabled = NO;


//    __weak typeof(self) weakSelf = self;
//    [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
//        [weakSelf forwardMessage:message toSession:targetSession];
//    }];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    CheckedConfig *config = [[CheckedConfig alloc] init];
    //: config.needMutiSelected = NO;
    config.needMutiSelected = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
    //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
    vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        //: NSString *userId = array.firstObject;
        NSString *userId = array.firstObject;
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [self forwardMessage:message toSession:session];
        [self everyKit:message byIntervalerval:session];
    //: };
    };
    //: [vc show];
    [vc metadata];
}

//: - (void)selectForwardSessionCompletion:(void (^)(NIMSession *targetSession))completion {
- (void)languageVoice:(void (^)(NIMSession *targetSession))completion {
    //: UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] destructiveButtonTitle:nil otherButtonTitles:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"], [FFFLanguageManager getTextWithKey:@"contact_fragment_group"], [FFFLanguageManager getTextWithKey:@"message_super_team"], nil];
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[BackgroundRandomAttribute content:[FearData dreamBornWakeMsg]] delegate:nil cancelButtonTitle:[BackgroundRandomAttribute content:[FearData userHeroName]] destructiveButtonTitle:nil otherButtonTitles:[BackgroundRandomAttribute content:[FearData appContentPath]], [BackgroundRandomAttribute content:[FearData dreamDelicateStr]], [BackgroundRandomAttribute content:[FearData kChildPath]], nil];
    //: [sheet showInView:self.view completionHandler:^(NSInteger index) {
    [sheet style:self.view data:^(NSInteger index) {
        //: switch (index) {
        switch (index) {
            //: case 0:{
            case 0:{
                //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
                CheckedConfig *config = [[CheckedConfig alloc] init];
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *userId = array.firstObject;
                    NSString *userId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc metadata];
            }
                //: break;
                break;
            //: case 1:{
            case 1:{
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                MessageConfig *config = [[MessageConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc metadata];
            }
                //: break;
                break;
            //: case 2: {
            case 2: {
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                MessageConfig *config = [[MessageConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc metadata];
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];
}


//: - (void)revokeMessage:(id)sender
- (void)colorPin:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[FearData mBlueContent]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [FearData mBlueContent]: collapseId ? : @"",
    //: };
    };

    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message
    [[NIMSDK sharedSDK].chatManager revokeMessage:message
                                      //: apnsContent:@"撤回一条消息"
                                      apnsContent:[FearData kMainPath]
                                      //: apnsPayload:payload
                                      apnsPayload:payload
                                  //: shouldBeCounted:![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount]
                                  shouldBeCounted:![[SettingImage name] quantity]
                                         //: completion:^(NSError * _Nullable error)
                                         completion:^(NSError * _Nullable error)
    {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"发送时间超过2分钟的消息，不能被撤回".ntes_localized delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[FearData userIconPath].ting delegate:nil cancelButtonTitle:@"确定".ting otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"消息撤回失败，请重试".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[FearData m_brownPath].ting duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: FFFMessageModel *model = [weakSelf uiDeleteMessage:message];
            PurseModel *model = [weakSelf radiogram:message];
            //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:nil]];
            NIMMessage *tip = [SessionDevice pinWith:[ReadUtil header:nil]];
            //: tip.timestamp = model.messageTime;
            tip.timestamp = model.messageTime;
            //[weakSelf uiInsertMessages:@[tip]];//撤回消息不显示

            //: tip.timestamp = message.timestamp;
            tip.timestamp = message.timestamp;
            // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
            //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
            [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
        }
    //: }];
    }];
}

 //: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session
 - (void)everyKit:(NIMMessage *)message byIntervalerval:(NIMSession *)session
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Secret highlight] infoAndStraddleOption:session.sessionId item:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Secret highlight] show:session.sessionId corner:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Secret highlight] of:session.sessionId enableence_strong:nil].showName;
    }
    //: else {
    else {
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_confirm_forwarded_to"], name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [BackgroundRandomAttribute content:[FearData show_sodId]], name];
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"确认转发".ntes_localized message:tip delegate:nil cancelButtonTitle:@"取消".ntes_localized otherButtonTitles:@"确认".ntes_localized, nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[FearData app_juryStr].ting message:tip delegate:nil cancelButtonTitle:@"取消".ting otherButtonTitles:@"确认".ting, nil];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert ransackedModel:^(NSInteger index) {
        //: if(index == 1)
        if(index == 1)
        {
            //: NSError *error = nil;
            NSError *error = nil;
            //: if (message.session) {
            if (message.session) {
                //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            }

            //: if (error) {
            if (error) {
                //: NSString *msg = [NSString stringWithFormat:@"%@.code:%zd", @"转发失败".ntes_localized, error.code];
                NSString *msg = [NSString stringWithFormat:[FearData showWhichPullMessage], [FearData userShowValue].ting, error.code];
                //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"已发送".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[FearData notiLegallyValue].ting duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}


//: - (BOOL)checkRTSCondition
- (BOOL)red
{
    //: BOOL result = YES;
    BOOL result = YES;

    //: if (![[Reachability reachabilityForInternetConnection] isReachable])
    if (![[Reachability reachabilityForInternetConnection] isReachable])
    {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[BackgroundRandomAttribute content:[FearData user_completeValue]] duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    {
        //: [self.view makeToast:@"不能和自己通话哦".ntes_localized duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[FearData appShowValue].ting duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[BackgroundRandomAttribute content:[FearData notiGovernTitle]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: if (self.session.sessionType == NIMSessionTypeSuperTeam)
    if (self.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[BackgroundRandomAttribute content:[FearData notiGovernTitle]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: return result;
    return result;
}

//: - (NSDictionary *)cellActions
- (NSDictionary *)thanMember
{
    //: static NSDictionary *actions = nil;
    static NSDictionary *actions = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: actions = @{@(NIMMessageTypeImage) : @"showImage:",
        actions = @{@(NIMMessageTypeImage) : [FearData show_bornChiefMsg],
                    //: @(NIMMessageTypeVideo) : @"showVideo:",
                    @(NIMMessageTypeVideo) : [FearData mainEmotionWithUrl],
                    //: @(NIMMessageTypeLocation) : @"showLocation:",
                    @(NIMMessageTypeLocation) : [FearData dreamPurchasePressedRangeContent],
                    //: @(NIMMessageTypeFile) : @"showFile:",
                    @(NIMMessageTypeFile) : [FearData dreamTeamValue],
                    //: @(NIMMessageTypeCustom): @"showCustom:"};
                    @(NIMMessageTypeCustom): [FearData show_costlyConsumePath]};
    //: });
    });
    //: return actions;
    return actions;
}

//: - (FFFKitMediaFetcher *)mediaFetcher
- (CellShow *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[FFFKitMediaFetcher alloc] init];
        _mediaFetcher = [[CellShow alloc] init];
        //: _mediaFetcher.limit = 1;
        _mediaFetcher.limit = 1;
        //: _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//- (void)setupNormalNav {
//    
//    UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterTeamCard setImage:[UIImage imageNamed:@"icon_session_info_pressed"] forState:UIControlStateHighlighted];
//    [enterTeamCard sizeToFit];
//    UIBarButtonItem *enterTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterTeamCard];
//
//    UIButton *enterSuperTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterSuperTeamCard addTarget:self action:@selector(enterSuperTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterSuperTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterSuperTeamCard sizeToFit];
//    UIBarButtonItem *enterSuperTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterSuperTeamCard];
//
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
//    [infoBtn setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [infoBtn sizeToFit];
//    UIBarButtonItem *enterUInfoItem = [[UIBarButtonItem alloc] initWithCustomView:infoBtn];
//
//    UIButton *historyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [historyBtn addTarget:self action:@selector(enterHistory:) forControlEvents:UIControlEventTouchUpInside];
//    [historyBtn setImage:[UIImage imageNamed:@"icon_history_normal"] forState:UIControlStateNormal];
//    [historyBtn sizeToFit];
//    //UIBarButtonItem *historyButtonItem = [[UIBarButtonItem alloc] initWithCustomView:historyBtn];
//
//    enterTeamCardItem.tintColor = [UIColor whiteColor];
//    enterUInfoItem.tintColor = [UIColor whiteColor];
//    enterSuperTeamCardItem.tintColor = [UIColor whiteColor];
//
//    if (self.session.sessionType == NIMSessionTypeTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterTeamCardItem];
//    }
//    else if (self.session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterSuperTeamCardItem];
//    }
//    else if(self.session.sessionType == NIMSessionTypeP2P)
//    {
//        if ([self.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
//        {
//            //self.navigationItem.rightBarButtonItems = @[historyButtonItem];
//        }
//        else
//        {
//            self.navigationItem.rightBarButtonItems = @[enterUInfoItem];
//        }
//    }
//    self.navigationItem.leftBarButtonItem.customView.hidden = NO;
//    self.navigationItem.hidesBackButton = NO;
//    [self.mulSelectCancelBtn removeFromSuperview];
//}

//: - (void)setupSelectedNav {
- (void)screen {
    //: self.navigationItem.rightBarButtonItems = nil;
    self.navigationItem.rightBarButtonItems = nil;
    //: self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    //: self.navigationItem.hidesBackButton = YES;
    self.navigationItem.hidesBackButton = YES;
    //: [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
    [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
}

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: return !self.currentSingleSnapView;
    return !self.currentSingleSnapView;
}

//: - (NTESMulSelectFunctionBar *)mulSelectedSureBar {
- (OffenceView *)mulSelectedSureBar {
    //: if (!_mulSelectedSureBar) {
    if (!_mulSelectedSureBar) {
        //: _mulSelectedSureBar = [[NTESMulSelectFunctionBar alloc] initWithFrame:self.sessionInputView.frame];
        _mulSelectedSureBar = [[OffenceView alloc] initWithFrame:self.sessionInputView.frame];
        //: [_mulSelectedSureBar.sureBtn addTarget:self
        [_mulSelectedSureBar.sureBtn addTarget:self
                                        //: action:@selector(confirmSelected:)
                                        action:@selector(fullSelected:)
                              //: forControlEvents:UIControlEventTouchUpInside];
                              forControlEvents:UIControlEventTouchUpInside];
        //: [_mulSelectedSureBar.deleteButton addTarget:self
        [_mulSelectedSureBar.deleteButton addTarget:self
                                             //: action:@selector(confirmDelete:)
                                             action:@selector(titleTop:)
                                   //: forControlEvents:UIControlEventTouchUpInside];
                                   forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _mulSelectedSureBar;
    return _mulSelectedSureBar;
}

//: - (UIButton *)mulSelectCancelBtn {
- (UIButton *)mulSelectCancelBtn {
    //: if (!_mulSelectCancelBtn) {
    if (!_mulSelectCancelBtn) {
        //: UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [cancelBtn addTarget:self action:@selector(cancelSelected:) forControlEvents:UIControlEventTouchUpInside];
        [cancelBtn addTarget:self action:@selector(rangeSearched:) forControlEvents:UIControlEventTouchUpInside];
        //: [cancelBtn setTitle:@"取消".ntes_localized forState:UIControlStateNormal];
        [cancelBtn setTitle:@"取消".ting forState:UIControlStateNormal];
        //: [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        //: UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        //: [cancelBtn setTitleEdgeInsets:titleInsets];
        [cancelBtn setTitleEdgeInsets:titleInsets];
        //: cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        //: _mulSelectCancelBtn = cancelBtn;
        _mulSelectCancelBtn = cancelBtn;
    }
    //: return _mulSelectCancelBtn;
    return _mulSelectCancelBtn;
}



//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)backgroundSub:(NIMMessage *)message
{
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;


    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification ||
        message.messageType == NIMMessageTypeNotification ||
        //: [self cancelMenuByMessageObject:messageObject])
        [self filler:messageObject])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)cancelMenuByMessageObject:(id<NIMMessageObject>) object
- (BOOL)filler:(id<NIMMessageObject>) object
{
    //: if ([object isKindOfClass:[NIMCustomObject class]])
    if ([object isKindOfClass:[NIMCustomObject class]])
    {
        //: NIMCustomObject *custom = object;
        NIMCustomObject *custom = object;
        //: id<NIMCustomAttachment> attachment = custom.attachment;
        id<NIMCustomAttachment> attachment = custom.attachment;
        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
        if ([attachment isKindOfClass:[DoingAttachment class]])
        {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (UILabel *)invalid_tip {
- (UILabel *)invalid_tip {
    //: if (!_invalid_tip) {
    if (!_invalid_tip) {
        //: _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 50)];
        _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice title]), [[UIScreen mainScreen] bounds].size.width, 50)];
        //: _invalid_tip.backgroundColor = [UIColor colorWithHexString:@"#FEFECA"];
        _invalid_tip.backgroundColor = [UIColor user:[FearData mainFeeTitle]];
        //: _invalid_tip.textColor = [UIColor colorWithHexString:@"#F6B53E"];
        _invalid_tip.textColor = [UIColor user:[FearData noti_legislatureUrl]];
        //: _invalid_tip.text = [FFFLanguageManager getTextWithKey:@"app_team_invalid_tip"]; 
        _invalid_tip.text = [BackgroundRandomAttribute content:[FearData showMoralSaleMsg]]; //
        //: _invalid_tip.textAlignment = NSTextAlignmentCenter;
        _invalid_tip.textAlignment = NSTextAlignmentCenter;
        //: _invalid_tip.hidden = YES;
        _invalid_tip.hidden = YES;

        //: [self.view addSubview:_invalid_tip];
        [self.view addSubview:_invalid_tip];
    }
    //: return _invalid_tip;
    return _invalid_tip;
}

//: - (ZMONTranslateView *)translateView
- (IterateBarView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[IterateBarView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)fastenerred:(NSString *)reason
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: self.userId = message.from;
    self.userId = message.from;
    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: if(isMyFriend){
    if(isMyFriend){
        //: [self.view addSubview:self.reprotNextView];
        [self.view addSubview:self.reprotNextView];
        //: [self.reprotNextView animationShow];
        [self.reprotNextView bar];
    //: }else{
    }else{
        //: [self.view addSubview:self.reprotHisNextView];
        [self.view addSubview:self.reprotHisNextView];
        //: [self.reprotHisNextView animationShow];
        [self.reprotHisNextView weltanschauung];
    }

        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"contact"] = reason;
        dict[[FearData notiDiscoveryContent]] = reason;
        //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
        [TouchShowMessage at:[NSString stringWithFormat:[FearData k_blueName]] length:dict information:NO object:^(id responseObject) {
//            [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
        //: } failed:^(id responseObject, NSError *error) {
        } touch:^(id responseObject, NSError *error) {
        //: }];
        }];

}

//: - (ZMONReportNextView *)reprotNextView
- (ModelView *)reprotNextView
{
    //: if(!_reprotNextView){
    if(!_reprotNextView){
        //: _reprotNextView = [[ZMONReportNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotNextView = [[ModelView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotNextView.delegate = self;
        _reprotNextView.delegate = self;
    }
    //: return _reprotNextView;
    return _reprotNextView;

}
//: - (void)didTouchBlackButton
- (void)formattingCount
{
    //: [self.view addSubview:self.reprotBlackView];
    [self.view addSubview:self.reprotBlackView];
//    self.reprotBlackView.userID = self.userId;
    //: [self.reprotBlackView animationShow];
    [self.reprotBlackView index];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
    self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {

                   //: if (!error) {
                   if (!error) {
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[BackgroundRandomAttribute content:[FearData mContentValue]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[BackgroundRandomAttribute content:[FearData showWithStr]] duration:2.0f position:CSToastPositionCenter];

                   }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

    //: };
    };
}
//: - (void)didTouchDeleteButton
- (void)iconMenu
{
    //: [self.view addSubview:self.reprotDeleteView];
    [self.view addSubview:self.reprotDeleteView];
//    self.reprotDeleteView.userID = self.userId
    //: [self.reprotDeleteView animationShow];
    [self.reprotDeleteView physicalProperty];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
    self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
        [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
                                         //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                         removeAlias:[[SettingImage name] trunkOld]
                                          //: completion:^(NSError *error) {
                                          completion:^(NSError *error) {

            //: if (!error) {
            if (!error) {
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[BackgroundRandomAttribute content:[FearData noti_theaterRageFormat]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[BackgroundRandomAttribute content:[FearData main_atPath]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];



        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];

//            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
//            options.removeOtherClients = YES;
//            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
//                if (error) {
//                    return;
//                }
//                [self.navigationController popToRootViewControllerAnimated:YES];
//
//            }];
        }


    //: };
    };
}

//: - (ZMONReportBlackView *)reprotBlackView
- (LanguageView *)reprotBlackView
{
    //: if(!_reprotBlackView){
    if(!_reprotBlackView){
        //: _reprotBlackView = [[ZMONReportBlackView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotBlackView = [[LanguageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotBlackView;
    return _reprotBlackView;

}

//: - (ZMONReportDeleteView *)reprotDeleteView
- (PresentView *)reprotDeleteView
{
    //: if(!_reprotDeleteView){
    if(!_reprotDeleteView){
        //: _reprotDeleteView = [[ZMONReportDeleteView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotDeleteView = [[PresentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotDeleteView;
    return _reprotDeleteView;
}

//: - (ZMONReportHisView *)reprotHisNextView
- (ErgodicView *)reprotHisNextView
{
    //: if(!_reprotHisNextView){
    if(!_reprotHisNextView){
        //: _reprotHisNextView = [[ZMONReportHisView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotHisNextView = [[ErgodicView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotHisNextView.delegate = self;
        _reprotHisNextView.delegate = self;
    }
    //: return _reprotHisNextView;
    return _reprotHisNextView;

}


//: @end
@end
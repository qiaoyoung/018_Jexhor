
#import <Foundation/Foundation.h>

@interface YinData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation YinData

+ (instancetype)sharedInstance {
    static YinData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)YinDataToCache:(Byte *)data {
    int rangeCrucial = data[0];
    int backsword = data[1];
    for (int i = 0; i < rangeCrucial / 2; i++) {
        int begin = backsword + i;
        int end = backsword + rangeCrucial - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[backsword + rangeCrucial] = 0;
    return data + backsword;
}

- (NSString *)StringFromYinData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self YinDataToCache:data]];
}  

//: message_passed
- (NSString *)noti_shootMsg {
    /* static */ NSString *noti_shootMsg = nil;
    if (!noti_shootMsg) {
        Byte value[] = {14, 7, 139, 176, 206, 249, 222, 100, 101, 115, 115, 97, 112, 95, 101, 103, 97, 115, 115, 101, 109, 55};
        noti_shootMsg = [self StringFromYinData:value];
    }
    return noti_shootMsg;
}

//: message_group_revoked
- (NSString *)noti_sodStr {
    /* static */ NSString *noti_sodStr = nil;
    if (!noti_sodStr) {
        Byte value[] = {21, 10, 182, 54, 244, 66, 184, 47, 126, 95, 100, 101, 107, 111, 118, 101, 114, 95, 112, 117, 111, 114, 103, 95, 101, 103, 97, 115, 115, 101, 109, 144};
        noti_sodStr = [self StringFromYinData:value];
    }
    return noti_sodStr;
}

//: message_super_team
- (NSString *)main_abortIdent {
    /* static */ NSString *main_abortIdent = nil;
    if (!main_abortIdent) {
        Byte value[] = {18, 2, 109, 97, 101, 116, 95, 114, 101, 112, 117, 115, 95, 101, 103, 97, 115, 115, 101, 109, 61};
        main_abortIdent = [self StringFromYinData:value];
    }
    return main_abortIdent;
}

//: message_verification_mode
- (NSString *)m_belowValue {
    /* static */ NSString *m_belowValue = nil;
    if (!m_belowValue) {
        Byte value[] = {25, 9, 171, 81, 156, 6, 151, 79, 164, 101, 100, 111, 109, 95, 110, 111, 105, 116, 97, 99, 105, 102, 105, 114, 101, 118, 95, 101, 103, 97, 115, 115, 101, 109, 182};
        m_belowValue = [self StringFromYinData:value];
    }
    return m_belowValue;
}

//: message_unmuted_administrator
- (NSString *)userUnderHostileSpaceTitle {
    /* static */ NSString *userUnderHostileSpaceTitle = nil;
    if (!userUnderHostileSpaceTitle) {
        Byte value[] = {29, 8, 175, 198, 93, 111, 76, 202, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 100, 101, 116, 117, 109, 110, 117, 95, 101, 103, 97, 115, 115, 101, 109, 143};
        userUnderHostileSpaceTitle = [self StringFromYinData:value];
    }
    return userUnderHostileSpaceTitle;
}

//: message_banned_post
- (NSString *)m_negativeStr {
    /* static */ NSString *m_negativeStr = nil;
    if (!m_negativeStr) {
        Byte value[] = {19, 4, 218, 246, 116, 115, 111, 112, 95, 100, 101, 110, 110, 97, 98, 95, 101, 103, 97, 115, 115, 101, 109, 199};
        m_negativeStr = [self StringFromYinData:value];
    }
    return m_negativeStr;
}

//: message_dismissed_member_identity
- (NSString *)notiEconomicTitle {
    /* static */ NSString *notiEconomicTitle = nil;
    if (!notiEconomicTitle) {
        Byte value[] = {33, 6, 39, 255, 91, 194, 121, 116, 105, 116, 110, 101, 100, 105, 95, 114, 101, 98, 109, 101, 109, 95, 100, 101, 115, 115, 105, 109, 115, 105, 100, 95, 101, 103, 97, 115, 115, 101, 109, 255};
        notiEconomicTitle = [self StringFromYinData:value];
    }
    return notiEconomicTitle;
}

//: Friday
- (NSString *)notiInfluentialMsg {
    /* static */ NSString *notiInfluentialMsg = nil;
    if (!notiInfluentialMsg) {
        Byte value[] = {6, 4, 133, 160, 121, 97, 100, 105, 114, 70, 75};
        notiInfluentialMsg = [self StringFromYinData:value];
    }
    return notiInfluentialMsg;
}

//: app_avchat_is_busy_opposite
- (NSString *)k_hostageUrl {
    /* static */ NSString *k_hostageUrl = nil;
    if (!k_hostageUrl) {
        Byte value[] = {27, 5, 38, 124, 101, 101, 116, 105, 115, 111, 112, 112, 111, 95, 121, 115, 117, 98, 95, 115, 105, 95, 116, 97, 104, 99, 118, 97, 95, 112, 112, 97, 37};
        k_hostageUrl = [self StringFromYinData:value];
    }
    return k_hostageUrl;
}

//: message_call_receiving
- (NSString *)appParticipateMsg {
    /* static */ NSString *appParticipateMsg = nil;
    if (!appParticipateMsg) {
        Byte value[] = {22, 3, 114, 103, 110, 105, 118, 105, 101, 99, 101, 114, 95, 108, 108, 97, 99, 95, 101, 103, 97, 115, 115, 101, 109, 220};
        appParticipateMsg = [self StringFromYinData:value];
    }
    return appParticipateMsg;
}

//: message_left_room
- (NSString *)user_teamValue {
    /* static */ NSString *user_teamValue = nil;
    if (!user_teamValue) {
        Byte value[] = {17, 2, 109, 111, 111, 114, 95, 116, 102, 101, 108, 95, 101, 103, 97, 115, 115, 101, 109, 98};
        user_teamValue = [self StringFromYinData:value];
    }
    return user_teamValue;
}

//: message_people
- (NSString *)mainSunnyValue {
    /* static */ NSString *mainSunnyValue = nil;
    if (!mainSunnyValue) {
        Byte value[] = {14, 6, 230, 142, 176, 11, 101, 108, 112, 111, 101, 112, 95, 101, 103, 97, 115, 115, 101, 109, 193};
        mainSunnyValue = [self StringFromYinData:value];
    }
    return mainSunnyValue;
}

//: message_room_closed
- (NSString *)showRemarkIdent {
    /* static */ NSString *showRemarkIdent = nil;
    if (!showRemarkIdent) {
        Byte value[] = {19, 9, 202, 110, 83, 72, 252, 163, 168, 100, 101, 115, 111, 108, 99, 95, 109, 111, 111, 114, 95, 101, 103, 97, 115, 115, 101, 109, 96};
        showRemarkIdent = [self StringFromYinData:value];
    }
    return showRemarkIdent;
}

//: message_dismiss_temporary
- (NSString *)mWithShootName {
    /* static */ NSString *mWithShootName = nil;
    if (!mWithShootName) {
        Byte value[] = {25, 3, 20, 121, 114, 97, 114, 111, 112, 109, 101, 116, 95, 115, 115, 105, 109, 115, 105, 100, 95, 101, 103, 97, 115, 115, 101, 109, 94};
        mWithShootName = [self StringFromYinData:value];
    }
    return mWithShootName;
}

//: message_permissions_updated
- (NSString *)appDeviceFormat {
    /* static */ NSString *appDeviceFormat = nil;
    if (!appDeviceFormat) {
        Byte value[] = {27, 7, 182, 233, 232, 176, 254, 100, 101, 116, 97, 100, 112, 117, 95, 115, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 101, 103, 97, 115, 115, 101, 109, 48};
        appDeviceFormat = [self StringFromYinData:value];
    }
    return appDeviceFormat;
}

//: Sunday
- (NSString *)k_intactWaterVerdictStr {
    /* static */ NSString *k_intactWaterVerdictStr = nil;
    if (!k_intactWaterVerdictStr) {
        Byte value[] = {6, 11, 178, 235, 78, 148, 108, 242, 64, 130, 255, 121, 97, 100, 110, 117, 83, 24};
        k_intactWaterVerdictStr = [self StringFromYinData:value];
    }
    return k_intactWaterVerdictStr;
}

//: message_blacklisted_administrator
- (NSString *)show_choiceStr {
    /* static */ NSString *show_choiceStr = nil;
    if (!show_choiceStr) {
        Byte value[] = {33, 7, 217, 154, 90, 104, 25, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 100, 101, 116, 115, 105, 108, 107, 99, 97, 108, 98, 95, 101, 103, 97, 115, 115, 101, 109, 218};
        show_choiceStr = [self StringFromYinData:value];
    }
    return show_choiceStr;
}

//: message_group_administrator
- (NSString *)showWithName {
    /* static */ NSString *showWithName = nil;
    if (!showWithName) {
        Byte value[] = {27, 4, 59, 214, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 112, 117, 111, 114, 103, 95, 101, 103, 97, 115, 115, 101, 109, 38};
        showWithName = [self StringFromYinData:value];
    }
    return showWithName;
}

//: Tuesday
- (NSString *)app_souText {
    /* static */ NSString *app_souText = nil;
    if (!app_souText) {
        Byte value[] = {7, 7, 175, 24, 74, 55, 140, 121, 97, 100, 115, 101, 117, 84, 33};
        app_souText = [self StringFromYinData:value];
    }
    return app_souText;
}

//: Saturday
- (NSString *)m_atNimPinMessage {
    /* static */ NSString *m_atNimPinMessage = nil;
    if (!m_atNimPinMessage) {
        Byte value[] = {8, 4, 117, 173, 121, 97, 100, 114, 117, 116, 97, 83, 126};
        m_atNimPinMessage = [self StringFromYinData:value];
    }
    return m_atNimPinMessage;
}

//: message_muted_administrator
- (NSString *)dreamAuthorizeLiarKey {
    /* static */ NSString *dreamAuthorizeLiarKey = nil;
    if (!dreamAuthorizeLiarKey) {
        Byte value[] = {27, 10, 60, 137, 126, 64, 231, 59, 8, 37, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 100, 101, 116, 117, 109, 95, 101, 103, 97, 115, 115, 101, 109, 114};
        dreamAuthorizeLiarKey = [self StringFromYinData:value];
    }
    return dreamAuthorizeLiarKey;
}

//: message_announcement_updated
- (NSString *)appDifficultName {
    /* static */ NSString *appDifficultName = nil;
    if (!appDifficultName) {
        Byte value[] = {28, 11, 6, 216, 58, 46, 253, 132, 50, 164, 145, 100, 101, 116, 97, 100, 112, 117, 95, 116, 110, 101, 109, 101, 99, 110, 117, 111, 110, 110, 97, 95, 101, 103, 97, 115, 115, 101, 109, 113};
        appDifficultName = [self StringFromYinData:value];
    }
    return appDifficultName;
}

//: message_added_member
- (NSString *)appPanIconValue {
    /* static */ NSString *appPanIconValue = nil;
    if (!appPanIconValue) {
        Byte value[] = {20, 9, 139, 241, 184, 80, 246, 103, 133, 114, 101, 98, 109, 101, 109, 95, 100, 101, 100, 100, 97, 95, 101, 103, 97, 115, 115, 101, 109, 151};
        appPanIconValue = [self StringFromYinData:value];
    }
    return appPanIconValue;
}

//: message_custom_extension
- (NSString *)dream_decorText {
    /* static */ NSString *dream_decorText = nil;
    if (!dream_decorText) {
        Byte value[] = {24, 2, 110, 111, 105, 115, 110, 101, 116, 120, 101, 95, 109, 111, 116, 115, 117, 99, 95, 101, 103, 97, 115, 115, 101, 109, 72};
        dream_decorText = [self StringFromYinData:value];
    }
    return dream_decorText;
}

//: message_welcome
- (NSString *)app_biasId {
    /* static */ NSString *app_biasId = nil;
    if (!app_biasId) {
        Byte value[] = {15, 7, 97, 17, 191, 57, 148, 101, 109, 111, 99, 108, 101, 119, 95, 101, 103, 97, 115, 115, 101, 109, 65};
        app_biasId = [self StringFromYinData:value];
    }
    return app_biasId;
}

//: message_updated_information
- (NSString *)mainTeamDeviceMessage {
    /* static */ NSString *mainTeamDeviceMessage = nil;
    if (!mainTeamDeviceMessage) {
        Byte value[] = {27, 8, 191, 161, 154, 186, 191, 9, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 105, 95, 100, 101, 116, 97, 100, 112, 117, 95, 101, 103, 97, 115, 115, 101, 109, 79};
        mainTeamDeviceMessage = [self StringFromYinData:value];
    }
    return mainTeamDeviceMessage;
}

//: message_administrator_speak
- (NSString *)dream_downFormat {
    /* static */ NSString *dream_downFormat = nil;
    if (!dream_downFormat) {
        Byte value[] = {27, 7, 57, 10, 186, 85, 62, 107, 97, 101, 112, 115, 95, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 101, 103, 97, 115, 115, 101, 109, 151};
        dream_downFormat = [self StringFromYinData:value];
    }
    return dream_downFormat;
}

//: yesterday
- (NSString *)mainSizeChoiceUrl {
    /* static */ NSString *mainSizeChoiceUrl = nil;
    if (!mainSizeChoiceUrl) {
        Byte value[] = {9, 6, 169, 116, 105, 193, 121, 97, 100, 114, 101, 116, 115, 101, 121, 228};
        mainSizeChoiceUrl = [self StringFromYinData:value];
    }
    return mainSizeChoiceUrl;
}

//: Monday
- (NSString *)app_saleUrl {
    /* static */ NSString *app_saleUrl = nil;
    if (!app_saleUrl) {
        Byte value[] = {6, 5, 214, 205, 78, 121, 97, 100, 110, 111, 77, 101};
        app_saleUrl = [self StringFromYinData:value];
    }
    return app_saleUrl;
}

//: Thursday
- (NSString *)appRequirementFormat {
    /* static */ NSString *appRequirementFormat = nil;
    if (!appRequirementFormat) {
        Byte value[] = {8, 12, 59, 182, 129, 71, 84, 234, 20, 255, 91, 138, 121, 97, 100, 115, 114, 117, 104, 84, 143};
        appRequirementFormat = [self StringFromYinData:value];
    }
    return appRequirementFormat;
}

//: Wednesday
- (NSString *)main_rockId {
    /* static */ NSString *main_rockId = nil;
    if (!main_rockId) {
        Byte value[] = {9, 10, 199, 149, 5, 171, 168, 169, 102, 20, 121, 97, 100, 115, 101, 110, 100, 101, 87, 110};
        main_rockId = [self StringFromYinData:value];
    }
    return main_rockId;
}

//: message_move_out
- (NSString *)main_unfortunatelyStr {
    /* static */ NSString *main_unfortunatelyStr = nil;
    if (!main_unfortunatelyStr) {
        Byte value[] = {16, 6, 127, 100, 58, 32, 116, 117, 111, 95, 101, 118, 111, 109, 95, 101, 103, 97, 115, 115, 101, 109, 249};
        main_unfortunatelyStr = [self StringFromYinData:value];
    }
    return main_unfortunatelyStr;
}

//: message_helper_invite
- (NSString *)user_biasName {
    /* static */ NSString *user_biasName = nil;
    if (!user_biasName) {
        Byte value[] = {21, 2, 101, 116, 105, 118, 110, 105, 95, 114, 101, 112, 108, 101, 104, 95, 101, 103, 97, 115, 115, 101, 109, 42};
        user_biasName = [self StringFromYinData:value];
    }
    return user_biasName;
}

//: message_dismissed
- (NSString *)dreamWithEatingMessage {
    /* static */ NSString *dreamWithEatingMessage = nil;
    if (!dreamWithEatingMessage) {
        Byte value[] = {17, 6, 41, 24, 41, 51, 100, 101, 115, 115, 105, 109, 115, 105, 100, 95, 101, 103, 97, 115, 115, 101, 109, 232};
        dreamWithEatingMessage = [self StringFromYinData:value];
    }
    return dreamWithEatingMessage;
}

//: message_proclamation
- (NSString *)appViewInsideData {
    /* static */ NSString *appViewInsideData = nil;
    if (!appViewInsideData) {
        Byte value[] = {20, 5, 126, 176, 251, 110, 111, 105, 116, 97, 109, 97, 108, 99, 111, 114, 112, 95, 101, 103, 97, 115, 115, 101, 109, 173};
        appViewInsideData = [self StringFromYinData:value];
    }
    return appViewInsideData;
}

//: message_transferred_group_master
- (NSString *)dreamPickData {
    /* static */ NSString *dreamPickData = nil;
    if (!dreamPickData) {
        Byte value[] = {32, 6, 232, 33, 156, 226, 114, 101, 116, 115, 97, 109, 95, 112, 117, 111, 114, 103, 95, 100, 101, 114, 114, 101, 102, 115, 110, 97, 114, 116, 95, 101, 103, 97, 115, 115, 101, 109, 95};
        dreamPickData = [self StringFromYinData:value];
    }
    return dreamPickData;
}

//: app_avchat_no_pick_up
- (NSString *)userArtPath {
    /* static */ NSString *userArtPath = nil;
    if (!userArtPath) {
        Byte value[] = {21, 5, 54, 14, 95, 112, 117, 95, 107, 99, 105, 112, 95, 111, 110, 95, 116, 97, 104, 99, 118, 97, 95, 112, 112, 97, 96};
        userArtPath = [self StringFromYinData:value];
    }
    return userArtPath;
}

//: online_state_event_manager_unknown
- (NSString *)notiSpecificJustifyUrl {
    /* static */ NSString *notiSpecificJustifyUrl = nil;
    if (!notiSpecificJustifyUrl) {
        Byte value[] = {34, 8, 115, 163, 199, 216, 2, 22, 110, 119, 111, 110, 107, 110, 117, 95, 114, 101, 103, 97, 110, 97, 109, 95, 116, 110, 101, 118, 101, 95, 101, 116, 97, 116, 115, 95, 101, 110, 105, 108, 110, 111, 172};
        notiSpecificJustifyUrl = [self StringFromYinData:value];
    }
    return notiSpecificJustifyUrl;
}

//: message_helper_you
- (NSString *)main_imageKey {
    /* static */ NSString *main_imageKey = nil;
    if (!main_imageKey) {
        Byte value[] = {18, 5, 129, 121, 105, 117, 111, 121, 95, 114, 101, 112, 108, 101, 104, 95, 101, 103, 97, 115, 115, 101, 109, 71};
        main_imageKey = [self StringFromYinData:value];
    }
    return main_imageKey;
}

//: day_am
- (NSString *)appSodEatingConstitutionId {
    /* static */ NSString *appSodEatingConstitutionId = nil;
    if (!appSodEatingConstitutionId) {
        Byte value[] = {6, 11, 66, 111, 11, 196, 255, 122, 246, 199, 177, 109, 97, 95, 121, 97, 100, 12};
        appSodEatingConstitutionId = [self StringFromYinData:value];
    }
    return appSodEatingConstitutionId;
}

//: message_head_portrait
- (NSString *)kCageBrownIdent {
    /* static */ NSString *kCageBrownIdent = nil;
    if (!kCageBrownIdent) {
        Byte value[] = {21, 10, 250, 230, 176, 39, 224, 107, 211, 36, 116, 105, 97, 114, 116, 114, 111, 112, 95, 100, 97, 101, 104, 95, 101, 103, 97, 115, 115, 101, 109, 136};
        kCageBrownIdent = [self StringFromYinData:value];
    }
    return kCageBrownIdent;
}

//: message_removed_blacklist_administrator
- (NSString *)main_wooKey {
    /* static */ NSString *main_wooKey = nil;
    if (!main_wooKey) {
        Byte value[] = {39, 5, 180, 251, 160, 114, 111, 116, 97, 114, 116, 115, 105, 110, 105, 109, 100, 97, 95, 116, 115, 105, 108, 107, 99, 97, 108, 98, 95, 100, 101, 118, 111, 109, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 123};
        main_wooKey = [self StringFromYinData:value];
    }
    return main_wooKey;
}

//: message_appointed_admin
- (NSString *)appStemTitle {
    /* static */ NSString *appStemTitle = nil;
    if (!appStemTitle) {
        Byte value[] = {23, 10, 8, 21, 143, 47, 198, 91, 109, 163, 110, 105, 109, 100, 97, 95, 100, 101, 116, 110, 105, 111, 112, 112, 97, 95, 101, 103, 97, 115, 115, 101, 109, 240};
        appStemTitle = [self StringFromYinData:value];
    }
    return appStemTitle;
}

//: message_invited_into
- (NSString *)kDogItFormat {
    /* static */ NSString *kDogItFormat = nil;
    if (!kDogItFormat) {
        Byte value[] = {20, 2, 111, 116, 110, 105, 95, 100, 101, 116, 105, 118, 110, 105, 95, 101, 103, 97, 115, 115, 101, 109, 227};
        kDogItFormat = [self StringFromYinData:value];
    }
    return kDogItFormat;
}

//: message_have_update
- (NSString *)mSumactAtUrl {
    /* static */ NSString *mSumactAtUrl = nil;
    if (!mSumactAtUrl) {
        Byte value[] = {19, 11, 44, 239, 98, 170, 245, 195, 50, 42, 133, 101, 116, 97, 100, 112, 117, 95, 101, 118, 97, 104, 95, 101, 103, 97, 115, 115, 101, 109, 12};
        mSumactAtUrl = [self StringFromYinData:value];
    }
    return mSumactAtUrl;
}

//: app_avchat_has_reject
- (NSString *)k_shootPath {
    /* static */ NSString *k_shootPath = nil;
    if (!k_shootPath) {
        Byte value[] = {21, 12, 172, 41, 230, 136, 48, 105, 99, 253, 214, 234, 116, 99, 101, 106, 101, 114, 95, 115, 97, 104, 95, 116, 97, 104, 99, 118, 97, 95, 112, 112, 97, 174};
        k_shootPath = [self StringFromYinData:value];
    }
    return k_shootPath;
}

//: message_helper_already_no
- (NSString *)appPromotionId {
    /* static */ NSString *appPromotionId = nil;
    if (!appPromotionId) {
        Byte value[] = {25, 5, 82, 110, 209, 111, 110, 95, 121, 100, 97, 101, 114, 108, 97, 95, 114, 101, 112, 108, 101, 104, 95, 101, 103, 97, 115, 115, 101, 109, 250};
        appPromotionId = [self StringFromYinData:value];
    }
    return appPromotionId;
}

//: message_invite_permission
- (NSString *)mainRemarkTitle {
    /* static */ NSString *mainRemarkTitle = nil;
    if (!mainRemarkTitle) {
        Byte value[] = {25, 8, 135, 3, 165, 184, 92, 79, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 101, 116, 105, 118, 110, 105, 95, 101, 103, 97, 115, 115, 101, 109, 95};
        mainRemarkTitle = [self StringFromYinData:value];
    }
    return mainRemarkTitle;
}

//: %zd-%zd-%zd
- (NSString *)noti_deadIdent {
    /* static */ NSString *noti_deadIdent = nil;
    if (!noti_deadIdent) {
        Byte value[] = {11, 6, 131, 157, 148, 87, 100, 122, 37, 45, 100, 122, 37, 45, 100, 122, 37, 48};
        noti_deadIdent = [self StringFromYinData:value];
    }
    return noti_deadIdent;
}

//: message_dismissed_admin
- (NSString *)appPullInsertShowMsg {
    /* static */ NSString *appPullInsertShowMsg = nil;
    if (!appPullInsertShowMsg) {
        Byte value[] = {23, 5, 135, 114, 85, 110, 105, 109, 100, 97, 95, 100, 101, 115, 115, 105, 109, 115, 105, 100, 95, 101, 103, 97, 115, 115, 101, 109, 138};
        appPullInsertShowMsg = [self StringFromYinData:value];
    }
    return appPullInsertShowMsg;
}

//: message_removed_room
- (NSString *)main_pearData {
    /* static */ NSString *main_pearData = nil;
    if (!main_pearData) {
        Byte value[] = {20, 6, 64, 100, 254, 104, 109, 111, 111, 114, 95, 100, 101, 118, 111, 109, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 249};
        main_pearData = [self StringFromYinData:value];
    }
    return main_pearData;
}

//: day_night
- (NSString *)dream_technicalMessage {
    /* static */ NSString *dream_technicalMessage = nil;
    if (!dream_technicalMessage) {
        Byte value[] = {9, 8, 36, 186, 145, 102, 193, 38, 116, 104, 103, 105, 110, 95, 121, 97, 100, 22};
        dream_technicalMessage = [self StringFromYinData:value];
    }
    return dream_technicalMessage;
}

//: message_access_failure
- (NSString *)show_buttonId {
    /* static */ NSString *show_buttonId = nil;
    if (!show_buttonId) {
        Byte value[] = {22, 10, 66, 187, 46, 80, 120, 198, 62, 196, 101, 114, 117, 108, 105, 97, 102, 95, 115, 115, 101, 99, 99, 97, 95, 101, 103, 97, 115, 115, 101, 109, 246};
        show_buttonId = [self StringFromYinData:value];
    }
    return show_buttonId;
}

//: message_temporarily_muted
- (NSString *)dreamBelowData {
    /* static */ NSString *dreamBelowData = nil;
    if (!dreamBelowData) {
        Byte value[] = {25, 4, 254, 125, 100, 101, 116, 117, 109, 95, 121, 108, 105, 114, 97, 114, 111, 112, 109, 101, 116, 95, 101, 103, 97, 115, 115, 101, 109, 74};
        dreamBelowData = [self StringFromYinData:value];
    }
    return dreamBelowData;
}

//: message_unknown_system_message
- (NSString *)app_maxTitle {
    /* static */ NSString *app_maxTitle = nil;
    if (!app_maxTitle) {
        Byte value[] = {30, 9, 44, 7, 201, 234, 131, 95, 92, 101, 103, 97, 115, 115, 101, 109, 95, 109, 101, 116, 115, 121, 115, 95, 110, 119, 111, 110, 107, 110, 117, 95, 101, 103, 97, 115, 115, 101, 109, 32};
        app_maxTitle = [self StringFromYinData:value];
    }
    return app_maxTitle;
}

//: message_information
- (NSString *)userEmpireArtText {
    /* static */ NSString *userEmpireArtText = nil;
    if (!userEmpireArtText) {
        Byte value[] = {19, 7, 30, 72, 207, 216, 153, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 105, 95, 101, 103, 97, 115, 115, 101, 109, 118};
        userEmpireArtText = [self StringFromYinData:value];
    }
    return userEmpireArtText;
}

//: message_forbidden_speech
- (NSString *)m_biasData {
    /* static */ NSString *m_biasData = nil;
    if (!m_biasData) {
        Byte value[] = {24, 9, 206, 147, 134, 144, 44, 91, 239, 104, 99, 101, 101, 112, 115, 95, 110, 101, 100, 100, 105, 98, 114, 111, 102, 95, 101, 103, 97, 115, 115, 101, 109, 61};
        m_biasData = [self StringFromYinData:value];
    }
    return m_biasData;
}

//: day_pm
- (NSString *)kTermsValue {
    /* static */ NSString *kTermsValue = nil;
    if (!kTermsValue) {
        Byte value[] = {6, 5, 35, 95, 98, 109, 112, 95, 121, 97, 100, 157};
        kTermsValue = [self StringFromYinData:value];
    }
    return kTermsValue;
}

//: wee_hours
- (NSString *)mWaterValue {
    /* static */ NSString *mWaterValue = nil;
    if (!mWaterValue) {
        Byte value[] = {9, 5, 2, 79, 254, 115, 114, 117, 111, 104, 95, 101, 101, 119, 223};
        mWaterValue = [self StringFromYinData:value];
    }
    return mWaterValue;
}

//: message_remove_by
- (NSString *)showPullUrl {
    /* static */ NSString *showPullUrl = nil;
    if (!showPullUrl) {
        Byte value[] = {17, 2, 121, 98, 95, 101, 118, 111, 109, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 45};
        showPullUrl = [self StringFromYinData:value];
    }
    return showPullUrl;
}

//: contact_my_group_activity_title
- (NSString *)mainOffIdent {
    /* static */ NSString *mainOffIdent = nil;
    if (!mainOffIdent) {
        Byte value[] = {31, 12, 163, 215, 78, 62, 190, 75, 31, 29, 61, 49, 101, 108, 116, 105, 116, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 112, 117, 111, 114, 103, 95, 121, 109, 95, 116, 99, 97, 116, 110, 111, 99, 249};
        mainOffIdent = [self StringFromYinData:value];
    }
    return mainOffIdent;
}

//: message_apply_for
- (NSString *)dreamModestPath {
    /* static */ NSString *dreamModestPath = nil;
    if (!dreamModestPath) {
        Byte value[] = {17, 9, 72, 223, 215, 239, 224, 173, 96, 114, 111, 102, 95, 121, 108, 112, 112, 97, 95, 101, 103, 97, 115, 115, 101, 109, 254};
        dreamModestPath = [self StringFromYinData:value];
    }
    return dreamModestPath;
}

//: message_modification_permissions
- (NSString *)appRumName {
    /* static */ NSString *appRumName = nil;
    if (!appRumName) {
        Byte value[] = {32, 12, 241, 167, 131, 57, 145, 32, 156, 87, 139, 130, 115, 110, 111, 105, 115, 115, 105, 109, 114, 101, 112, 95, 110, 111, 105, 116, 97, 99, 105, 102, 105, 100, 111, 109, 95, 101, 103, 97, 115, 115, 101, 109, 64};
        appRumName = [self StringFromYinData:value];
    }
    return appRumName;
}

//: message_leave
- (NSString *)noti_luckKey {
    /* static */ NSString *noti_luckKey = nil;
    if (!noti_luckKey) {
        Byte value[] = {13, 4, 57, 59, 101, 118, 97, 101, 108, 95, 101, 103, 97, 115, 115, 101, 109, 12};
        noti_luckKey = [self StringFromYinData:value];
    }
    return noti_luckKey;
}

//: app_avchat_cancel
- (NSString *)noti_sufferingData {
    /* static */ NSString *noti_sufferingData = nil;
    if (!noti_sufferingData) {
        Byte value[] = {17, 9, 101, 78, 206, 174, 200, 90, 178, 108, 101, 99, 110, 97, 99, 95, 116, 97, 104, 99, 118, 97, 95, 112, 112, 97, 202};
        noti_sufferingData = [self StringFromYinData:value];
    }
    return noti_sufferingData;
}

//: message_been_lifted
- (NSString *)mChartText {
    /* static */ NSString *mChartText = nil;
    if (!mChartText) {
        Byte value[] = {19, 4, 223, 131, 100, 101, 116, 102, 105, 108, 95, 110, 101, 101, 98, 95, 101, 103, 97, 115, 115, 101, 109, 138};
        mChartText = [self StringFromYinData:value];
    }
    return mChartText;
}

//: message_call_duration
- (NSString *)noti_farIdent {
    /* static */ NSString *noti_farIdent = nil;
    if (!noti_farIdent) {
        Byte value[] = {21, 7, 207, 33, 242, 201, 229, 110, 111, 105, 116, 97, 114, 117, 100, 95, 108, 108, 97, 99, 95, 101, 103, 97, 115, 115, 101, 109, 96};
        noti_farIdent = [self StringFromYinData:value];
    }
    return noti_farIdent;
}

//: message_introduce
- (NSString *)app_versionNameValue {
    /* static */ NSString *app_versionNameValue = nil;
    if (!app_versionNameValue) {
        Byte value[] = {17, 6, 10, 5, 110, 140, 101, 99, 117, 100, 111, 114, 116, 110, 105, 95, 101, 103, 97, 115, 115, 101, 109, 28};
        app_versionNameValue = [self StringFromYinData:value];
    }
    return app_versionNameValue;
}

//: message_accept
- (NSString *)app_vileMayData {
    /* static */ NSString *app_vileMayData = nil;
    if (!app_vileMayData) {
        Byte value[] = {14, 4, 166, 158, 116, 112, 101, 99, 99, 97, 95, 101, 103, 97, 115, 115, 101, 109, 123};
        app_vileMayData = [self StringFromYinData:value];
    }
    return app_vileMayData;
}

//: message_remove_banned
- (NSString *)notiVeteranUrl {
    /* static */ NSString *notiVeteranUrl = nil;
    if (!notiVeteranUrl) {
        Byte value[] = {21, 10, 207, 140, 70, 214, 79, 254, 244, 35, 100, 101, 110, 110, 97, 98, 95, 101, 118, 111, 109, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 47};
        notiVeteranUrl = [self StringFromYinData:value];
    }
    return notiVeteranUrl;
}

//: message_dismiss_whole_mute
- (NSString *)dream_viewValue {
    /* static */ NSString *dream_viewValue = nil;
    if (!dream_viewValue) {
        Byte value[] = {26, 2, 101, 116, 117, 109, 95, 101, 108, 111, 104, 119, 95, 115, 115, 105, 109, 115, 105, 100, 95, 101, 103, 97, 115, 115, 101, 109, 85};
        dream_viewValue = [self StringFromYinData:value];
    }
    return dream_viewValue;
}

//: message_changed_room_queue
- (NSString *)dream_approximateDateFormat {
    /* static */ NSString *dream_approximateDateFormat = nil;
    if (!dream_approximateDateFormat) {
        Byte value[] = {26, 6, 154, 34, 239, 227, 101, 117, 101, 117, 113, 95, 109, 111, 111, 114, 95, 100, 101, 103, 110, 97, 104, 99, 95, 101, 103, 97, 115, 115, 101, 109, 171};
        dream_approximateDateFormat = [self StringFromYinData:value];
    }
    return dream_approximateDateFormat;
}

//: message_enter
- (NSString *)main_storageValue {
    /* static */ NSString *main_storageValue = nil;
    if (!main_storageValue) {
        Byte value[] = {13, 5, 20, 120, 115, 114, 101, 116, 110, 101, 95, 101, 103, 97, 115, 115, 101, 109, 134};
        main_storageValue = [self StringFromYinData:value];
    }
    return main_storageValue;
}

//: message_name
- (NSString *)mainWonderfulCoverTitle {
    /* static */ NSString *mainWonderfulCoverTitle = nil;
    if (!mainWonderfulCoverTitle) {
        Byte value[] = {12, 12, 11, 1, 239, 125, 150, 138, 208, 84, 177, 227, 101, 109, 97, 110, 95, 101, 103, 97, 115, 115, 101, 109, 218};
        mainWonderfulCoverTitle = [self StringFromYinData:value];
    }
    return mainWonderfulCoverTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMUtil.m
// Secret
//
//  Created by chris on 15/8/10.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitUtil.h"
#import "KitUtil.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "FFFKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "FFFInputEmoticonManager.h"
#import "DirectorManager.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Secret.h"

//: static NSDateComponentsFormatter *_dateComponentsFormatter;
static NSDateComponentsFormatter *m_datePath;

//: @implementation FFFKitUtil
@implementation KitUtil

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)pull:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}

//: + (NSString *)showNick:(NSString*)uid inMessage:(NIMMessage*)message
+ (NSString *)backgroundTo:(NSString*)uid greenMessage:(NIMMessage*)message
{
    //: if (!uid.length) {
    if (!uid.length) {
        //: return nil;
        return nil;
    }
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.message = message;
    option.message = message;
    //: return [[MyUserKit sharedKit] infoByUser:uid option:option].showName;
    return [[Secret highlight] infoAndStraddleOption:uid item:option].showName;
}

//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session{
+ (NSString *)streetwise:(NSString*)uid tip:(NIMSession*)session{
    //: if (!uid.length) {
    if (!uid.length) {
        //: return nil;
        return nil;
    }
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.session = session;
    option.session = session;
    //: return [[MyUserKit sharedKit] infoByUser:uid option:option].showName;
    return [[Secret highlight] infoAndStraddleOption:uid item:option].showName;
}


//: + (NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail
+ (NSString*)tally:(NSTimeInterval) msglastTime roundHighBack:(BOOL)showDetail
{
    //今天的时间
    //: NSDate * nowDate = [NSDate date];
    NSDate * nowDate = [NSDate date];
    //: NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    //: NSString *result = nil;
    NSString *result = nil;
    //: NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    //: NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];
    NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];

    //: NSInteger hour = msgDateComponents.hour;
    NSInteger hour = msgDateComponents.hour;
    //: double OnedayTimeIntervalValue = 24*60*60; 
    double OnedayTimeIntervalValue = 24*60*60; //一天的秒数

    //: result = [FFFKitUtil getPeriodOfTime:hour withMinute:msgDateComponents.minute];
    result = [KitUtil pin:hour nameImage:msgDateComponents.minute];
    //: if (hour > 12)
    if (hour > 12)
    {
        //: hour = hour - 12;
        hour = hour - 12;
    }

    //: BOOL isSameMonth = (nowDateComponents.year == msgDateComponents.year) && (nowDateComponents.month == msgDateComponents.month);
    BOOL isSameMonth = (nowDateComponents.year == msgDateComponents.year) && (nowDateComponents.month == msgDateComponents.month);

    //: if(isSameMonth && (nowDateComponents.day == msgDateComponents.day)) 
    if(isSameMonth && (nowDateComponents.day == msgDateComponents.day)) //同一天,显示时间
    {
        //: result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
        result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
    }
    //: else if(isSameMonth && (nowDateComponents.day == (msgDateComponents.day+1)))
    else if(isSameMonth && (nowDateComponents.day == (msgDateComponents.day+1)))//昨天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[FFFLanguageManager getTextWithKey:@"yesterday"],result,hour,(int)msgDateComponents.minute] : [FFFLanguageManager getTextWithKey:@"yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[BackgroundRandomAttribute content:[[YinData sharedInstance] mainSizeChoiceUrl]],result,hour,(int)msgDateComponents.minute] : [BackgroundRandomAttribute content:[[YinData sharedInstance] mainSizeChoiceUrl]];//@"昨天";
    }
    //: else if([nowDate timeIntervalSinceDate:msgDate] < 7 * OnedayTimeIntervalValue)
    else if([nowDate timeIntervalSinceDate:msgDate] < 7 * OnedayTimeIntervalValue)//一周内
    {
        //: NSString *weekDay = [FFFKitUtil weekdayStr:msgDateComponents.weekday];
        NSString *weekDay = [KitUtil outsideWith:msgDateComponents.weekday];
        //: result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
        result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
    }
    //: else
    else//显示日期
    {
        //: NSString *day = [NSString stringWithFormat:@"%zd-%zd-%zd", msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        NSString *day = [NSString stringWithFormat:[[YinData sharedInstance] noti_deadIdent], msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        //: result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
        result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
    }
    //: return result;
    return result;
}

//: #pragma mark - Private
#pragma mark - Private

//: + (NSString *)getPeriodOfTime:(NSInteger)time withMinute:(NSInteger)minute
+ (NSString *)pin:(NSInteger)time nameImage:(NSInteger)minute
{
    //: NSInteger totalMin = time *60 + minute;
    NSInteger totalMin = time *60 + minute;
    //: NSString *showPeriodOfTime = @"";
    NSString *showPeriodOfTime = @"";
    //: if (totalMin > 0 && totalMin <= 5 * 60)
    if (totalMin > 0 && totalMin <= 5 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"wee_hours"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[[YinData sharedInstance] mWaterValue]];//@"凌晨";
    }
    //: else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_am"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[[YinData sharedInstance] appSodEatingConstitutionId]];//@"上午";
    }
    //: else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_pm"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[[YinData sharedInstance] kTermsValue]];//@"下午";
    }
    //: else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_night"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[[YinData sharedInstance] dream_technicalMessage]];//@"晚上";
    }
    //: return showPeriodOfTime;
    return showPeriodOfTime;
}

//: +(NSString*)weekdayStr:(NSInteger)dayOfWeek
+(NSString*)outsideWith:(NSInteger)dayOfWeek
{
    //: static NSDictionary *daysOfWeekDict = nil;
    static NSDictionary *daysOfWeekDict = nil;
    //: daysOfWeekDict = @{@(1):[FFFLanguageManager getTextWithKey:@"Sunday"],//@"星期日".,
    daysOfWeekDict = @{@(1):[BackgroundRandomAttribute content:[[YinData sharedInstance] k_intactWaterVerdictStr]],//@"星期日".,
                       //: @(2):[FFFLanguageManager getTextWithKey:@"Monday"],//@"星期一".,
                       @(2):[BackgroundRandomAttribute content:[[YinData sharedInstance] app_saleUrl]],//@"星期一".,
                       //: @(3):[FFFLanguageManager getTextWithKey:@"Tuesday"],//@"星期二".,
                       @(3):[BackgroundRandomAttribute content:[[YinData sharedInstance] app_souText]],//@"星期二".,
                       //: @(4):[FFFLanguageManager getTextWithKey:@"Wednesday"],//@"星期三".,
                       @(4):[BackgroundRandomAttribute content:[[YinData sharedInstance] main_rockId]],//@"星期三".,
                       //: @(5):[FFFLanguageManager getTextWithKey:@"Thursday"],//@"星期四".,
                       @(5):[BackgroundRandomAttribute content:[[YinData sharedInstance] appRequirementFormat]],//@"星期四".,
                       //: @(6):[FFFLanguageManager getTextWithKey:@"Friday"],//@"星期五".,
                       @(6):[BackgroundRandomAttribute content:[[YinData sharedInstance] notiInfluentialMsg]],//@"星期五".,
                       //: @(7):[FFFLanguageManager getTextWithKey:@"Saturday"]};
                       @(7):[BackgroundRandomAttribute content:[[YinData sharedInstance] m_atNimPinMessage]]};//@"星期六".,};
    //: return [daysOfWeekDict objectForKey:@(dayOfWeek)];
    return [daysOfWeekDict objectForKey:@(dayOfWeek)];
}

//: + (NSString *)messageTipContent:(NIMMessage *)message{
+ (NSString *)with:(NIMMessage *)message{

    //: NSString *text = nil;
    NSString *text = nil;

    //: if (text == nil) {
    if (text == nil) {
        //: switch (message.messageType) {
        switch (message.messageType) {
            //: case NIMMessageTypeNotification:
            case NIMMessageTypeNotification:
                //: text = [FFFKitUtil notificationMessage:message];
                text = [KitUtil notificationInMessage:message];
                //: break;
                break;
            //: case NIMMessageTypeTip:
            case NIMMessageTypeTip:
                //: text = message.text;
                text = message.text;
                //: break;
                break;
            //: case NIMMessageTypeRtcCallRecord:
            case NIMMessageTypeRtcCallRecord:
                //: text = [self rtcCallRecordFormatedMessage:message];
                text = [self generate:message];
            //: default:
            default:
                //: break;
                break;
        }
    }
    //: return text;
    return text;
}

//: + (NSString *)durationTextWithSeconds:(NSTimeInterval)seconds
+ (NSString *)atWith:(NSTimeInterval)seconds
{
    //: NSString *text = [[self dateComponentsFormatter] stringFromTimeInterval:seconds];
    NSString *text = [[self table] stringFromTimeInterval:seconds];
    //: return text;
    return text;
}

//: + (NSDateComponentsFormatter *)dateComponentsFormatter {
+ (NSDateComponentsFormatter *)table {
    //: if (!_dateComponentsFormatter) {
    if (!m_datePath) {
        //: @synchronized (self) {
        @synchronized (self) {
            //: if (!_dateComponentsFormatter) {
            if (!m_datePath) {
                //: _dateComponentsFormatter = [[NSDateComponentsFormatter alloc] init];
                m_datePath = [[NSDateComponentsFormatter alloc] init];
                //: _dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStylePositional;
                m_datePath.unitsStyle = NSDateComponentsFormatterUnitsStylePositional;
                //: _dateComponentsFormatter.allowedUnits = NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond;
                m_datePath.allowedUnits = NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond;
                //: _dateComponentsFormatter.zeroFormattingBehavior = NSDateComponentsFormatterZeroFormattingBehaviorPad;
                m_datePath.zeroFormattingBehavior = NSDateComponentsFormatterZeroFormattingBehaviorPad;
            }
        }
    }
    //: return _dateComponentsFormatter;
    return m_datePath;
}

//: + (NSString *)notificationMessage:(NIMMessage *)message{
+ (NSString *)notificationInMessage:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:{
        case NIMNotificationTypeTeam:{
            //: return [FFFKitUtil teamNotificationFormatedMessage:message];
            return [KitUtil counternationality:message];
        }
        //: case NIMNotificationTypeSuperTeam:{
        case NIMNotificationTypeSuperTeam:{
            //: return [FFFKitUtil superTeamNotificationFormatedMessage:message];
            return [KitUtil teamDay:message];
        }
        //: case NIMNotificationTypeNetCall:{
        case NIMNotificationTypeNetCall:{
            //: return [FFFKitUtil netcallNotificationFormatedMessage:message];
            return [KitUtil aspergill:message];
        }
        //: case NIMNotificationTypeChatroom:{
        case NIMNotificationTypeChatroom:{
            //: return [FFFKitUtil chatroomNotificationFormatedMessage:message];
            return [KitUtil broadcast:message];
        }
        //: default:
        default:
            //: return @"";
            return @"";
    }
}


//: + (NSString*)teamNotificationFormatedMessage:(NIMMessage *)message{
+ (NSString*)counternationality:(NIMMessage *)message{
    //: NSString *formatedMessage = @"";
    NSString *formatedMessage = @"";
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeTeam)
    if (object.notificationType == NIMNotificationTypeTeam)
    {
        //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
        NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
        //: NSString *source = [FFFKitUtil teamNotificationSourceName:message];
        NSString *source = [KitUtil indicator:message];
        //: NSArray *targets = [FFFKitUtil teamNotificationTargetNames:message];
        NSArray *targets = [KitUtil bullSEyeResolution:message];
        //: NSString *targetText = [targets count] > 1 ? [targets componentsJoinedByString:@","] : [targets firstObject];
        NSString *targetText = [targets count] > 1 ? [targets componentsJoinedByString:@","] : [targets firstObject];
        //: NSString *teamName = [FFFKitUtil teamNotificationTeamShowName:message];
        NSString *teamName = [KitUtil byName:message];

        //: switch (content.operationType) {
        switch (content.operationType) {
            //: case NIMTeamOperationTypeInvite:{
            case NIMTeamOperationTypeInvite:{
                //: NSString *str = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_helper_invite"],targets.firstObject];
                NSString *str = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] user_biasName]],targets.firstObject];
                //: if (targets.count>1) {
                if (targets.count>1) {
                    //: str = [str stringByAppendingFormat:@"%zd%@",targets.count,[FFFLanguageManager getTextWithKey:@"message_people"]];
                    str = [str stringByAppendingFormat:@"%zd%@",targets.count,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainSunnyValue]]];
                }
                //: str = [str stringByAppendingFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"message_enter"],teamName];
                str = [str stringByAppendingFormat:@"%@%@",[BackgroundRandomAttribute content:[[YinData sharedInstance] main_storageValue]],teamName];
                //: formatedMessage = str;
                formatedMessage = str;
            }
                //: break;
                break;
            //: case NIMTeamOperationTypeDismiss:
            case NIMTeamOperationTypeDismiss:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_dismissed"],teamName];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamWithEatingMessage]],teamName];
                //: break;
                break;
            //: case NIMTeamOperationTypeKick:{
            case NIMTeamOperationTypeKick:{
                //: NSString *str = [NSString stringWithFormat:@"%@ %@",source,targets.firstObject];
                NSString *str = [NSString stringWithFormat:@"%@ %@",source,targets.firstObject];
                //: if (targets.count>1) {
                if (targets.count>1) {
                    //: str = [str stringByAppendingFormat:@"%zd%@",targets.count,[FFFLanguageManager getTextWithKey:@"message_people"]];
                    str = [str stringByAppendingFormat:@"%zd%@",targets.count,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainSunnyValue]]];
                }
                //: str = [str stringByAppendingFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"message_move_out"],teamName];
                str = [str stringByAppendingFormat:@"%@%@",[BackgroundRandomAttribute content:[[YinData sharedInstance] main_unfortunatelyStr]],teamName];
                //: formatedMessage = str;
                formatedMessage = str;
            }
                //: break;
                break;
            //: case NIMTeamOperationTypeUpdate:
            case NIMTeamOperationTypeUpdate:
            {

                //: NSString *update = [FFFLanguageManager getTextWithKey:@"message_have_update"];
                NSString *update = [BackgroundRandomAttribute content:[[YinData sharedInstance] mSumactAtUrl]];
                //: id attachment = [content attachment];
                id attachment = [content attachment];
                //: if ([attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                if ([attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                    //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                    NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_information"]];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] userEmpireArtText]]];
                    //如果只是单个项目项被修改则显示具体的修改项
                    //: if ([teamAttachment.values count] == 1) {
                    if ([teamAttachment.values count] == 1) {
                        //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                        NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                        //: switch (tag) {
                        switch (tag) {
                            //: case NIMTeamUpdateTagName:
                            case NIMTeamUpdateTagName:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_name"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainWonderfulCoverTitle]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagIntro:
                            case NIMTeamUpdateTagIntro:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_introduce"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] app_versionNameValue]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagAnouncement:
                            case NIMTeamUpdateTagAnouncement:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_proclamation"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] appViewInsideData]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagJoinMode:
                            case NIMTeamUpdateTagJoinMode:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_verification_mode"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] m_belowValue]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagAvatar:
                            case NIMTeamUpdateTagAvatar:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_head_portrait"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] kCageBrownIdent]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagInviteMode:
                            case NIMTeamUpdateTagInviteMode:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_invite_permission"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainRemarkTitle]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagBeInviteMode:
                            case NIMTeamUpdateTagBeInviteMode:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_permissions_updated"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] appDeviceFormat]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagUpdateInfoMode:
                            case NIMTeamUpdateTagUpdateInfoMode:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_modification_permissions"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] appRumName]]];
                                //: break;
                                break;
                            //: case NIMTeamUpdateTagMuteMode:{
                            case NIMTeamUpdateTagMuteMode:{
                                //: NSString *muteState = teamAttachment.values.allValues.firstObject;
                                NSString *muteState = teamAttachment.values.allValues.firstObject;
                                //: BOOL muted = [muteState isEqualToString:@"0"] ? NO : YES;
                                BOOL muted = [muteState isEqualToString:@"0"] ? NO : YES;
                                //: formatedMessage = muted? [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_forbidden_speech"]]: [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_been_lifted"]];
                                formatedMessage = muted? [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] m_biasData]]]: [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] mChartText]]];
                                //: break;
                                break;
                            }
                            //: default:
                            default:
                                //: break;
                                break;

                        }
                    }
                }
                //: if (formatedMessage == nil){
                if (formatedMessage == nil){
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_information"]];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] userEmpireArtText]]];
                }
            }
                //: break;
                break;
            //: case NIMTeamOperationTypeLeave:
            case NIMTeamOperationTypeLeave:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_leave"],teamName];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_luckKey]],teamName];
                //: break;
                break;
            //: case NIMTeamOperationTypeApplyPass:{
            case NIMTeamOperationTypeApplyPass:{
                //: if ([source isEqualToString:targetText]) {
                if ([source isEqualToString:targetText]) {
                    //说明是以不需要验证的方式进入
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_enter"],teamName];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] main_storageValue]],teamName];
                //: }else{
                }else{
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_passed"],targetText,[FFFLanguageManager getTextWithKey:@"message_apply_for"]];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_shootMsg]],targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamModestPath]]];
                }
            }
                //: break;
                break;
            //: case NIMTeamOperationTypeTransferOwner:
            case NIMTeamOperationTypeTransferOwner:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_transferred_group_master"],targetText];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamPickData]],targetText];
                //: break;
                break;
            //: case NIMTeamOperationTypeAddManager:
            case NIMTeamOperationTypeAddManager:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@",targetText,[FFFLanguageManager getTextWithKey:@"message_group_administrator"]];
                formatedMessage = [NSString stringWithFormat:@"%@%@",targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] showWithName]]];
                //: break;
                break;
            //: case NIMTeamOperationTypeRemoveManager:
            case NIMTeamOperationTypeRemoveManager:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@",targetText,[FFFLanguageManager getTextWithKey:@"message_group_revoked"]];
                formatedMessage = [NSString stringWithFormat:@"%@%@",targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_sodStr]]];
                //: break;
                break;
            //: case NIMTeamOperationTypeAcceptInvitation:
            case NIMTeamOperationTypeAcceptInvitation:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_accept"],targetText,[FFFLanguageManager getTextWithKey:@"message_invited_into"]];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] app_vileMayData]],targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] kDogItFormat]]];
                //: break;
                break;
            //: case NIMTeamOperationTypeMute:{
            case NIMTeamOperationTypeMute:{
                //: id attachment = [content attachment];
                id attachment = [content attachment];
                //: if ([attachment isKindOfClass:[NIMMuteTeamMemberAttachment class]])
                if ([attachment isKindOfClass:[NIMMuteTeamMemberAttachment class]])
                {
                    //: BOOL mute = [(NIMMuteTeamMemberAttachment *)attachment flag];
                    BOOL mute = [(NIMMuteTeamMemberAttachment *)attachment flag];
                    //: NSString *muteStr = mute? [FFFLanguageManager getTextWithKey:@"message_banned_post"] : [FFFLanguageManager getTextWithKey:@"message_remove_banned"];
                    NSString *muteStr = mute? [BackgroundRandomAttribute content:[[YinData sharedInstance] m_negativeStr]] : [BackgroundRandomAttribute content:[[YinData sharedInstance] notiVeteranUrl]];
                    //: NSString *str = [targets componentsJoinedByString:@","];
                    NSString *str = [targets componentsJoinedByString:@","];
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",str,[FFFLanguageManager getTextWithKey:@"message_remove_by"],source,muteStr];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",str,[BackgroundRandomAttribute content:[[YinData sharedInstance] showPullUrl]],source,muteStr];
                }
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
    //: if (!formatedMessage.length) {
    if (!formatedMessage.length) {
        //: formatedMessage = [FFFLanguageManager getTextWithKey:@"message_unknown_system_message"];
        formatedMessage = [BackgroundRandomAttribute content:[[YinData sharedInstance] app_maxTitle]];//@"未知系统消息".;
    }
    //: return formatedMessage;
    return formatedMessage;
}

//: + (NSString*)superTeamNotificationFormatedMessage:(NIMMessage *)message{
+ (NSString*)teamDay:(NIMMessage *)message{
    //: NSString *formatedMessage = @"";
    NSString *formatedMessage = @"";
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeSuperTeam)
    if (object.notificationType == NIMNotificationTypeSuperTeam)
    {
        //: NIMSuperTeamNotificationContent *content = (NIMSuperTeamNotificationContent*)object.content;
        NIMSuperTeamNotificationContent *content = (NIMSuperTeamNotificationContent*)object.content;
        //: NSString *source = [FFFKitUtil superTeamNotificationSourceName:message];
        NSString *source = [KitUtil along:message];
        //: NSArray *targets = [FFFKitUtil superTeamNotificationTargetNames:message];
        NSArray *targets = [KitUtil version:message];
        //: NSString *targetText = [targets count] > 1 ? [targets componentsJoinedByString:@","] : [targets firstObject];
        NSString *targetText = [targets count] > 1 ? [targets componentsJoinedByString:@","] : [targets firstObject];
        //: NSString *teamName = [FFFKitUtil superTeamNotificationTeamShowName:message];
        NSString *teamName = [KitUtil add:message];

        //: switch (content.operationType) {
        switch (content.operationType) {
            //: case NIMSuperTeamOperationTypeInvite:{
            case NIMSuperTeamOperationTypeInvite:{
                //: NSString *str = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_helper_invite"],targets.firstObject];
                NSString *str = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] user_biasName]],targets.firstObject];
                //: if (targets.count>1) {
                if (targets.count>1) {
                    //: str = [str stringByAppendingFormat:@"%zd%@",targets.count,[FFFLanguageManager getTextWithKey:@"message_people"]];
                    str = [str stringByAppendingFormat:@"%zd%@",targets.count,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainSunnyValue]]];
                }
                //: str = [str stringByAppendingFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"message_enter"],teamName];
                str = [str stringByAppendingFormat:@"%@%@",[BackgroundRandomAttribute content:[[YinData sharedInstance] main_storageValue]],teamName];
                //: formatedMessage = str;
                formatedMessage = str;
            }
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeDismiss:
            case NIMSuperTeamOperationTypeDismiss:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_dismissed"],teamName];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamWithEatingMessage]],teamName];
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeKick:{
            case NIMSuperTeamOperationTypeKick:{
                //: NSString *str = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_remove_by"],targets.firstObject];
                NSString *str = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] showPullUrl]],targets.firstObject];
                //: if (targets.count>1) {
                if (targets.count>1) {
                    //: str = [str stringByAppendingFormat:@"%zd%@",targets.count,[FFFLanguageManager getTextWithKey:@"message_people"]];
                    str = [str stringByAppendingFormat:@"%zd%@",targets.count,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainSunnyValue]]];
                }
                //: str = [str stringByAppendingFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"message_move_out"],teamName];
                str = [str stringByAppendingFormat:@"%@%@",[BackgroundRandomAttribute content:[[YinData sharedInstance] main_unfortunatelyStr]],teamName];
                //: formatedMessage = str;
                formatedMessage = str;
            }
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeUpdate:
            case NIMSuperTeamOperationTypeUpdate:
            {
                //: NSString *update = [FFFLanguageManager getTextWithKey:@"message_have_update"];
                NSString *update = [BackgroundRandomAttribute content:[[YinData sharedInstance] mSumactAtUrl]];
                //: id attachment = [content attachment];
                id attachment = [content attachment];
                //: if ([attachment isKindOfClass:[NIMUpdateSuperTeamInfoAttachment class]]) {
                if ([attachment isKindOfClass:[NIMUpdateSuperTeamInfoAttachment class]]) {
                    //: NIMUpdateSuperTeamInfoAttachment *teamAttachment = (NIMUpdateSuperTeamInfoAttachment *)attachment;
                    NIMUpdateSuperTeamInfoAttachment *teamAttachment = (NIMUpdateSuperTeamInfoAttachment *)attachment;
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_information"]];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] userEmpireArtText]]];
                    //如果只是单个项目项被修改则显示具体的修改项
                    //: if ([teamAttachment.values count] == 1) {
                    if ([teamAttachment.values count] == 1) {
                        //: NIMSuperTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                        NIMSuperTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                        //: switch (tag) {
                        switch (tag) {
                            //: case NIMSuperTeamUpdateTagName:
                            case NIMSuperTeamUpdateTagName:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_name"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainWonderfulCoverTitle]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagIntro:
                            case NIMSuperTeamUpdateTagIntro:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_introduce"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] app_versionNameValue]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagAnouncement:
                            case NIMSuperTeamUpdateTagAnouncement:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_proclamation"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] appViewInsideData]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagAvatar:
                            case NIMSuperTeamUpdateTagAvatar:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_verification_mode"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] m_belowValue]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagJoinMode:
                            case NIMSuperTeamUpdateTagJoinMode:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_head_portrait"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] kCageBrownIdent]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagBeInviteMode:
                            case NIMSuperTeamUpdateTagBeInviteMode:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_invite_permission"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainRemarkTitle]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagClientCustom:
                            case NIMSuperTeamUpdateTagClientCustom:
                                //: formatedMessage = [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_custom_extension"]];
                                formatedMessage = [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] dream_decorText]]];
                                //: break;
                                break;
                            //: case NIMSuperTeamUpdateTagMuteMode: {
                            case NIMSuperTeamUpdateTagMuteMode: {
                                //: NSString *muteState = teamAttachment.values.allValues.firstObject;
                                NSString *muteState = teamAttachment.values.allValues.firstObject;
                                //: BOOL muted = [muteState isEqualToString:@"0"] ? NO : YES;
                                BOOL muted = [muteState isEqualToString:@"0"] ? NO : YES;
                                //: formatedMessage = muted? [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_forbidden_speech"]]: [NSString stringWithFormat:@"%@%@",source,[FFFLanguageManager getTextWithKey:@"message_been_lifted"]];
                                formatedMessage = muted? [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] m_biasData]]]: [NSString stringWithFormat:@"%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] mChartText]]];
                                //: break;
                                break;
                            }
                            //: default:
                            default:
                                //: break;
                                break;

                        }
                    }
                }
                //: if (formatedMessage.length == 0){
                if (formatedMessage.length == 0){
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[FFFLanguageManager getTextWithKey:@"message_information"]];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,update,teamName,[BackgroundRandomAttribute content:[[YinData sharedInstance] userEmpireArtText]]];
                }
            }
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeLeave:
            case NIMSuperTeamOperationTypeLeave:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_leave"],teamName];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_luckKey]],teamName];
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeApplyPass:{
            case NIMSuperTeamOperationTypeApplyPass:{
                //: if ([source isEqualToString:targetText]) {
                if ([source isEqualToString:targetText]) {
                    //说明是以不需要验证的方式进入
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_enter"],teamName];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] main_storageValue]],teamName];
                //: }else{
                }else{
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_passed"],targetText,[FFFLanguageManager getTextWithKey:@"message_apply_for"]];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_shootMsg]],targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamModestPath]]];
                }
            }
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeTransferOwner:
            case NIMSuperTeamOperationTypeTransferOwner:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_transferred_group_master"],targets.firstObject];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamPickData]],targets.firstObject];
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeAddManager:
            case NIMSuperTeamOperationTypeAddManager:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@",targets.firstObject,[FFFLanguageManager getTextWithKey:@"message_group_administrator"]];
                formatedMessage = [NSString stringWithFormat:@"%@%@",targets.firstObject,[BackgroundRandomAttribute content:[[YinData sharedInstance] showWithName]]];
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeRemoveManager:
            case NIMSuperTeamOperationTypeRemoveManager:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@",targets.firstObject,[FFFLanguageManager getTextWithKey:@"message_group_revoked"]];
                formatedMessage = [NSString stringWithFormat:@"%@%@",targets.firstObject,[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_sodStr]]];
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeAcceptInvitation:
            case NIMSuperTeamOperationTypeAcceptInvitation:
                //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[FFFLanguageManager getTextWithKey:@"message_accept"],targetText,[FFFLanguageManager getTextWithKey:@"message_invited_into"]];
                formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",source,[BackgroundRandomAttribute content:[[YinData sharedInstance] app_vileMayData]],targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] kDogItFormat]]];
                //: break;
                break;
            //: case NIMSuperTeamOperationTypeMute:{
            case NIMSuperTeamOperationTypeMute:{
                //: id attachment = [content attachment];
                id attachment = [content attachment];
                //: if ([attachment isKindOfClass:[NIMMuteSuperTeamMemberAttachment class]])
                if ([attachment isKindOfClass:[NIMMuteSuperTeamMemberAttachment class]])
                {
                    //: BOOL mute = [(NIMMuteSuperTeamMemberAttachment *)attachment flag];
                    BOOL mute = [(NIMMuteSuperTeamMemberAttachment *)attachment flag];
                    //: NSString *muteStr = mute? [FFFLanguageManager getTextWithKey:@"message_banned_post"] : [FFFLanguageManager getTextWithKey:@"message_remove_banned"];
                    NSString *muteStr = mute? [BackgroundRandomAttribute content:[[YinData sharedInstance] m_negativeStr]] : [BackgroundRandomAttribute content:[[YinData sharedInstance] notiVeteranUrl]];
                    //: NSString *str = [targets componentsJoinedByString:@","];
                    NSString *str = [targets componentsJoinedByString:@","];
                    //: formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",str,[FFFLanguageManager getTextWithKey:@"message_remove_by"],source,muteStr];
                    formatedMessage = [NSString stringWithFormat:@"%@%@%@%@",str,[BackgroundRandomAttribute content:[[YinData sharedInstance] showPullUrl]],source,muteStr];
                }
            }
            //: default:
            default:
                //: break;
                break;
        }

    }
    //: if (!formatedMessage.length) {
    if (!formatedMessage.length) {
        //: formatedMessage = [FFFLanguageManager getTextWithKey:@"message_unknown_system_message"];
        formatedMessage = [BackgroundRandomAttribute content:[[YinData sharedInstance] app_maxTitle]];//@"未知系统消息";
    }
    //: return formatedMessage;
    return formatedMessage;
}

//: + (NSString *)rtcCallRecordFormatedMessage:(NIMMessage *)message {
+ (NSString *)generate:(NIMMessage *)message {
    //: NIMRtcCallRecordObject *record = message.messageObject;
    NIMRtcCallRecordObject *record = message.messageObject;
    //: switch (record.callStatus) {
    switch (record.callStatus) {
        //: case NIMRtcCallStatusCanceled:
        case NIMRtcCallStatusCanceled:
            //: return [FFFLanguageManager getTextWithKey:@"app_avchat_cancel"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] noti_sufferingData]];//@"已取消".;
        //: case NIMRtcCallStatusTimeout:
        case NIMRtcCallStatusTimeout:
            //: return [FFFLanguageManager getTextWithKey:@"app_avchat_no_pick_up"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] userArtPath]];//@"未接听".;
        //: case NIMRtcCallStatusRejected:
        case NIMRtcCallStatusRejected:
            //: return [FFFLanguageManager getTextWithKey:@"app_avchat_has_reject"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] k_shootPath]];//@"已拒绝".;
        //: case NIMRtcCallStatusBusy:
        case NIMRtcCallStatusBusy:
            //: if ([message.from isEqualToString:NIMSDK.sharedSDK.loginManager.currentAccount]) {
            if ([message.from isEqualToString:NIMSDK.sharedSDK.loginManager.currentAccount]) {
                //: return [FFFLanguageManager getTextWithKey:@"app_avchat_has_reject"];
                return [BackgroundRandomAttribute content:[[YinData sharedInstance] k_shootPath]];//@"已拒绝".;
            }
            //: return [FFFLanguageManager getTextWithKey:@"app_avchat_is_busy_opposite"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] k_hostageUrl]];//@"对方正忙".;
        //: case NIMRtcCallStatusComplete: {
        case NIMRtcCallStatusComplete: {
            //: NSTimeInterval duration = [record.durations nimkit_jsonInteger:NIMSDK.sharedSDK.loginManager.currentAccount?:@""];
            NSTimeInterval duration = [record.durations input:NIMSDK.sharedSDK.loginManager.currentAccount?:@""];
            //: return [NSString stringWithFormat:@"%@ %@",[FFFLanguageManager getTextWithKey:@"message_call_duration"],[FFFKitUtil durationTextWithSeconds:duration]];
            return [NSString stringWithFormat:@"%@ %@",[BackgroundRandomAttribute content:[[YinData sharedInstance] noti_farIdent]],[KitUtil atWith:duration]];
        }
        //: default:
        default:
            //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_unknown"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] notiSpecificJustifyUrl]];//@"未知".;
    }
}

//: + (NSString *)netcallNotificationFormatedMessage:(NIMMessage *)message{
+ (NSString *)aspergill:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
    NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
    //: NSString *text = @"";
    NSString *text = @"";
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: switch (content.eventType) {
    switch (content.eventType) {
        //: case NIMNetCallEventTypeMiss:{
        case NIMNetCallEventTypeMiss:{
            //: text = [FFFLanguageManager getTextWithKey:@"app_avchat_no_pick_up"];
            text = [BackgroundRandomAttribute content:[[YinData sharedInstance] userArtPath]];//@"未接听".;
            //: break;
            break;
        }
        //: case NIMNetCallEventTypeBill:{
        case NIMNetCallEventTypeBill:{
            //: text = ([object.message.from isEqualToString:currentAccount])? [FFFLanguageManager getTextWithKey:@"message_call_duration"] : [FFFLanguageManager getTextWithKey:@"message_call_receiving"];
            text = ([object.message.from isEqualToString:currentAccount])? [BackgroundRandomAttribute content:[[YinData sharedInstance] noti_farIdent]] : [BackgroundRandomAttribute content:[[YinData sharedInstance] appParticipateMsg]];
            //: NSTimeInterval duration = content.duration;
            NSTimeInterval duration = content.duration;
            //: NSString *durationDesc = [NSString stringWithFormat:@"%02d:%02d",(int)duration/60,(int)duration%60];
            NSString *durationDesc = [NSString stringWithFormat:@"%02d:%02d",(int)duration/60,(int)duration%60];
            //: text = [text stringByAppendingString:durationDesc];
            text = [text stringByAppendingString:durationDesc];
            //: break;
            break;
        }
        //: case NIMNetCallEventTypeReject:{
        case NIMNetCallEventTypeReject:{
            //: text = ([object.message.from isEqualToString:currentAccount])? [FFFLanguageManager getTextWithKey:@"app_avchat_is_busy_opposite"] : [FFFLanguageManager getTextWithKey:@"message_helper_already_no"];
            text = ([object.message.from isEqualToString:currentAccount])? [BackgroundRandomAttribute content:[[YinData sharedInstance] k_hostageUrl]] : [BackgroundRandomAttribute content:[[YinData sharedInstance] appPromotionId]];
            //: break;
            break;
        }
        //: case NIMNetCallEventTypeNoResponse:{
        case NIMNetCallEventTypeNoResponse:{
            //: text = [FFFLanguageManager getTextWithKey:@"message_access_failure"];
            text = [BackgroundRandomAttribute content:[[YinData sharedInstance] show_buttonId]];//@"未接通，已取消".;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return text;
    return text;
}


//: + (NSString *)chatroomNotificationFormatedMessage:(NIMMessage *)message{
+ (NSString *)broadcast:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NIMChatroomNotificationContent *content = (NIMChatroomNotificationContent *)object.content;
    NIMChatroomNotificationContent *content = (NIMChatroomNotificationContent *)object.content;
    //: NSMutableArray *targetNicks = [[NSMutableArray alloc] init];
    NSMutableArray *targetNicks = [[NSMutableArray alloc] init];
    //: for (NIMChatroomNotificationMember *memebr in content.targets) {
    for (NIMChatroomNotificationMember *memebr in content.targets) {
        //: if ([memebr.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        if ([memebr.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
           //: [targetNicks addObject:[FFFLanguageManager getTextWithKey:@"message_helper_you"]];
           [targetNicks addObject:[BackgroundRandomAttribute content:[[YinData sharedInstance] main_imageKey]]];// @"你".
        //: }else{
        }else{
           //: [targetNicks addObject:memebr.nick];
           [targetNicks addObject:memebr.nick];
        }

    }
    //: NSString *opeText = content.source.nick;
    NSString *opeText = content.source.nick;
    //: NSString *targetText = [targetNicks componentsJoinedByString:@","];
    NSString *targetText = [targetNicks componentsJoinedByString:@","];
    //: switch (content.eventType) {
    switch (content.eventType) {
        //: case NIMChatroomEventTypeEnter:
        case NIMChatroomEventTypeEnter:
        {
            //: return [NSString stringWithFormat:@"%@%@%@".nim_localized,[FFFLanguageManager getTextWithKey:@"message_welcome"],targetText,[FFFLanguageManager getTextWithKey:@""]];
            return [NSString stringWithFormat:@"%@%@%@".minIn,[BackgroundRandomAttribute content:[[YinData sharedInstance] app_biasId]],targetText,[BackgroundRandomAttribute content:@""]];
        }
        //: case NIMChatroomEventTypeAddBlack:
        case NIMChatroomEventTypeAddBlack:
        {
            //: return [NSString stringWithFormat:@"%@ %@", targetText,[FFFLanguageManager getTextWithKey:@"message_blacklisted_administrator"]];
            return [NSString stringWithFormat:@"%@ %@", targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] show_choiceStr]]];
        }
        //: case NIMChatroomEventTypeRemoveBlack:
        case NIMChatroomEventTypeRemoveBlack:
        {
            //: return [NSString stringWithFormat:@"%@ %@",targetText,[FFFLanguageManager getTextWithKey:@"message_removed_blacklist_administrator"]];
            return [NSString stringWithFormat:@"%@ %@",targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] main_wooKey]]];
        }
        //: case NIMChatroomEventTypeAddMute:
        case NIMChatroomEventTypeAddMute:
        {
            //: if (content.targets.count == 1 && [[content.targets.firstObject userId] isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
            if (content.targets.count == 1 && [[content.targets.firstObject userId] isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
            {
                //: return [FFFLanguageManager getTextWithKey:@"message_temporarily_muted"];
                return [BackgroundRandomAttribute content:[[YinData sharedInstance] dreamBelowData]];//@"你已被禁言".;
            }
            //: else
            else
            {
                //: return [NSString stringWithFormat:@"%@ %@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_muted_administrator"]];
                return [NSString stringWithFormat:@"%@ %@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamAuthorizeLiarKey]]];
            }
        }
        //: case NIMChatroomEventTypeRemoveMute:
        case NIMChatroomEventTypeRemoveMute:
        {
            //: return [NSString stringWithFormat:@"%@ %@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_unmuted_administrator"]];
            return [NSString stringWithFormat:@"%@ %@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] userUnderHostileSpaceTitle]]];
        }
        //: case NIMChatroomEventTypeAddManager:
        case NIMChatroomEventTypeAddManager:
        {
            //: return [NSString stringWithFormat:@"%@ %@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_appointed_admin"]];
            return [NSString stringWithFormat:@"%@ %@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] appStemTitle]]];
        }
        //: case NIMChatroomEventTypeRemoveManager:
        case NIMChatroomEventTypeRemoveManager:
        {
            //: return [NSString stringWithFormat:@"%@ %@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_dismissed_admin"]];
            return [NSString stringWithFormat:@"%@ %@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] appPullInsertShowMsg]]];
        }
        //: case NIMChatroomEventTypeRemoveCommon:
        case NIMChatroomEventTypeRemoveCommon:
        {
            //: return [NSString stringWithFormat:@"%@ %@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_dismissed_member_identity"]];
            return [NSString stringWithFormat:@"%@ %@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] notiEconomicTitle]]];
        }
        //: case NIMChatroomEventTypeAddCommon:
        case NIMChatroomEventTypeAddCommon:
        {
            //: return [NSString stringWithFormat:@"%@%@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_added_member"]];
            return [NSString stringWithFormat:@"%@%@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] appPanIconValue]]];
        }
        //: case NIMChatroomEventTypeInfoUpdated:
        case NIMChatroomEventTypeInfoUpdated:
        {
            //: return [FFFLanguageManager getTextWithKey:@"message_announcement_updated"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] appDifficultName]];//@"直播间公告已更新".;
        }
        //: case NIMChatroomEventTypeKicked:
        case NIMChatroomEventTypeKicked:
        {
            //: return [NSString stringWithFormat:@"%@%@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_removed_room"]];
            return [NSString stringWithFormat:@"%@%@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] main_pearData]]];
        }
        //: case NIMChatroomEventTypeExit:
        case NIMChatroomEventTypeExit:
        {
            //: return [NSString stringWithFormat:@"%@%@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_left_room"]];
            return [NSString stringWithFormat:@"%@%@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] user_teamValue]]];
        }
        //: case NIMChatroomEventTypeClosed:
        case NIMChatroomEventTypeClosed:
        {
            //: return [FFFLanguageManager getTextWithKey:@"message_room_closed"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] showRemarkIdent]];//@"直播间已关闭".;
        }
        //: case NIMChatroomEventTypeAddMuteTemporarily:
        case NIMChatroomEventTypeAddMuteTemporarily:
        {
            //: if (content.targets.count == 1 && [[content.targets.firstObject userId] isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
            if (content.targets.count == 1 && [[content.targets.firstObject userId] isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
            {
                //: return [FFFLanguageManager getTextWithKey:@"message_temporarily_muted"];
                return [BackgroundRandomAttribute content:[[YinData sharedInstance] dreamBelowData]];//@"你已被临时禁言".;
            }
            //: else
            else
            {
                //: return [NSString stringWithFormat:@"%@%@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_muted_administrator"]];
                return [NSString stringWithFormat:@"%@%@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] dreamAuthorizeLiarKey]]];
            }
        }
        //: case NIMChatroomEventTypeRemoveMuteTemporarily:
        case NIMChatroomEventTypeRemoveMuteTemporarily:
        {
            //: return [NSString stringWithFormat:@"%@%@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_dismiss_temporary"]];
            return [NSString stringWithFormat:@"%@%@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] mWithShootName]]];
        }
        //: case NIMChatroomEventTypeMemberUpdateInfo:
        case NIMChatroomEventTypeMemberUpdateInfo:
        {
            //: return [NSString stringWithFormat:@"%@%@".nim_localized,targetText,[FFFLanguageManager getTextWithKey:@"message_updated_information"]];
            return [NSString stringWithFormat:@"%@%@".minIn,targetText,[BackgroundRandomAttribute content:[[YinData sharedInstance] mainTeamDeviceMessage]]];
        }
        //: case NIMChatroomEventTypeRoomMuted:
        case NIMChatroomEventTypeRoomMuted:
        {
            //: return [FFFLanguageManager getTextWithKey:@"message_administrator_speak"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] dream_downFormat]];//@"全体禁言，管理员可发言".;
        }
        //: case NIMChatroomEventTypeRoomUnMuted:
        case NIMChatroomEventTypeRoomUnMuted:
        {
            //: return [FFFLanguageManager getTextWithKey:@"message_dismiss_whole_mute"];
            return [BackgroundRandomAttribute content:[[YinData sharedInstance] dream_viewValue]];//@"解除全体禁言".;
        }
        //: case NIMChatroomEventTypeQueueChange:
        case NIMChatroomEventTypeQueueChange:
        //: case NIMChatroomEventTypeQueueBatchChange:
        case NIMChatroomEventTypeQueueBatchChange:
            //: return [NSString stringWithFormat:@"%@%@".nim_localized,opeText,[FFFLanguageManager getTextWithKey:@"message_changed_room_queue"]];
            return [NSString stringWithFormat:@"%@%@".minIn,opeText,[BackgroundRandomAttribute content:[[YinData sharedInstance] dream_approximateDateFormat]]];
        //: default:
        default:
            //: break;
            break;
    }
    //: return @"";
    return @"";
}


//: #pragma mark - Private
#pragma mark - Private
//: + (NSString *)teamNotificationSourceName:(NIMMessage *)message{
+ (NSString *)indicator:(NIMMessage *)message{
    //: NSString *source;
    NSString *source;
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
    NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([content.sourceID isEqualToString:currentAccount]) {
    if ([content.sourceID isEqualToString:currentAccount]) {
        //: source = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
        source = [BackgroundRandomAttribute content:[[YinData sharedInstance] main_imageKey]];//@"你".;
    //: }else{
    }else{
        //: source = [FFFKitUtil showNick:content.sourceID inSession:message.session];
        source = [KitUtil streetwise:content.sourceID tip:message.session];
    }
    //: return source;
    return source;
}

//: + (NSArray *)teamNotificationTargetNames:(NIMMessage *)message{
+ (NSArray *)bullSEyeResolution:(NIMMessage *)message{
    //: NSMutableArray *targets = [[NSMutableArray alloc] init];
    NSMutableArray *targets = [[NSMutableArray alloc] init];
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
    NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: for (NSString *item in content.targetIDs) {
    for (NSString *item in content.targetIDs) {
        //: if ([item isEqualToString:currentAccount]) {
        if ([item isEqualToString:currentAccount]) {
            //: [targets addObject:[FFFLanguageManager getTextWithKey:@"message_helper_you"]];
            [targets addObject:[BackgroundRandomAttribute content:[[YinData sharedInstance] main_imageKey]]];
        //: }else{
        }else{
            //: NSString *targetShowName = [FFFKitUtil showNick:item inSession:message.session];
            NSString *targetShowName = [KitUtil streetwise:item tip:message.session];
            //: [targets addObject:targetShowName];
            [targets addObject:targetShowName];
        }
    }
    //: return targets;
    return targets;
}


//: + (NSString *)teamNotificationTeamShowName:(NIMMessage *)message{
+ (NSString *)byName:(NIMMessage *)message{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
    //: NSString *teamName = [FFFLanguageManager getTextWithKey:@"contact_my_group_activity_title"];
    NSString *teamName = [BackgroundRandomAttribute content:[[YinData sharedInstance] mainOffIdent]];
    //: return teamName;
    return teamName;
}

//: + (NSString *)superTeamNotificationSourceName:(NIMMessage *)message{
+ (NSString *)along:(NIMMessage *)message{
    //: NSString *source;
    NSString *source;
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NIMSuperTeamNotificationContent *content = (NIMSuperTeamNotificationContent*)object.content;
    NIMSuperTeamNotificationContent *content = (NIMSuperTeamNotificationContent*)object.content;
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([content.sourceID isEqualToString:currentAccount]) {
    if ([content.sourceID isEqualToString:currentAccount]) {
        //: source = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
        source = [BackgroundRandomAttribute content:[[YinData sharedInstance] main_imageKey]];//@"你".;
    //: }else{
    }else{
        //: source = [FFFKitUtil showNick:content.sourceID inSession:message.session];
        source = [KitUtil streetwise:content.sourceID tip:message.session];
    }
    //: return source;
    return source;
}

//: + (NSArray *)superTeamNotificationTargetNames:(NIMMessage *)message{
+ (NSArray *)version:(NIMMessage *)message{
    //: NSMutableArray *targets = [[NSMutableArray alloc] init];
    NSMutableArray *targets = [[NSMutableArray alloc] init];
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NIMSuperTeamNotificationContent *content = (NIMSuperTeamNotificationContent*)object.content;
    NIMSuperTeamNotificationContent *content = (NIMSuperTeamNotificationContent*)object.content;
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: for (NSString *item in content.targetIDs) {
    for (NSString *item in content.targetIDs) {
        //: if ([item isEqualToString:currentAccount]) {
        if ([item isEqualToString:currentAccount]) {
            //: [targets addObject:[FFFLanguageManager getTextWithKey:@"message_helper_you"]];
            [targets addObject:[BackgroundRandomAttribute content:[[YinData sharedInstance] main_imageKey]]];
        //: }else{
        }else{
            //: NSString *targetShowName = [FFFKitUtil showNick:item inSession:message.session];
            NSString *targetShowName = [KitUtil streetwise:item tip:message.session];
            //: [targets addObject:targetShowName];
            [targets addObject:targetShowName];
        }
    }
    //: return targets;
    return targets;
}


//: + (NSString *)superTeamNotificationTeamShowName:(NIMMessage *)message{
+ (NSString *)add:(NIMMessage *)message{
    //: NSString *teamName = [FFFLanguageManager getTextWithKey:@"message_super_team"];
    NSString *teamName = [BackgroundRandomAttribute content:[[YinData sharedInstance] main_abortIdent]];//@"超大群".;
    //: return teamName;
    return teamName;
}

//: + (BOOL)canEditSuperTeamInfo:(NIMTeamMember *)member {
+ (BOOL)input:(NIMTeamMember *)member {
    //: return (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
    return (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
}

//: + (BOOL)canInviteMemberToSuperTeam:(NIMTeamMember *)member {
+ (BOOL)holder:(NIMTeamMember *)member {
    //: return (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
    return (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
}

//: + (BOOL)canEditTeamInfo:(NIMTeamMember *)member
+ (BOOL)aTeam:(NIMTeamMember *)member
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:member.teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:member.teamId];
    //: if (team.updateInfoMode == NIMTeamUpdateInfoModeManager)
    if (team.updateInfoMode == NIMTeamUpdateInfoModeManager)
    {
        //: return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
        return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
    }
    //: else
    else
    {
        //: return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager || member.type == NIMTeamMemberTypeNormal;
        return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager || member.type == NIMTeamMemberTypeNormal;
    }
}

//: + (BOOL)canInviteMemberToTeam:(NIMTeamMember *)member
+ (BOOL)sub:(NIMTeamMember *)member
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:member.teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:member.teamId];
    //: if (team.inviteMode == NIMTeamInviteModeManager)
    if (team.inviteMode == NIMTeamInviteModeManager)
    {
        //: return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
        return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
    }
    //: else
    else
    {
        //: return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager || member.type == NIMTeamMemberTypeNormal;
        return member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager || member.type == NIMTeamMemberTypeNormal;
    }

}

//: + (NSString *)quickCommentContent:(NIMQuickComment *)comment
+ (NSString *)artForm:(NIMQuickComment *)comment
{
    //: NSString *ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, comment.replyType];
    NSString *ID = [NSString stringWithFormat:showImageDataIdent, comment.replyType];
    //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
    TextEmoticon *emoticon = [[DirectorManager statusFor] past:ID];
    //: NSString *content = nil;
    NSString *content = nil;
    //: if (emoticon)
    if (emoticon)
    {
        //: if (emoticon.type == NIMEmoticonTypeUnicode) {
        if (emoticon.type == NIMEmoticonTypeUnicode) {
            //: content = emoticon.unicode;
            content = emoticon.unicode;
        //: } else {
        } else {
            //: content = emoticon.tag;
            content = emoticon.tag;
        }
    }
    //: content = [NSString stringWithFormat:@"%@|%@", content, comment.from];
    content = [NSString stringWithFormat:@"%@|%@", content, comment.from];
    //: return content;
    return content;
}

//: @end
@end

#import <Foundation/Foundation.h>

@interface PanData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PanData

+ (instancetype)sharedInstance {
    static PanData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PanDataToCache:(Byte *)data {
    int nan = data[0];
    Byte liar = data[1];
    int reinforceEnable = data[2];
    for (int i = reinforceEnable; i < reinforceEnable + nan; i++) {
        int value = data[i] - liar;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[reinforceEnable + nan] = 0;
    return data + reinforceEnable;
}

- (NSString *)StringFromPanData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PanDataToCache:data]];
}

//: team_info_set_activity_default_group_tip
- (NSString *)notiImageId {
    /* static */ NSString *notiImageId = nil;
    if (!notiImageId) {
        Byte value[] = {40, 49, 10, 126, 62, 67, 140, 42, 182, 176, 165, 150, 146, 158, 144, 154, 159, 151, 160, 144, 164, 150, 165, 144, 146, 148, 165, 154, 167, 154, 165, 170, 144, 149, 150, 151, 146, 166, 157, 165, 144, 152, 163, 160, 166, 161, 144, 165, 154, 161, 175};
        notiImageId = [self StringFromPanData:value];
    }
    return notiImageId;
}

//: group_mute_member_list_activity_title
- (NSString *)mConductText {
    /* static */ NSString *mConductText = nil;
    if (!mConductText) {
        Byte value[] = {37, 98, 8, 210, 111, 123, 192, 162, 201, 212, 209, 215, 210, 193, 207, 215, 214, 199, 193, 207, 199, 207, 196, 199, 212, 193, 206, 203, 213, 214, 193, 195, 197, 214, 203, 216, 203, 214, 219, 193, 214, 203, 214, 206, 199, 68};
        mConductText = [self StringFromPanData:value];
    }
    return mConductText;
}

//: Chat_settop
- (NSString *)kContentName {
    /* static */ NSString *kContentName = nil;
    if (!kContentName) {
        Byte value[] = {11, 19, 5, 107, 139, 86, 123, 116, 135, 114, 134, 120, 135, 135, 130, 131, 200};
        kContentName = [self StringFromPanData:value];
    }
    return kContentName;
}

//: activity_group_info_group_modify_permission
- (NSString *)main_speculateUrl {
    /* static */ NSString *main_speculateUrl = nil;
    if (!main_speculateUrl) {
        Byte value[] = {43, 97, 13, 5, 201, 156, 213, 190, 252, 221, 200, 225, 250, 194, 196, 213, 202, 215, 202, 213, 218, 192, 200, 211, 208, 214, 209, 192, 202, 207, 199, 208, 192, 200, 211, 208, 214, 209, 192, 206, 208, 197, 202, 199, 218, 192, 209, 198, 211, 206, 202, 212, 212, 202, 208, 207, 144};
        main_speculateUrl = [self StringFromPanData:value];
    }
    return main_speculateUrl;
}

//: send_group_card
- (NSString *)user_downUrl {
    /* static */ NSString *user_downUrl = nil;
    if (!user_downUrl) {
        Byte value[] = {15, 91, 4, 181, 206, 192, 201, 191, 186, 194, 205, 202, 208, 203, 186, 190, 188, 205, 191, 216};
        user_downUrl = [self StringFromPanData:value];
    }
    return user_downUrl;
}

//: authentication
- (NSString *)mWithTickMessage {
    /* static */ NSString *mWithTickMessage = nil;
    if (!mWithTickMessage) {
        Byte value[] = {14, 55, 7, 169, 54, 134, 46, 152, 172, 171, 159, 156, 165, 171, 160, 154, 152, 171, 160, 166, 165, 56};
        mWithTickMessage = [self StringFromPanData:value];
    }
    return mWithTickMessage;
}

//: ic_modify
- (NSString *)notiRageData {
    /* static */ NSString *notiRageData = nil;
    if (!notiRageData) {
        Byte value[] = {9, 94, 11, 220, 159, 233, 8, 87, 242, 19, 134, 199, 193, 189, 203, 205, 194, 199, 196, 215, 127};
        notiRageData = [self StringFromPanData:value];
    }
    return notiRageData;
}

//: ic_group_introduction
- (NSString *)main_explosionMessage {
    /* static */ NSString *main_explosionMessage = nil;
    if (!main_explosionMessage) {
        Byte value[] = {21, 40, 6, 45, 99, 66, 145, 139, 135, 143, 154, 151, 157, 152, 135, 145, 150, 156, 154, 151, 140, 157, 139, 156, 145, 151, 150, 199};
        main_explosionMessage = [self StringFromPanData:value];
    }
    return main_explosionMessage;
}

//: activity_group_info_group_mute
- (NSString *)appDateData {
    /* static */ NSString *appDateData = nil;
    if (!appDateData) {
        Byte value[] = {30, 15, 6, 175, 144, 24, 112, 114, 131, 120, 133, 120, 131, 136, 110, 118, 129, 126, 132, 127, 110, 120, 125, 117, 126, 110, 118, 129, 126, 132, 127, 110, 124, 132, 131, 116, 176};
        appDateData = [self StringFromPanData:value];
    }
    return appDateData;
}

//: ic_invite
- (NSString *)showVeteranValue {
    /* static */ NSString *showVeteranValue = nil;
    if (!showVeteranValue) {
        Byte value[] = {9, 82, 9, 14, 96, 225, 193, 209, 90, 187, 181, 177, 187, 192, 200, 187, 198, 183, 92};
        showVeteranValue = [self StringFromPanData:value];
    }
    return showVeteranValue;
}

//: group_info_activity_jiesan
- (NSString *)mainRequirementId {
    /* static */ NSString *mainRequirementId = nil;
    if (!mainRequirementId) {
        Byte value[] = {26, 94, 10, 23, 228, 247, 27, 153, 25, 160, 197, 208, 205, 211, 206, 189, 199, 204, 196, 205, 189, 191, 193, 210, 199, 212, 199, 210, 215, 189, 200, 199, 195, 209, 191, 204, 11};
        mainRequirementId = [self StringFromPanData:value];
    }
    return mainRequirementId;
}

//: modify_activity_modify_success
- (NSString *)dreamMoralOurMessage {
    /* static */ NSString *dreamMoralOurMessage = nil;
    if (!dreamMoralOurMessage) {
        Byte value[] = {30, 68, 11, 117, 218, 138, 154, 55, 150, 30, 220, 177, 179, 168, 173, 170, 189, 163, 165, 167, 184, 173, 186, 173, 184, 189, 163, 177, 179, 168, 173, 170, 189, 163, 183, 185, 167, 167, 169, 183, 183, 156};
        dreamMoralOurMessage = [self StringFromPanData:value];
    }
    return dreamMoralOurMessage;
}

//: name
- (NSString *)kRandomIdent {
    /* static */ NSString *kRandomIdent = nil;
    if (!kRandomIdent) {
        Byte value[] = {4, 56, 7, 71, 204, 134, 252, 166, 153, 165, 157, 55};
        kRandomIdent = [self StringFromPanData:value];
    }
    return kRandomIdent;
}

//: /team/modifyowner
- (NSString *)show_buttonWithContent {
    /* static */ NSString *show_buttonWithContent = nil;
    if (!show_buttonWithContent) {
        Byte value[] = {17, 55, 7, 19, 107, 46, 168, 102, 171, 156, 152, 164, 102, 164, 166, 155, 160, 157, 176, 166, 174, 165, 156, 169, 45};
        show_buttonWithContent = [self StringFromPanData:value];
    }
    return show_buttonWithContent;
}

//: activity_group_info_invite_permission
- (NSString *)mainColdId {
    /* static */ NSString *mainColdId = nil;
    if (!mainColdId) {
        Byte value[] = {37, 65, 7, 148, 82, 136, 149, 162, 164, 181, 170, 183, 170, 181, 186, 160, 168, 179, 176, 182, 177, 160, 170, 175, 167, 176, 160, 170, 175, 183, 170, 181, 166, 160, 177, 166, 179, 174, 170, 180, 180, 170, 176, 175, 162};
        mainColdId = [self StringFromPanData:value];
    }
    return mainColdId;
}

//: group_edit
- (NSString *)user_listenerKey {
    /* static */ NSString *user_listenerKey = nil;
    if (!user_listenerKey) {
        Byte value[] = {10, 82, 3, 185, 196, 193, 199, 194, 177, 183, 182, 187, 198, 90};
        user_listenerKey = [self StringFromPanData:value];
    }
    return user_listenerKey;
}

//: /team/destory
- (NSString *)mActorId {
    /* static */ NSString *mActorId = nil;
    if (!mActorId) {
        Byte value[] = {13, 49, 3, 96, 165, 150, 146, 158, 96, 149, 150, 164, 165, 160, 163, 170, 10};
        mActorId = [self StringFromPanData:value];
    }
    return mActorId;
}

//: message_info_activity_msg_notice
- (NSString *)showSustainTitle {
    /* static */ NSString *showSustainTitle = nil;
    if (!showSustainTitle) {
        Byte value[] = {32, 66, 4, 234, 175, 167, 181, 181, 163, 169, 167, 161, 171, 176, 168, 177, 161, 163, 165, 182, 171, 184, 171, 182, 187, 161, 175, 181, 169, 161, 176, 177, 182, 171, 165, 167, 66};
        showSustainTitle = [self StringFromPanData:value];
    }
    return showSustainTitle;
}

//: icon_photo
- (NSString *)showPullId {
    /* static */ NSString *showPullId = nil;
    if (!showPullId) {
        Byte value[] = {10, 78, 13, 219, 61, 16, 205, 17, 177, 7, 100, 251, 247, 183, 177, 189, 188, 173, 190, 182, 189, 194, 189, 58};
        showPullId = [self StringFromPanData:value];
    }
    return showPullId;
}

//: clear_history
- (NSString *)show_buttTitle {
    /* static */ NSString *show_buttTitle = nil;
    if (!show_buttTitle) {
        Byte value[] = {13, 21, 4, 28, 120, 129, 122, 118, 135, 116, 125, 126, 136, 137, 132, 135, 142, 125};
        show_buttTitle = [self StringFromPanData:value];
    }
    return show_buttTitle;
}

//: ic_invitee_verification
- (NSString *)dreamAtMessage {
    /* static */ NSString *dreamAtMessage = nil;
    if (!dreamAtMessage) {
        Byte value[] = {23, 13, 10, 162, 203, 81, 171, 218, 51, 44, 118, 112, 108, 118, 123, 131, 118, 129, 114, 114, 108, 131, 114, 127, 118, 115, 118, 112, 110, 129, 118, 124, 123, 14};
        dreamAtMessage = [self StringFromPanData:value];
    }
    return dreamAtMessage;
}

//: group_info_activity_team_member
- (NSString *)appWonderfulName {
    /* static */ NSString *appWonderfulName = nil;
    if (!appWonderfulName) {
        Byte value[] = {31, 42, 13, 209, 240, 22, 242, 202, 245, 171, 88, 138, 217, 145, 156, 153, 159, 154, 137, 147, 152, 144, 153, 137, 139, 141, 158, 147, 160, 147, 158, 163, 137, 158, 143, 139, 151, 137, 151, 143, 151, 140, 143, 156, 62};
        appWonderfulName = [self StringFromPanData:value];
    }
    return appWonderfulName;
}

//: 图片保存失败，请重试
- (NSString *)mainDiscoveryStr {
    /* static */ NSString *mainDiscoveryStr = nil;
    if (!mainDiscoveryStr) {
        Byte value[] = {30, 39, 6, 140, 230, 177, 12, 194, 229, 14, 176, 174, 11, 230, 196, 12, 212, 191, 12, 203, 216, 15, 219, 204, 22, 227, 179, 15, 214, 222, 16, 174, 180, 15, 214, 188, 186};
        mainDiscoveryStr = [self StringFromPanData:value];
    }
    return mainDiscoveryStr;
}

//: ic_group_transfer
- (NSString *)userButtIdent {
    /* static */ NSString *userButtIdent = nil;
    if (!userButtIdent) {
        Byte value[] = {17, 17, 12, 36, 124, 173, 17, 143, 117, 211, 237, 79, 122, 116, 112, 120, 131, 128, 134, 129, 112, 133, 131, 114, 127, 132, 119, 118, 131, 13};
        userButtIdent = [self StringFromPanData:value];
    }
    return userButtIdent;
}

//: activity_group_info_group_nick
- (NSString *)app_snapOiId {
    /* static */ NSString *app_snapOiId = nil;
    if (!app_snapOiId) {
        Byte value[] = {30, 1, 5, 37, 20, 98, 100, 117, 106, 119, 106, 117, 122, 96, 104, 115, 112, 118, 113, 96, 106, 111, 103, 112, 96, 104, 115, 112, 118, 113, 96, 111, 106, 100, 108, 128};
        app_snapOiId = [self StringFromPanData:value];
    }
    return app_snapOiId;
}

//: 2C3042
- (NSString *)dream_farMessage {
    /* static */ NSString *dream_farMessage = nil;
    if (!dream_farMessage) {
        Byte value[] = {6, 79, 6, 70, 163, 112, 129, 146, 130, 127, 131, 129, 135};
        dream_farMessage = [self StringFromPanData:value];
    }
    return dream_farMessage;
}

//: ic_group_edit
- (NSString *)k_colorInputWooMsg {
    /* static */ NSString *k_colorInputWooMsg = nil;
    if (!k_colorInputWooMsg) {
        Byte value[] = {13, 75, 4, 52, 180, 174, 170, 178, 189, 186, 192, 187, 170, 176, 175, 180, 191, 56};
        k_colorInputWooMsg = [self StringFromPanData:value];
    }
    return k_colorInputWooMsg;
}

//: /team/modifyname
- (NSString *)mResembleFormat {
    /* static */ NSString *mResembleFormat = nil;
    if (!mResembleFormat) {
        Byte value[] = {16, 60, 4, 34, 107, 176, 161, 157, 169, 107, 169, 171, 160, 165, 162, 181, 170, 157, 169, 161, 15};
        mResembleFormat = [self StringFromPanData:value];
    }
    return mResembleFormat;
}

//: queren
- (NSString *)dreamAlienTitle {
    /* static */ NSString *dreamAlienTitle = nil;
    if (!dreamAlienTitle) {
        Byte value[] = {6, 9, 13, 217, 228, 141, 27, 219, 59, 4, 188, 61, 26, 122, 126, 110, 123, 110, 119, 31};
        dreamAlienTitle = [self StringFromPanData:value];
    }
    return dreamAlienTitle;
}

//: ic_group_nick
- (NSString *)mViewUrl {
    /* static */ NSString *mViewUrl = nil;
    if (!mViewUrl) {
        Byte value[] = {13, 51, 13, 192, 159, 248, 70, 49, 150, 10, 191, 227, 218, 156, 150, 146, 154, 165, 162, 168, 163, 146, 161, 156, 150, 158, 239};
        mViewUrl = [self StringFromPanData:value];
    }
    return mViewUrl;
}

//: FF483D
- (NSString *)user_amKey {
    /* static */ NSString *user_amKey = nil;
    if (!user_amKey) {
        Byte value[] = {6, 29, 8, 59, 219, 192, 233, 71, 99, 99, 81, 85, 80, 97, 181};
        user_amKey = [self StringFromPanData:value];
    }
    return user_amKey;
}

//: ic_group_all
- (NSString *)kTingCellTitle {
    /* static */ NSString *kTingCellTitle = nil;
    if (!kTingCellTitle) {
        Byte value[] = {12, 54, 12, 109, 109, 52, 240, 251, 180, 7, 131, 196, 159, 153, 149, 157, 168, 165, 171, 166, 149, 151, 162, 162, 146};
        kTingCellTitle = [self StringFromPanData:value];
    }
    return kTingCellTitle;
}

//: ic_identity_authentication
- (NSString *)dream_oiValue {
    /* static */ NSString *dream_oiValue = nil;
    if (!dream_oiValue) {
        Byte value[] = {26, 13, 12, 138, 206, 94, 247, 204, 176, 185, 64, 83, 118, 112, 108, 118, 113, 114, 123, 129, 118, 129, 134, 108, 110, 130, 129, 117, 114, 123, 129, 118, 112, 110, 129, 118, 124, 123, 23};
        dream_oiValue = [self StringFromPanData:value];
    }
    return dream_oiValue;
}

//: ic_group_members
- (NSString *)appImageStr {
    /* static */ NSString *appImageStr = nil;
    if (!appImageStr) {
        Byte value[] = {16, 84, 12, 209, 195, 68, 95, 31, 5, 123, 179, 80, 189, 183, 179, 187, 198, 195, 201, 196, 179, 193, 185, 193, 182, 185, 198, 199, 116};
        appImageStr = [self StringFromPanData:value];
    }
    return appImageStr;
}

//: activity_user_profile_clear_chat
- (NSString *)userAffairStressName {
    /* static */ NSString *userAffairStressName = nil;
    if (!userAffairStressName) {
        Byte value[] = {32, 45, 13, 25, 181, 22, 96, 80, 163, 34, 74, 155, 33, 142, 144, 161, 150, 163, 150, 161, 166, 140, 162, 160, 146, 159, 140, 157, 159, 156, 147, 150, 153, 146, 140, 144, 153, 146, 142, 159, 140, 144, 149, 142, 161, 140};
        userAffairStressName = [self StringFromPanData:value];
    }
    return userAffairStressName;
}

//: ic_announcement
- (NSString *)userDistractValue {
    /* static */ NSString *userDistractValue = nil;
    if (!userDistractValue) {
        Byte value[] = {15, 83, 6, 27, 99, 47, 188, 182, 178, 180, 193, 193, 194, 200, 193, 182, 184, 192, 184, 193, 199, 140};
        userDistractValue = [self StringFromPanData:value];
    }
    return userDistractValue;
}

//: Transfer_group_ownership
- (NSString *)notiFabricId {
    /* static */ NSString *notiFabricId = nil;
    if (!notiFabricId) {
        Byte value[] = {24, 39, 10, 115, 85, 140, 133, 164, 191, 3, 123, 153, 136, 149, 154, 141, 140, 153, 134, 142, 153, 150, 156, 151, 134, 150, 158, 149, 140, 153, 154, 143, 144, 151, 130};
        notiFabricId = [self StringFromPanData:value];
    }
    return notiFabricId;
}

//: jpg
- (NSString *)notiIconFormat {
    /* static */ NSString *notiIconFormat = nil;
    if (!notiIconFormat) {
        Byte value[] = {3, 13, 6, 224, 215, 225, 119, 125, 116, 27};
        notiIconFormat = [self StringFromPanData:value];
    }
    return notiIconFormat;
}

//: group_info_activity_give_group
- (NSString *)appRageMotValue {
    /* static */ NSString *appRageMotValue = nil;
    if (!appRageMotValue) {
        Byte value[] = {30, 5, 4, 50, 108, 119, 116, 122, 117, 100, 110, 115, 107, 116, 100, 102, 104, 121, 110, 123, 110, 121, 126, 100, 108, 110, 123, 106, 100, 108, 119, 116, 122, 117, 116};
        appRageMotValue = [self StringFromPanData:value];
    }
    return appRageMotValue;
}

//: activity_group_info_invite_verify
- (NSString *)dreamPhotographyMessage {
    /* static */ NSString *dreamPhotographyMessage = nil;
    if (!dreamPhotographyMessage) {
        Byte value[] = {33, 31, 10, 146, 213, 115, 90, 241, 229, 28, 128, 130, 147, 136, 149, 136, 147, 152, 126, 134, 145, 142, 148, 143, 126, 136, 141, 133, 142, 126, 136, 141, 149, 136, 147, 132, 126, 149, 132, 145, 136, 133, 152, 3};
        dreamPhotographyMessage = [self StringFromPanData:value];
    }
    return dreamPhotographyMessage;
}

//: ic_card_share
- (NSString *)k_dogBornTitle {
    /* static */ NSString *k_dogBornTitle = nil;
    if (!k_dogBornTitle) {
        Byte value[] = {13, 56, 11, 181, 37, 77, 12, 97, 98, 92, 218, 161, 155, 151, 155, 153, 170, 156, 151, 171, 160, 153, 170, 157, 118};
        k_dogBornTitle = [self StringFromPanData:value];
    }
    return k_dogBornTitle;
}

//: please_choose
- (NSString *)show_allyIdent {
    /* static */ NSString *show_allyIdent = nil;
    if (!show_allyIdent) {
        Byte value[] = {13, 53, 12, 45, 127, 122, 31, 196, 72, 130, 1, 78, 165, 161, 154, 150, 168, 154, 148, 152, 157, 164, 164, 168, 154, 184};
        show_allyIdent = [self StringFromPanData:value];
    }
    return show_allyIdent;
}

//: head_default_group
- (NSString *)k_onData {
    /* static */ NSString *k_onData = nil;
    if (!k_onData) {
        Byte value[] = {18, 1, 6, 62, 128, 1, 105, 102, 98, 101, 96, 101, 102, 103, 98, 118, 109, 117, 96, 104, 115, 112, 118, 113, 58};
        k_onData = [self StringFromPanData:value];
    }
    return k_onData;
}

//: activity_group_info_group_toast
- (NSString *)m_sodTingPath {
    /* static */ NSString *m_sodTingPath = nil;
    if (!m_sodTingPath) {
        Byte value[] = {31, 63, 5, 94, 84, 160, 162, 179, 168, 181, 168, 179, 184, 158, 166, 177, 174, 180, 175, 158, 168, 173, 165, 174, 158, 166, 177, 174, 180, 175, 158, 179, 174, 160, 178, 179, 48};
        m_sodTingPath = [self StringFromPanData:value];
    }
    return m_sodTingPath;
}

//: Group_name
- (NSString *)noti_sodPath {
    /* static */ NSString *noti_sodPath = nil;
    if (!noti_sodPath) {
        Byte value[] = {10, 69, 9, 171, 242, 152, 125, 184, 248, 140, 183, 180, 186, 181, 164, 179, 166, 178, 170, 224};
        noti_sodPath = [self StringFromPanData:value];
    }
    return noti_sodPath;
}

//: queren_quit_group
- (NSString *)m_cancelName {
    /* static */ NSString *m_cancelName = nil;
    if (!m_cancelName) {
        Byte value[] = {17, 45, 6, 182, 25, 91, 158, 162, 146, 159, 146, 155, 140, 158, 162, 150, 161, 140, 148, 159, 156, 162, 157, 64};
        m_cancelName = [self StringFromPanData:value];
    }
    return m_cancelName;
}

//: ic_group_notice
- (NSString *)main_standingText {
    /* static */ NSString *main_standingText = nil;
    if (!main_standingText) {
        Byte value[] = {15, 19, 3, 124, 118, 114, 122, 133, 130, 136, 131, 114, 129, 130, 135, 124, 118, 120, 149};
        main_standingText = [self StringFromPanData:value];
    }
    return main_standingText;
}

//: group_info_activity_op_failed
- (NSString *)dreamExplosionId {
    /* static */ NSString *dreamExplosionId = nil;
    if (!dreamExplosionId) {
        Byte value[] = {29, 50, 6, 91, 61, 104, 153, 164, 161, 167, 162, 145, 155, 160, 152, 161, 145, 147, 149, 166, 155, 168, 155, 166, 171, 145, 161, 162, 145, 152, 147, 155, 158, 151, 150, 45};
        dreamExplosionId = [self StringFromPanData:value];
    }
    return dreamExplosionId;
}

//: Confirm_dismiss_group_chat
- (NSString *)userParticipateData {
    /* static */ NSString *userParticipateData = nil;
    if (!userParticipateData) {
        Byte value[] = {26, 52, 4, 3, 119, 163, 162, 154, 157, 166, 161, 147, 152, 157, 167, 161, 157, 167, 167, 147, 155, 166, 163, 169, 164, 147, 151, 156, 149, 168, 217};
        userParticipateData = [self StringFromPanData:value];
    }
    return userParticipateData;
}

//: new_owner_id
- (NSString *)dreamThreadId {
    /* static */ NSString *dreamThreadId = nil;
    if (!dreamThreadId) {
        Byte value[] = {12, 79, 5, 98, 115, 189, 180, 198, 174, 190, 198, 189, 180, 193, 174, 184, 179, 232};
        dreamThreadId = [self StringFromPanData:value];
    }
    return dreamThreadId;
}

//: group_info_activity_exit
- (NSString *)showTheaterJumpId {
    /* static */ NSString *showTheaterJumpId = nil;
    if (!showTheaterJumpId) {
        Byte value[] = {24, 74, 13, 252, 86, 201, 103, 13, 24, 112, 149, 197, 33, 177, 188, 185, 191, 186, 169, 179, 184, 176, 185, 169, 171, 173, 190, 179, 192, 179, 190, 195, 169, 175, 194, 179, 190, 174};
        showTheaterJumpId = [self StringFromPanData:value];
    }
    return showTheaterJumpId;
}

//: ic_group_top
- (NSString *)showCoverKey {
    /* static */ NSString *showCoverKey = nil;
    if (!showCoverKey) {
        Byte value[] = {12, 70, 12, 156, 212, 39, 21, 75, 156, 133, 121, 220, 175, 169, 165, 173, 184, 181, 187, 182, 165, 186, 181, 182, 18};
        showCoverKey = [self StringFromPanData:value];
    }
    return showCoverKey;
}

//: team_info_set_activity_group_tip
- (NSString *)kAspectUrl {
    /* static */ NSString *kAspectUrl = nil;
    if (!kAspectUrl) {
        Byte value[] = {32, 25, 4, 241, 141, 126, 122, 134, 120, 130, 135, 127, 136, 120, 140, 126, 141, 120, 122, 124, 141, 130, 143, 130, 141, 146, 120, 128, 139, 136, 142, 137, 120, 141, 130, 137, 217};
        kAspectUrl = [self StringFromPanData:value];
    }
    return kAspectUrl;
}

//: ic_card_black
- (NSString *)notiNameTitle {
    /* static */ NSString *notiNameTitle = nil;
    if (!notiNameTitle) {
        Byte value[] = {13, 17, 6, 34, 27, 214, 122, 116, 112, 116, 114, 131, 117, 112, 115, 125, 114, 116, 124, 2};
        notiNameTitle = [self StringFromPanData:value];
    }
    return notiNameTitle;
}

//: Transfer_group_exit
- (NSString *)kWarStr {
    /* static */ NSString *kWarStr = nil;
    if (!kWarStr) {
        Byte value[] = {19, 6, 13, 25, 181, 182, 138, 5, 183, 57, 169, 77, 92, 90, 120, 103, 116, 121, 108, 107, 120, 101, 109, 120, 117, 123, 118, 101, 107, 126, 111, 122, 204};
        kWarStr = [self StringFromPanData:value];
    }
    return kWarStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PothouseViewController.m
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushAdvancedTeamCardViewController.h"
#import "PothouseViewController.h"
//: #import "PushContactSelectViewController.h"
#import "SwitchlyViewController.h"
//: #import "CCCTeamMemberListViewController.h"
#import "ConservativeTouchViewController.h"
//: #import "PushTeamMuteMemberListViewController.h"
#import "NeedIndexViewController.h"
//: #import "PushTeamAnnouncementListViewController.h"
#import "ProclamationTeamLightMemoryListViewController.h"
//: #import "PushTeamCardRowItem.h"
#import "Item.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "PushTeamCardMemberItem.h"
#import "CardSession.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"
//: #import "PushTeamCardHeaderView.h"
#import "PushMessageView.h"
//: #import "PushTeamListDataManager.h"
#import "MainRead.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "PushTeamHelper.h"
#import "ShowHelper.h"
//: #import "PushTeamIntroduceViewController.h"
#import "TitleViewController.h"
//: #import "ZMONSetGroupNameView.h"
#import "NameView.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "EnablelyView.h"
//: #import "ZMONAlartView.h"
#import "ShouldView.h"
//: #import "PushGroupAvatarViewController.h"
#import "RaceViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "EnableViewController.h"
//: #import "TeamMemberNormalViewController.h"
#import "BackgroundViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "SessionDevice.h"
//: #import "NTESShareCardAttachment.h"
#import "MaxAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "EventViewController.h"
//: #import "NSSetAvater.h"
#import "SearchedView.h"

//: @interface PushAdvancedTeamCardViewController ()<PushTeamMemberListCellActionDelegate,
@interface PothouseViewController ()<FullMoonLanguage,
//: NIMContactSelectDelegate,
BackgroundDelegate,
//: NIMTeamSwitchProtocol,
TempProtocol,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: PushTeamCardHeaderViewDelegate,
TitleDelegate,
//: NIMTeamAnnouncementListVCDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
CompartmentVcdelegate,EasyLayDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,strong) PushTeamCardHeaderView *headerView;
@property (nonatomic,strong) PushMessageView *headerView;

//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @property (nonatomic, strong) UILabel *introduce;
@property (nonatomic, strong) UILabel *introduce;

//: @property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *footView;
//: @property (nonatomic, strong) ZMONSetGroupNameView *groupnameView;
@property (nonatomic, strong) NameView *groupnameView;
//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) EnablelyView *groupNickNameView;
//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) ShouldView *groupAlartView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) SearchedView *aleartView;

//: @end
@end

//: @implementation PushAdvancedTeamCardViewController
@implementation PothouseViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)reloadData {
- (void)domain {
    //: [super reloadData];
    [super domain];
}

//: - (void)didBuildTeamSwitchCell:(PushTeamSwitchTableViewCell *)cell {
- (void)commentCell:(SaveView *)cell {
    //: cell.switchDelegate = self;
    cell.switchDelegate = self;
}

//: - (void)didBuildTeamMemberCell:(PushTeamMemberListCell *)cell {
- (void)backgroundShow:(AreopagiteViewCell *)cell {
    //: cell.delegate = self;
    cell.delegate = self;
    //: cell.disableInvite = ![PushKitUtil canInviteMemberToTeam:self.teamListManager.myTeamInfo];
    cell.disableInvite = ![KitUtil sub:self.teamListManager.myTeamInfo];
    //: NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    //: for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.members.count) ? (cell.maxShowMemberCount) : (self.teamListManager.members.count)); i++) {
    for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.popDelete.count) ? (cell.maxShowMemberCount) : (self.teamListManager.popDelete.count)); i++) {
        //: PushTeamCardMemberItem *obj = self.teamListManager.members[i];
        CardSession *obj = self.teamListManager.popDelete[i];
        //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
        AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
        //: option.session = self.teamListManager.session;
        option.session = self.teamListManager.session;
        //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:obj.userId option:option];
        DataTeam *info = [[Secret highlight] infoAndStraddleOption:obj.userId item:option];

        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[kTeamMember] = obj;
        dic[appCurrentText] = obj;
        //: dic[kTeamMemberInfo] = info;
        dic[app_iconStr] = info;
        //: [memberInfos addObject:dic];
        [memberInfos addObject:dic];

    }
    //: cell.infos = memberInfos;
    cell.infos = memberInfos;
}

//: #pragma mark - Data
#pragma mark - Data
//: - (NSArray<NSArray<PushTeamCardRowItem *> *> *)buildBodyData{
- (NSArray<NSArray<Item *> *> *)back{
    //: NSArray *ret = nil;
    NSArray *ret = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: BOOL canEdit = [PushKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    BOOL canEdit = [KitUtil aTeam:self.teamListManager.myTeamInfo];
    //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    //: BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
    BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;

    //: PushTeamCardRowItem *teamShareCart = [[PushTeamCardRowItem alloc] init];
    Item *teamShareCart = [[Item alloc] init];
    //: teamShareCart.title = [PushLanguageManager getTextWithKey:@"send_group_card"];
    teamShareCart.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] user_downUrl]];
    //: teamShareCart.subTitle = self.teamListManager.team.teamName;
    teamShareCart.subTitle = self.teamListManager.team.teamName;
    //: teamShareCart.action = @selector(sendGroupCart);
    teamShareCart.action = @selector(teamApp);
    //: teamShareCart.rowHeight = 50.f;
    teamShareCart.rowHeight = 50.f;
    //: teamShareCart.type = TeamCardRowItemTypeCommon;
    teamShareCart.type = TeamCardRowItemTypeCommon;
//    teamShareCart.actionDisabled = !canEdit;
    //: teamShareCart.img = [UIImage imageNamed:@"ic_card_share"];
    teamShareCart.img = [UIImage imageNamed:[[PanData sharedInstance] k_dogBornTitle]];

    //: PushTeamCardRowItem *teamMembers = [[PushTeamCardRowItem alloc] init];
    Item *teamMembers = [[Item alloc] init];
    //: teamMembers.title = [PushLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    teamMembers.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] appWonderfulName]];
    //: teamMembers.subTitle = self.teamListManager.team.teamName;
    teamMembers.subTitle = self.teamListManager.team.teamName;
    //: teamMembers.action = @selector(enterMemberCard);
    teamMembers.action = @selector(trademarkInward);
    //: teamMembers.rowHeight = 50.f;
    teamMembers.rowHeight = 50.f;
    //: teamMembers.type = TeamCardRowItemTypeCommon;
    teamMembers.type = TeamCardRowItemTypeCommon;
    //: teamMembers.actionDisabled = !self.canMemberInfo;
    teamMembers.actionDisabled = !self.canMemberInfo;
    //: teamMembers.img = [UIImage imageNamed:@"ic_group_members"];
    teamMembers.img = [UIImage imageNamed:[[PanData sharedInstance] appImageStr]];

    //: PushTeamCardRowItem *teamAnnoucement = [[PushTeamCardRowItem alloc] init];
    Item *teamAnnoucement = [[Item alloc] init];
    //: teamAnnoucement.title = [PushLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    teamAnnoucement.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] m_sodTingPath]];
    //: teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    //: teamAnnoucement.action = @selector(updateTeamAnnouncement);
    teamAnnoucement.action = @selector(monthAnnouncement);
    //: teamAnnoucement.rowHeight = 50.f;
    teamAnnoucement.rowHeight = 50.f;
    //: teamAnnoucement.type = TeamCardRowItemTypeCommon;
    teamAnnoucement.type = TeamCardRowItemTypeCommon;
//    teamAnnoucement.actionDisabled = !canEdit;
    //: teamAnnoucement.img = [UIImage imageNamed:@"ic_announcement"];
    teamAnnoucement.img = [UIImage imageNamed:[[PanData sharedInstance] userDistractValue]];

    //: PushTeamCardRowItem *teamName = [[PushTeamCardRowItem alloc] init];
    Item *teamName = [[Item alloc] init];
    //: teamName.title = [PushLanguageManager getTextWithKey:@"Group_name"];
    teamName.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] noti_sodPath]];
    //: teamName.subTitle = self.teamListManager.team.teamName;
    teamName.subTitle = self.teamListManager.team.teamName;
    //: teamName.action = @selector(updateTeamName);
    teamName.action = @selector(lengthFor);
    //: teamName.rowHeight = 50.f;
    teamName.rowHeight = 50.f;
    //: teamName.type = TeamCardRowItemTypeCommon;
    teamName.type = TeamCardRowItemTypeCommon;
    //: teamName.actionDisabled = !canEdit;
    teamName.actionDisabled = !canEdit;
    //: teamName.img = [UIImage imageNamed:@"ic_group_edit"];
    teamName.img = [UIImage imageNamed:[[PanData sharedInstance] k_colorInputWooMsg]];


    //: PushTeamCardRowItem *teamNick = [[PushTeamCardRowItem alloc] init];
    Item *teamNick = [[Item alloc] init];
    //: teamNick.title = [PushLanguageManager getTextWithKey:@"activity_group_info_group_nick"];
    teamNick.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] app_snapOiId]];
    //: teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    //: teamNick.action = @selector(updateTeamNick);
    teamNick.action = @selector(alongMessage);
    //: teamNick.rowHeight = 50.f;
    teamNick.rowHeight = 50.f;
    //: teamNick.type = TeamCardRowItemTypeCommon;
    teamNick.type = TeamCardRowItemTypeCommon;
    //: teamNick.img = [UIImage imageNamed:@"ic_group_nick"];
    teamNick.img = [UIImage imageNamed:[[PanData sharedInstance] mViewUrl]];

    //: PushTeamCardRowItem *teamIntro = [[PushTeamCardRowItem alloc] init];
    Item *teamIntro = [[Item alloc] init];
    //: teamIntro.title = [PushLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
    teamIntro.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] kAspectUrl]];
    //: teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [PushLanguageManager getTextWithKey:@"team_info_set_activity_default_group_tip"] : @"");
    teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [BackgroundRandomAttribute content:[[PanData sharedInstance] notiImageId]] : @"");
    //: teamIntro.action = @selector(updateTeamIntro);
    teamIntro.action = @selector(magnituderoView);
    //: teamIntro.rowHeight = 50.f;
    teamIntro.rowHeight = 50.f;
    //: teamIntro.type = TeamCardRowItemTypeCommon;
    teamIntro.type = TeamCardRowItemTypeCommon;
    //: teamIntro.actionDisabled = !canEdit;
    teamIntro.actionDisabled = !canEdit;
    //: teamIntro.img = [UIImage imageNamed:@"ic_group_introduction"];
    teamIntro.img = [UIImage imageNamed:[[PanData sharedInstance] main_explosionMessage]];

//    Item *teamAnnouncement = [[Item alloc] init];
//    teamAnnouncement.title = @"群公告".nim_localized;
//    teamAnnouncement.subTitle = @"点击查看群公告".nim_localized;
//    teamAnnouncement.action = @selector(updateTeamAnnouncement);
//    teamAnnouncement.rowHeight = 50.f;
//    teamAnnouncement.type   = TeamCardRowItemTypeCommon;
//    teamAnnouncement.img = [UIImage imageNamed:@"ic_announcement"];

    //: BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    //: PushTeamCardRowItem *teamMute = [[PushTeamCardRowItem alloc] init];
    Item *teamMute = [[Item alloc] init];
    //: teamMute.title = [PushLanguageManager getTextWithKey:@"activity_group_info_group_mute"];
    teamMute.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] appDateData]];
    //: teamMute.switchOn = inAllMuteMode;
    teamMute.switchOn = inAllMuteMode;
//    teamMute.subTitle = [ShowHelper teamMuteText:inAllMuteMode];
    //: teamMute.rowHeight = 50.f;
    teamMute.rowHeight = 50.f;
    //: teamMute.type = TeamCardRowItemTypeSwitch;
    teamMute.type = TeamCardRowItemTypeSwitch;
    //: teamMute.optionItems = [PushTeamHelper teamMuteItemsWithSeleced:inAllMuteMode];
    teamMute.optionItems = [ShowHelper red:inAllMuteMode];
    //: teamMute.actionDisabled = !canEdit;
    teamMute.actionDisabled = !canEdit;
    //: teamMute.selectedBlock = ^(id<PushKitSelectCardData> item) {
    teamMute.selectedBlock = ^(id<PushKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamMute:[item.value integerValue]];
        [weakSelf roundShow:[item.value integerValue]];
    //: };
    };
    //: teamMute.identify = NIMTeamCardSwithCellTypeMute;
    teamMute.identify = NIMTeamCardSwithCellTypeMute;
    //: teamMute.img = [UIImage imageNamed:@"ic_group_all"];
    teamMute.img = [UIImage imageNamed:[[PanData sharedInstance] kTingCellTitle]];

    //: PushTeamCardRowItem *teamMuteList = [[PushTeamCardRowItem alloc] init];
    Item *teamMuteList = [[Item alloc] init];
    //: teamMuteList.title = [PushLanguageManager getTextWithKey:@"group_mute_member_list_activity_title"];
    teamMuteList.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] mConductText]];
    //: teamMuteList.rowHeight = 50.f;
    teamMuteList.rowHeight = 50.f;
    //: teamMuteList.type = TeamCardRowItemTypeCommon;
    teamMuteList.type = TeamCardRowItemTypeCommon;
    //: teamMuteList.action = @selector(enterMuteList);
    teamMuteList.action = @selector(jointResolution);
    //: teamMuteList.img = [UIImage imageNamed:@"ic_card_black"];
    teamMuteList.img = [UIImage imageNamed:[[PanData sharedInstance] notiNameTitle]];

    //: PushTeamCardRowItem *teamNotify = [[PushTeamCardRowItem alloc] init];
    Item *teamNotify = [[Item alloc] init];
    //: teamNotify.title = [PushLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
    teamNotify.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] showSustainTitle]];//@"消息提醒".nim_localized;
    //: teamNotify.subTitle = [PushTeamHelper notifyStateText:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.subTitle = [ShowHelper tap:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.rowHeight = 50.f;
    teamNotify.rowHeight = 50.f;
    //: teamNotify.type = TeamCardRowItemTypeSelected;
    teamNotify.type = TeamCardRowItemTypeSelected;
    //: teamNotify.optionItems = [PushTeamHelper notifyStateItemsWithSeleced:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.optionItems = [ShowHelper selecedWith:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.selectedBlock = ^(id<PushKitSelectCardData> item) {
    teamNotify.selectedBlock = ^(id<PushKitSelectCardData> item) {
        //: [weakSelf didUpdateNotifiyState:[item.value integerValue]];
        [weakSelf teamMedia:[item.value integerValue]];
    //: };
    };
    //: teamNotify.img = [UIImage imageNamed:@"ic_group_notice"];
    teamNotify.img = [UIImage imageNamed:[[PanData sharedInstance] main_standingText]];


    //: PushTeamCardRowItem *itemAuth = [[PushTeamCardRowItem alloc] init];
    Item *itemAuth = [[Item alloc] init];
    //: itemAuth.title = [PushLanguageManager getTextWithKey:@"authentication"];
    itemAuth.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] mWithTickMessage]];
    //: itemAuth.subTitle = [PushTeamHelper jonModeText:self.teamListManager.team.joinMode];
    itemAuth.subTitle = [ShowHelper nearTitleQuantityeract:self.teamListManager.team.joinMode];
    //: itemAuth.actionDisabled = !canEdit;
    itemAuth.actionDisabled = !canEdit;
    //: itemAuth.rowHeight = 50.f;
    itemAuth.rowHeight = 50.f;
    //: itemAuth.type = TeamCardRowItemTypeSelected;
    itemAuth.type = TeamCardRowItemTypeSelected;
    //: itemAuth.optionItems = [PushTeamHelper joinModeItemsWithSeleced:self.teamListManager.team.joinMode];
    itemAuth.optionItems = [ShowHelper event:self.teamListManager.team.joinMode];
    //: itemAuth.selectedBlock = ^(id<PushKitSelectCardData> item) {
    itemAuth.selectedBlock = ^(id<PushKitSelectCardData> item) {
        //: [weakSelf didupdateTeamJoinMode:[item.value integerValue]];
        [weakSelf view:[item.value integerValue]];
    //: };
    };
    //: itemAuth.img = [UIImage imageNamed:@"ic_identity_authentication"];
    itemAuth.img = [UIImage imageNamed:[[PanData sharedInstance] dream_oiValue]];

    //: PushTeamCardRowItem *itemInvite = [[PushTeamCardRowItem alloc] init];
    Item *itemInvite = [[Item alloc] init];
    //: itemInvite.title = [PushLanguageManager getTextWithKey:@"activity_group_info_invite_permission"];
    itemInvite.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] mainColdId]];
    //: itemInvite.subTitle = [PushTeamHelper InviteModeText:self.teamListManager.team.inviteMode];
    itemInvite.subTitle = [ShowHelper messageTitle:self.teamListManager.team.inviteMode];
    //: itemInvite.actionDisabled = !canEdit;
    itemInvite.actionDisabled = !canEdit;
    //: itemInvite.rowHeight = 50.f;
    itemInvite.rowHeight = 50.f;
    //: itemInvite.type = TeamCardRowItemTypeSelected;
    itemInvite.type = TeamCardRowItemTypeSelected;
    //: itemInvite.optionItems = [PushTeamHelper InviteModeItemsWithSeleced:self.teamListManager.team.inviteMode];
    itemInvite.optionItems = [ShowHelper size:self.teamListManager.team.inviteMode];
    //: itemInvite.selectedBlock = ^(id<PushKitSelectCardData> item) {
    itemInvite.selectedBlock = ^(id<PushKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInviteMode:[item.value integerValue]];
        [weakSelf pop:[item.value integerValue]];
    //: };
    };
    //: itemInvite.img = [UIImage imageNamed:@"ic_invite"];
    itemInvite.img = [UIImage imageNamed:[[PanData sharedInstance] showVeteranValue]];

    //: PushTeamCardRowItem *itemUpdateInfo = [[PushTeamCardRowItem alloc] init];
    Item *itemUpdateInfo = [[Item alloc] init];
    //: itemUpdateInfo.title = [PushLanguageManager getTextWithKey:@"activity_group_info_group_modify_permission"];
    itemUpdateInfo.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] main_speculateUrl]];
    //: itemUpdateInfo.subTitle = [PushTeamHelper updateInfoModeText:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.subTitle = [ShowHelper session:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.actionDisabled = !canEdit;
    itemUpdateInfo.actionDisabled = !canEdit;
    //: itemUpdateInfo.rowHeight = 50.f;
    itemUpdateInfo.rowHeight = 50.f;
    //: itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    //: itemUpdateInfo.optionItems = [PushTeamHelper updateInfoModeItemsWithSeleced:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.optionItems = [ShowHelper title:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.selectedBlock = ^(id<PushKitSelectCardData> item) {
    itemUpdateInfo.selectedBlock = ^(id<PushKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInfoMode:[item.value integerValue]];
        [weakSelf reload:[item.value integerValue]];
    //: };
    };
    //: itemUpdateInfo.img = [UIImage imageNamed:@"ic_modify"];
    itemUpdateInfo.img = [UIImage imageNamed:[[PanData sharedInstance] notiRageData]];

    //: PushTeamCardRowItem *itemBeInvite = [[PushTeamCardRowItem alloc] init];
    Item *itemBeInvite = [[Item alloc] init];
    //: itemBeInvite.title = [PushLanguageManager getTextWithKey:@"activity_group_info_invite_verify"];
    itemBeInvite.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] dreamPhotographyMessage]];
    //: itemBeInvite.subTitle = [PushTeamHelper beInviteModeText:self.teamListManager.team.beInviteMode];
    itemBeInvite.subTitle = [ShowHelper back:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.actionDisabled = !canEdit;
    itemBeInvite.actionDisabled = !canEdit;
    //: itemBeInvite.rowHeight = 50.f;
    itemBeInvite.rowHeight = 50.f;
    //: itemBeInvite.type = TeamCardRowItemTypeSelected;
    itemBeInvite.type = TeamCardRowItemTypeSelected;
    //: itemBeInvite.optionItems = [PushTeamHelper beInviteModeItemsWithSeleced:self.teamListManager.team.beInviteMode];
    itemBeInvite.optionItems = [ShowHelper empty:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.selectedBlock = ^(id<PushKitSelectCardData> item) {
    itemBeInvite.selectedBlock = ^(id<PushKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamBeInviteMode:[item.value integerValue]];
        [weakSelf managerSetup:[item.value integerValue]];
    //: };
    };
    //: itemBeInvite.img = [UIImage imageNamed:@"ic_invitee_verification"];
    itemBeInvite.img = [UIImage imageNamed:[[PanData sharedInstance] dreamAtMessage]];

    //: PushTeamCardRowItem *itemTop = [[PushTeamCardRowItem alloc] init];
    Item *itemTop = [[Item alloc] init];
    //: itemTop.title = [PushLanguageManager getTextWithKey:@"Chat_settop"];
    itemTop.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] kContentName]];
    //: itemTop.switchOn = self.option.isTop;
    itemTop.switchOn = self.option.isTop;
    //: itemTop.rowHeight = 50.f;
    itemTop.rowHeight = 50.f;
    //: itemTop.type = TeamCardRowItemTypeSwitch;
    itemTop.type = TeamCardRowItemTypeSwitch;
    //: itemTop.identify = NIMTeamCardSwithCellTypeTop;
    itemTop.identify = NIMTeamCardSwithCellTypeTop;
    //: itemTop.img = [UIImage imageNamed:@"ic_group_top"];
    itemTop.img = [UIImage imageNamed:[[PanData sharedInstance] showCoverKey]];

//        Item *itemQuit = [[Item alloc] init];
//        itemQuit.title = @"退出高级群".nim_localized;
//        itemQuit.action = @selector(quitTeam);
//        itemQuit.rowHeight = 50.f;
//        itemQuit.type   = TeamCardRowItemTypeRedButton;
//    itemQuit.img = [UIImage imageNamed:@"ic_announcement"];

        //: PushTeamCardRowItem *itemDismiss = [[PushTeamCardRowItem alloc] init];
        Item *itemDismiss = [[Item alloc] init];
        //: itemDismiss.title = [PushLanguageManager getTextWithKey:@"group_info_activity_jiesan"];
        itemDismiss.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] mainRequirementId]];
        //: itemDismiss.action = @selector(dismissTeam);
        itemDismiss.action = @selector(barFile);
        //: itemDismiss.rowHeight = 50.f;
        itemDismiss.rowHeight = 50.f;
        //: itemDismiss.type = TeamCardRowItemTypeRedButton;
        itemDismiss.type = TeamCardRowItemTypeRedButton;
    //: itemDismiss.img = [UIImage imageNamed:@"ic_announcement"];
    itemDismiss.img = [UIImage imageNamed:[[PanData sharedInstance] userDistractValue]];

    //: PushTeamCardRowItem *teamChange = [[PushTeamCardRowItem alloc] init];
    Item *teamChange = [[Item alloc] init];
    //: teamChange.title = [PushLanguageManager getTextWithKey:@"Transfer_group_ownership"];
    teamChange.title = [BackgroundRandomAttribute content:[[PanData sharedInstance] notiFabricId]];
    //: teamChange.rowHeight = 50.f;
    teamChange.rowHeight = 50.f;
    //: teamChange.type = TeamCardRowItemTypeCommon;
    teamChange.type = TeamCardRowItemTypeCommon;
    //: teamChange.action = @selector(onMore);
    teamChange.action = @selector(tipShow);
    //: teamChange.img = [UIImage imageNamed:@"ic_group_transfer"];
    teamChange.img = [UIImage imageNamed:[[PanData sharedInstance] userButtIdent]];


    //: if (isOwner) {
    if (isOwner) {
        //: ret = @[
        ret = @[
                  //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  //: @[teamMuteList,teamMute,itemTop],
                  @[teamMuteList,teamMute,itemTop],
                 //: ];
                 ];
    //: } else if (isManager){
    } else if (isManager){
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            //: @[teamMuteList,teamMute,itemTop],
            @[teamMuteList,teamMute,itemTop],
              //: ];
              ];
    //: } else {
    } else {
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify],
            @[teamNotify],
            //: @[itemTop],
            @[itemTop],
               //: ];
               ];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Refresh
#pragma mark - Refresh
//: - (void)reloadTableViewData {
- (void)questionImage {
    //: self.datas = [self buildBodyData];
    self.datas = [self back];
    //: self.tableView.tableHeaderView = self.userView;
    self.tableView.tableHeaderView = self.userView;
    //: self.tableView.tableFooterView = self.footView;
    self.tableView.tableFooterView = self.footView;
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)sendGroupCart
- (void)teamApp
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    MaxAttachment *attachment = [[MaxAttachment alloc] init];
    //: attachment.title = self.teamListManager.team.teamName;
    attachment.title = self.teamListManager.team.teamName;
    //: attachment.type = @"1";
    attachment.type = @"1";
    //: attachment.personCardId = self.teamListManager.team.teamId;
    attachment.personCardId = self.teamListManager.team.teamId;
    //: attachment.content = @"";
    attachment.content = @"";
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [SessionDevice behindPunchedCard:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    EventViewController *vc = [[EventViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onMore{
- (void)tipShow{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *action0 = [UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"group_info_activity_give_group"]//@"转让群".nim_localized
    UIAlertAction *action0 = [UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[[PanData sharedInstance] appRageMotValue]]//@"转让群".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:NO];
        [weakSelf mode:NO];
    //: }];
    }];

    //: UIAlertAction *action1 = [UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"Transfer_group_exit"] //@"转让群并退出".nim_localized
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[[PanData sharedInstance] kWarStr]] //@"转让群并退出".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:YES];
        [weakSelf mode:YES];
    //: }];
    }];

    //: UIAlertController *alert = [self makeAlertSheetWithTitle:[PushLanguageManager getTextWithKey:@"please_choose"]//@"请操作".nim_localized
    UIAlertController *alert = [self barSize:[BackgroundRandomAttribute content:[[PanData sharedInstance] show_allyIdent]]//@"请操作".nim_localized
                                                     //: actions:@[action0, action1]];
                                                     past:@[action0, action1]];
    //: [self showAlert:alert];
    [self lengthWith:alert];
}

//- (void)onTouchAvatar {
//    if(![KitUtil canEditTeamInfo:self.teamListManager.myTeamInfo])
//        return ;
//    __weak typeof(self) weakSelf = self;
//    UIAlertAction *action0 = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypeCamera];
//    }];
//    
//    UIAlertAction *action1 = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypePhotoLibrary];
//    }];
//    
//    UIAlertController *alert = [self makeAlertSheetWithTitle:LangKey(@"set_group_avater")
//                                                     actions:@[action0, action1]];
//    [self showAlert:alert];
//}

//: - (void)updateTeamName{
- (void)lengthFor{

    //: [self.view addSubview:self.groupnameView];
    [self.view addSubview:self.groupnameView];
    //: [self.groupnameView reloadWithNickname:self.teamListManager.team.teamName];
    [self.groupnameView successPressedDate:self.teamListManager.team.teamName];
    //: [self.groupnameView animationShow];
    [self.groupnameView nakedOption];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupnameView.speiceBackBlock = ^(NSString *groupName){
        self.groupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamName:groupName];
            [self holder:groupName];

            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: dict[@"id"] = self.teamListManager.team.teamId;
            dict[@"id"] = self.teamListManager.team.teamId;
            //: dict[@"name"] = emptyString(groupName);
            dict[[[PanData sharedInstance] kRandomIdent]] = vacantTab(groupName);
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyname"] params:dict isShow:NO success:^(id responseObject) {
            [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[PanData sharedInstance] mResembleFormat]] view:dict fort:NO generate:^(id responseObject) {
                //: [self reloadData];
                [self domain];
                //: self.accountNickname.text = groupName;
                self.accountNickname.text = groupName;
            //: } failed:^(id responseObject, NSError *error) {
            } file:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupnameView animationClose];
            [self.groupnameView nearAdd];
        //: };
        };

}

//: - (void)updateTeamNick
- (void)alongMessage
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView userShow];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamNick:Name];
            [self fill:Name];
            //: [self.groupNickNameView animationClose];
            [self.groupNickNameView nearAdd];
        //: };
        };
}

//: - (void)updateTeamIntro
- (void)magnituderoView
{
    //: PushTeamIntroduceViewController *vc = [[PushTeamIntroduceViewController alloc] init];
    TitleViewController *vc = [[TitleViewController alloc] init];
    //: vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    //: vc.canEdit = [PushKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    vc.canEdit = [KitUtil aTeam:self.teamListManager.myTeamInfo];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: vc.speiceBackBlock = ^(NSString *Introduce){
    vc.speiceBackBlock = ^(NSString *Introduce){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self didUpdateTeamIntro:Introduce];
        [self infoGreenCountro:Introduce];

        //: _introduce.text = Introduce;
        _introduce.text = Introduce;
    //: };
    };
}

//: - (void)updateTeamAnnouncement{
- (void)monthAnnouncement{
    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
    ToolOption *option = [[ToolOption alloc] init];
    //: option.canCreateAnnouncement = [PushKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    option.canCreateAnnouncement = [KitUtil aTeam:self.teamListManager.myTeamInfo];
    //: option.announcement = self.teamListManager.team.announcement;
    option.announcement = self.teamListManager.team.announcement;
    //: option.nick = self.teamListManager.myTeamInfo.nickname;
    option.nick = self.teamListManager.myTeamInfo.nickname;
    //: option.team = self.teamListManager.team;
    option.team = self.teamListManager.team;

    //: PushTeamAnnouncementListViewController *vc = [[PushTeamAnnouncementListViewController alloc] initWithOption:option];
    ProclamationTeamLightMemoryListViewController *vc = [[ProclamationTeamLightMemoryListViewController alloc] initWithKey:option];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)quitTeam {
- (void)quitMenu {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[PushLanguageManager getTextWithKey:@"queren_quit_group"] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[BackgroundRandomAttribute content:[[PanData sharedInstance] m_cancelName]] preferredStyle:UIAlertControllerStyleAlert];
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"queren"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:[[PanData sharedInstance] dreamAlienTitle]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didQuitTeam];
        [weakSelf context];
    //: }];
    }];
    //: [alert addAction:sure];
    [alert addAction:sure];
    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self send]];
    //: [self showAlert:alert];
    [self lengthWith:alert];
}

//: - (void)dismissTeam {
- (void)barFile {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[PushLanguageManager getTextWithKey:@"Confirm_dismiss_group_chat"]];
    [self.groupAlartView with:[BackgroundRandomAttribute content:[[PanData sharedInstance] userParticipateData]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView head];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didDismissTeam];
            [self visualisation];
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/destory"] params:@{@"id":self.teamListManager.team.teamId} isShow:NO success:^(id responseObject) {
            [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[PanData sharedInstance] mActorId]] view:@{@"id":self.teamListManager.team.teamId} fort:NO generate:^(id responseObject) {

            //: } failed:^(id responseObject, NSError *error) {
            } file:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView nearAdd];
        //: };
        };
}

//: - (void)enterMemberCard{
- (void)trademarkInward{

    //: if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: CCCTeamMemberListViewController *vc = [[CCCTeamMemberListViewController alloc] initWithDataSource:self.teamListManager];
        ConservativeTouchViewController *vc = [[ConservativeTouchViewController alloc] initWithIcon:self.teamListManager];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }else{
    }else{
        //: TeamMemberNormalViewController *vc = [[TeamMemberNormalViewController alloc]init];
        BackgroundViewController *vc = [[BackgroundViewController alloc]init];
        //: vc.teamListManager = self.teamListManager;
        vc.teamListManager = self.teamListManager;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)enterMuteList
- (void)jointResolution
{
    //: PushTeamMuteMemberListViewController *vc = [[PushTeamMuteMemberListViewController alloc] init];
    NeedIndexViewController *vc = [[NeedIndexViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - NIMTeamSwitchProtocol
#pragma mark - TempProtocol
//: - (void)cell:(PushTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on{
- (void)collection:(SaveView *)cell margin:(BOOL)on{
    //: if (cell.identify == NIMTeamCardSwithCellTypeTop) {
    if (cell.identify == NIMTeamCardSwithCellTypeTop) {
        //: if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetTop:)]) {
        if ([self.delegate respondsToSelector:@selector(optionTop:)]) {
            //: [self.delegate NIMTeamCardVCDidSetTop:on];
            [self.delegate optionTop:on];
        }
    }
    //: if (cell.identify == NIMTeamCardSwithCellTypeMute) {
    if (cell.identify == NIMTeamCardSwithCellTypeMute) {
//        if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetMute:)]) {
//            [self.delegate NIMTeamCardVCDidSetMute:on];
//        }
//        [self didUpdateTeamMute:on];
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:on
        [[NIMSDK sharedSDK].teamManager updateMuteState:on
                                                 //: inTeam:self.teamListManager.team.teamId
                                                 inTeam:self.teamListManager.team.teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [PushLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [BackgroundRandomAttribute content:[[PanData sharedInstance] dreamMoralOurMessage]];
            //: }else{
            }else{
                //: msg = [PushLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [BackgroundRandomAttribute content:[[PanData sharedInstance] dreamExplosionId]];
            }
            //: [self showToastMsg:msg];
            [self to:msg];
        //: }];
        }];
    }
}

//: #pragma mark - NIMTeamAnnouncementListVCDelegate
#pragma mark - CompartmentVcdelegate
//: - (void)didUpdateAnnouncement:(NSString *)content
- (void)begin:(NSString *)content
                   //: completion:(void (^)(NSError *error))completion {
                   shouldUser:(void (^)(NSError *error))completion {
    //: [self.teamListManager updateTeamAnnouncement:content
    [self.teamListManager noPin:content
                             //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                             date:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: if (completion) {
        if (completion) {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: #pragma mark - PushTeamMemberListCellActionDelegate
#pragma mark - FullMoonLanguage
//: - (void)didSelectAddOpeartor{
- (void)addCheckOpeartor{
    //: NSMutableArray *users = [self.teamListManager memberIds];
    NSMutableArray *users = [self.teamListManager memberIds];
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: [users addObject:currentUserID];
    [users addObject:currentUserID];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    CheckedConfig *config = [[CheckedConfig alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: PushContactSelectViewController *vc = [[PushContactSelectViewController alloc] initWithConfig:config];
    SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc metadata];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)endSelect:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self untilRequest:selectedContacts backMode:nil];
}

//: #pragma mark - Function
#pragma mark - Function
//: - (void)didOntransferWithLeave:(BOOL)isLeave {
- (void)mode:(BOOL)isLeave {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
    __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
        //: NSString *newOwnerId = memeber.firstObject;
        NSString *newOwnerId = memeber.firstObject;
        //: [wself didOntransferToUser:newOwnerId leave:isLeave];
        [wself labelClick:newOwnerId view:isLeave];
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"id"] = self.teamListManager.team.teamId;
        dict[@"id"] = self.teamListManager.team.teamId;
        //: dict[@"new_owner_id"] = newOwnerId;
        dict[[[PanData sharedInstance] dreamThreadId]] = newOwnerId;
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyowner"] params:dict isShow:NO success:^(id responseObject) {
        [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[PanData sharedInstance] show_buttonWithContent]] view:dict fort:NO generate:^(id responseObject) {
            //: [wself reloadData];
            [wself domain];
        //: } failed:^(id responseObject, NSError *error) {
        } file:^(id responseObject, NSError *error) {

        //: }];
        }];
    //: };
    };
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
    OfTo *config = [[OfTo alloc] init];
    //: config.session = self.teamListManager.session;
    config.session = self.teamListManager.session;
    //: config.teamType = NIMKitTeamTypeNomal;
    config.teamType = NIMKitTeamTypeNomal;
    //: config.teamId = self.teamListManager.team.teamId;
    config.teamId = self.teamListManager.team.teamId;
    //: config.filterIds = @[currentUserID];
    config.filterIds = @[currentUserID];
    //: PushContactSelectViewController *vc = [[PushContactSelectViewController alloc] initWithConfig:config];
    SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
    //: vc.finshBlock = finishBlock;
    vc.finshBlock = finishBlock;
    //: [vc show];
    [vc metadata];
}

//: -(void)handlerClear
-(void)buttonInfoNotice
{
    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[PushLanguageManager getTextWithKey:@"clear_history"]];
    [self.groupAlartView with:[BackgroundRandomAttribute content:[[PanData sharedInstance] show_buttTitle]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView head];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self.navigationController popToRootViewControllerAnimated:YES];
                [self.navigationController popToRootViewControllerAnimated:YES];

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView nearAdd];
        //: };
        };


}
//: - (void)handleQrbtn
- (void)viewHandle
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    EnableViewController *vc = [[EnableViewController alloc] init];
    //: vc.isTeam = YES;
    vc.isTeam = YES;
    //: vc.team = self.teamListManager.team;
    vc.team = self.teamListManager.team;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTouchAvatar
- (void)alongWithAvatar
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView record];
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)blues:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self tingData:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self tingData:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)tingData:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf media:image];
    //: weakSelf.accountheadImg.image = image;
    weakSelf.accountheadImg.image = image;
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)uploadImage:(UIImage *)image
- (void)media:(UIImage *)image
{
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image disableSize:CGSizeMake(150, 150)];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[[PanData sharedInstance] notiIconFormat]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager distantAdd:filePath app:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: [wself showToastMsg:msg];
            [wself to:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:@"图片保存失败，请重试".nim_localized];
        [wself to:[[PanData sharedInstance] mainDiscoveryStr].minIn];
    }
}
//: #pragma mark - Getter
#pragma mark - Getter
//: - (NSSetAvater *)aleartView{
- (SearchedView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[SearchedView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice vg_statusBarHeight])];
        _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice title])];
        //: [_userView setBackgroundColor:[UIColor clearColor]];
        [_userView setBackgroundColor:[UIColor clearColor]];

        //: UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        //: infoView.backgroundColor = [UIColor whiteColor];
        infoView.backgroundColor = [UIColor whiteColor];
        //: infoView.layer.cornerRadius = 12;
        infoView.layer.cornerRadius = 12;
        //: infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: infoView.layer.shadowOffset = CGSizeMake(0,4);
        infoView.layer.shadowOffset = CGSizeMake(0,4);
        //: infoView.layer.shadowOpacity = 1;
        infoView.layer.shadowOpacity = 1;
        //: infoView.layer.shadowRadius = 16;
        infoView.layer.shadowRadius = 16;
        //: [_userView addSubview:infoView];
        [_userView addSubview:infoView];

        //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        //: [infoView addSubview:imgView];
        [infoView addSubview:imgView];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [imgView addSubview:self.accountheadImg];
        [imgView addSubview:self.accountheadImg];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:[[PanData sharedInstance] k_onData]]];
        //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
        [cameraicon setImage:[UIImage imageNamed:[[PanData sharedInstance] showPullId]] forState:(UIControlStateNormal)];
        //: cameraicon.layer.cornerRadius = 14;
        cameraicon.layer.cornerRadius = 14;
        //: cameraicon.layer.masksToBounds = YES;
        cameraicon.layer.masksToBounds = YES;
        //: [imgView addSubview:cameraicon];
        [imgView addSubview:cameraicon];
        //: cameraicon.hidden = YES;
        cameraicon.hidden = YES;
        //: [cameraicon addTarget:self action:@selector(onTouchAvatar) forControlEvents:(UIControlEventTouchUpInside)];
        [cameraicon addTarget:self action:@selector(alongWithAvatar) forControlEvents:(UIControlEventTouchUpInside)];
        //: if([PushKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([KitUtil aTeam:self.teamListManager.myTeamInfo]){
            //: cameraicon.hidden = NO;
            cameraicon.hidden = NO;
        }

        //: UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        //: [editBtn setImage:[UIImage imageNamed:@"group_edit"] forState:(UIControlStateNormal)];
        [editBtn setImage:[UIImage imageNamed:[[PanData sharedInstance] user_listenerKey]] forState:(UIControlStateNormal)];
        //: [editBtn addTarget:self action:@selector(updateTeamIntro) forControlEvents:(UIControlEventTouchUpInside)];
        [editBtn addTarget:self action:@selector(magnituderoView) forControlEvents:(UIControlEventTouchUpInside)];
        //: [infoView addSubview:editBtn];
        [infoView addSubview:editBtn];
        //: editBtn.hidden = YES;
        editBtn.hidden = YES;
        //: if([PushKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([KitUtil aTeam:self.teamListManager.myTeamInfo]){
            //: editBtn.hidden = NO;
            editBtn.hidden = NO;
        }

//        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
//        QrBtn.frame = CGRectMake(SCREEN_WIDTH-30-15-36, 15, 36, 36);
////        QrBtn.backgroundColor = [UIColor whiteColor];
//        [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
//        [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
//        QrBtn.layer.cornerRadius = 8;
//        [infoView addSubview:QrBtn];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        //: self.accountNickname.font = [UIFont systemFontOfSize:20];
        self.accountNickname.font = [UIFont systemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: self.accountNickname.text = self.teamListManager.team.teamName;
        self.accountNickname.text = self.teamListManager.team.teamName;
        //: [infoView addSubview:self.accountNickname];
        [infoView addSubview:self.accountNickname];

        //: _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        //: _introduce.font = [UIFont systemFontOfSize:14];
        _introduce.font = [UIFont systemFontOfSize:14];
        //: _introduce.textColor = [UIColor colorWithHexString:@"2C3042"];
        _introduce.textColor = [UIColor user:[[PanData sharedInstance] dream_farMessage]];
        //: _introduce.textAlignment = NSTextAlignmentCenter;
        _introduce.textAlignment = NSTextAlignmentCenter;
        //: _introduce.text = self.teamListManager.team.intro?:[PushLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
        _introduce.text = self.teamListManager.team.intro?:[BackgroundRandomAttribute content:[[PanData sharedInstance] kAspectUrl]];
        //: _introduce.numberOfLines = 0;
        _introduce.numberOfLines = 0;
        //: [infoView addSubview:_introduce];
        [infoView addSubview:_introduce];


    }
    //: return _userView;
    return _userView;
}
//: - (UIView *)footView{
- (UIView *)footView{
    //: if(!_footView){
    if(!_footView){
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        //: _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];
        _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];

        //: UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnClear.frame = CGRectMake(0, 0, width, 44);
        btnClear.frame = CGRectMake(0, 0, width, 44);
        //: btnClear.backgroundColor = [UIColor whiteColor];
        btnClear.backgroundColor = [UIColor whiteColor];
        //: btnClear.layer.cornerRadius = 24;
        btnClear.layer.cornerRadius = 24;
        //: btnClear.layer.borderWidth = 1;
        btnClear.layer.borderWidth = 1;
        //: btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnClear setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnClear setTitleColor:[UIColor user:[[PanData sharedInstance] user_amKey]] forState:UIControlStateNormal];
        //: [btnClear setTitle:[PushLanguageManager getTextWithKey:@"activity_user_profile_clear_chat"] forState:UIControlStateNormal];
        [btnClear setTitle:[BackgroundRandomAttribute content:[[PanData sharedInstance] userAffairStressName]] forState:UIControlStateNormal];
//        [btnClear setImage:[UIImage imageNamed:@"ic_clear"] forState:UIControlStateNormal];
        //: [btnClear addTarget:self action:@selector(handlerClear) forControlEvents:UIControlEventTouchUpInside];
        [btnClear addTarget:self action:@selector(buttonInfoNotice) forControlEvents:UIControlEventTouchUpInside];
        //: [_footView addSubview:btnClear];
        [_footView addSubview:btnClear];


        //: UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        //: btnDet.backgroundColor = [UIColor whiteColor];
        btnDet.backgroundColor = [UIColor whiteColor];
        //: btnDet.layer.cornerRadius = 24;
        btnDet.layer.cornerRadius = 24;
        //: btnDet.layer.borderWidth = 1;
        btnDet.layer.borderWidth = 1;
        //: btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnDet setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnDet setTitleColor:[UIColor user:[[PanData sharedInstance] user_amKey]] forState:UIControlStateNormal];
        //: [_footView addSubview:btnDet];
        [_footView addSubview:btnDet];

        //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        //: if(isOwner){
        if(isOwner){
//            [btnDet setImage:[UIImage imageNamed:@"ic_release"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[PushLanguageManager getTextWithKey:@"group_info_activity_jiesan"] forState:UIControlStateNormal];
            [btnDet setTitle:[BackgroundRandomAttribute content:[[PanData sharedInstance] mainRequirementId]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(dismissTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(barFile) forControlEvents:UIControlEventTouchUpInside];
        //: }else{
        }else{
//            [btnDet setImage:[UIImage imageNamed:@"ic_exit"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[PushLanguageManager getTextWithKey:@"group_info_activity_exit"] forState:UIControlStateNormal];
            [btnDet setTitle:[BackgroundRandomAttribute content:[[PanData sharedInstance] showTheaterJumpId]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(quitTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(quitMenu) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    //: return _footView;
    return _footView;
}

//: - (ZMONSetGroupNameView *)groupnameView
- (NameView *)groupnameView
{
    //: if(!_groupnameView){
    if(!_groupnameView){
        //: _groupnameView = [[ZMONSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupnameView = [[NameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupnameView;
    return _groupnameView;
}

//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (EnablelyView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[EnablelyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}

//: - (ZMONAlartView *)groupAlartView{
- (ShouldView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[ShouldView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}

//: @end
@end

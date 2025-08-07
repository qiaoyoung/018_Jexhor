
#import <Foundation/Foundation.h>

@interface HeroicData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HeroicData

+ (instancetype)sharedInstance {
    static HeroicData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HeroicDataToCache:(Byte *)data {
    int theologyComfortPursuit = data[0];
    int youthTing = data[1];
    for (int i = 0; i < theologyComfortPursuit / 2; i++) {
        int begin = youthTing + i;
        int end = youthTing + theologyComfortPursuit - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[youthTing + theologyComfortPursuit] = 0;
    return data + youthTing;
}

- (NSString *)StringFromHeroicData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HeroicDataToCache:data]];
}  

//: hi_strings
- (NSString *)noti_willingnessData {
    /* static */ NSString *noti_willingnessData = nil;
    if (!noti_willingnessData) {
        Byte value[] = {10, 3, 142, 115, 103, 110, 105, 114, 116, 115, 95, 105, 104, 66};
        noti_willingnessData = [self StringFromHeroicData:value];
    }
    return noti_willingnessData;
}

//: fi_strings
- (NSString *)main_pdaValue {
    /* static */ NSString *main_pdaValue = nil;
    if (!main_pdaValue) {
        Byte value[] = {10, 12, 202, 186, 225, 168, 9, 224, 51, 108, 202, 197, 115, 103, 110, 105, 114, 116, 115, 95, 105, 102, 23};
        main_pdaValue = [self StringFromHeroicData:value];
    }
    return main_pdaValue;
}

//: text
- (NSString *)mainLocalOlaText {
    /* static */ NSString *mainLocalOlaText = nil;
    if (!mainLocalOlaText) {
        Byte value[] = {4, 5, 195, 203, 219, 116, 120, 101, 116, 31};
        mainLocalOlaText = [self StringFromHeroicData:value];
    }
    return mainLocalOlaText;
}

//: resources
- (NSString *)kCarAntName {
    /* static */ NSString *kCarAntName = nil;
    if (!kCarAntName) {
        Byte value[] = {9, 5, 64, 180, 208, 115, 101, 99, 114, 117, 111, 115, 101, 114, 75};
        kCarAntName = [self StringFromHeroicData:value];
    }
    return kCarAntName;
}

//: et_strings
- (NSString *)m_gazeTitle {
    /* static */ NSString *m_gazeTitle = nil;
    if (!m_gazeTitle) {
        Byte value[] = {10, 3, 58, 115, 103, 110, 105, 114, 116, 115, 95, 116, 101, 84};
        m_gazeTitle = [self StringFromHeroicData:value];
    }
    return m_gazeTitle;
}

//: nl_strings
- (NSString *)userTotalryName {
    /* static */ NSString *userTotalryName = nil;
    if (!userTotalryName) {
        Byte value[] = {10, 11, 84, 172, 106, 115, 217, 51, 225, 105, 171, 115, 103, 110, 105, 114, 116, 115, 95, 108, 110, 110};
        userTotalryName = [self StringFromHeroicData:value];
    }
    return userTotalryName;
}

//: tr_strings
- (NSString *)user_protectionData {
    /* static */ NSString *user_protectionData = nil;
    if (!user_protectionData) {
        Byte value[] = {10, 8, 236, 51, 181, 141, 79, 27, 115, 103, 110, 105, 114, 116, 115, 95, 114, 116, 182};
        user_protectionData = [self StringFromHeroicData:value];
    }
    return user_protectionData;
}

//: pl_strings
- (NSString *)show_itsContent {
    /* static */ NSString *show_itsContent = nil;
    if (!show_itsContent) {
        Byte value[] = {10, 7, 103, 234, 144, 96, 181, 115, 103, 110, 105, 114, 116, 115, 95, 108, 112, 162};
        show_itsContent = [self StringFromHeroicData:value];
    }
    return show_itsContent;
}

//: de_strings
- (NSString *)kVoiceTitle {
    /* static */ NSString *kVoiceTitle = nil;
    if (!kVoiceTitle) {
        Byte value[] = {10, 9, 54, 205, 158, 145, 25, 90, 95, 115, 103, 110, 105, 114, 116, 115, 95, 101, 100, 204};
        kVoiceTitle = [self StringFromHeroicData:value];
    }
    return kVoiceTitle;
}

//: id_strings
- (NSString *)kInfoData {
    /* static */ NSString *kInfoData = nil;
    if (!kInfoData) {
        Byte value[] = {10, 12, 122, 41, 174, 212, 188, 68, 250, 167, 155, 171, 115, 103, 110, 105, 114, 116, 115, 95, 100, 105, 45};
        kInfoData = [self StringFromHeroicData:value];
    }
    return kInfoData;
}

//: hr_strings
- (NSString *)kAcceptanceName {
    /* static */ NSString *kAcceptanceName = nil;
    if (!kAcceptanceName) {
        Byte value[] = {10, 7, 232, 184, 81, 179, 122, 115, 103, 110, 105, 114, 116, 115, 95, 114, 104, 164};
        kAcceptanceName = [self StringFromHeroicData:value];
    }
    return kAcceptanceName;
}

//: spa
- (NSString *)app_cigMessageText {
    /* static */ NSString *app_cigMessageText = nil;
    if (!app_cigMessageText) {
        Byte value[] = {3, 10, 191, 67, 122, 33, 75, 91, 126, 45, 97, 112, 115, 202};
        app_cigMessageText = [self StringFromHeroicData:value];
    }
    return app_cigMessageText;
}

//: ug_strings
- (NSString *)userOccupyValue {
    /* static */ NSString *userOccupyValue = nil;
    if (!userOccupyValue) {
        Byte value[] = {10, 7, 27, 28, 34, 152, 195, 115, 103, 110, 105, 114, 116, 115, 95, 103, 117, 119};
        userOccupyValue = [self StringFromHeroicData:value];
    }
    return userOccupyValue;
}

//: name
- (NSString *)user_candleName {
    /* static */ NSString *user_candleName = nil;
    if (!user_candleName) {
        Byte value[] = {4, 9, 200, 27, 171, 103, 14, 141, 75, 101, 109, 97, 110, 68};
        user_candleName = [self StringFromHeroicData:value];
    }
    return user_candleName;
}

//: lt_strings
- (NSString *)notiGenerateTitle {
    /* static */ NSString *notiGenerateTitle = nil;
    if (!notiGenerateTitle) {
        Byte value[] = {10, 9, 152, 69, 33, 36, 220, 186, 148, 115, 103, 110, 105, 114, 116, 115, 95, 116, 108, 90};
        notiGenerateTitle = [self StringFromHeroicData:value];
    }
    return notiGenerateTitle;
}

//: mt_strings
- (NSString *)kCongressionalData {
    /* static */ NSString *kCongressionalData = nil;
    if (!kCongressionalData) {
        Byte value[] = {10, 3, 229, 115, 103, 110, 105, 114, 116, 115, 95, 116, 109, 156};
        kCongressionalData = [self StringFromHeroicData:value];
    }
    return kCongressionalData;
}

//: vi_strings
- (NSString *)appApartmentData {
    /* static */ NSString *appApartmentData = nil;
    if (!appApartmentData) {
        Byte value[] = {10, 9, 186, 150, 151, 192, 30, 251, 247, 115, 103, 110, 105, 114, 116, 115, 95, 105, 118, 95};
        appApartmentData = [self StringFromHeroicData:value];
    }
    return appApartmentData;
}

//: main_tab_my
- (NSString *)noti_stoveData {
    /* static */ NSString *noti_stoveData = nil;
    if (!noti_stoveData) {
        Byte value[] = {11, 6, 159, 209, 107, 102, 121, 109, 95, 98, 97, 116, 95, 110, 105, 97, 109, 74};
        noti_stoveData = [self StringFromHeroicData:value];
    }
    return noti_stoveData;
}

//: hant
- (NSString *)main_pickLopingName {
    /* static */ NSString *main_pickLopingName = nil;
    if (!main_pickLopingName) {
        Byte value[] = {4, 2, 116, 110, 97, 104, 160};
        main_pickLopingName = [self StringFromHeroicData:value];
    }
    return main_pickLopingName;
}

//: sl_strings
- (NSString *)showSilverTitle {
    /* static */ NSString *showSilverTitle = nil;
    if (!showSilverTitle) {
        Byte value[] = {10, 10, 88, 153, 91, 211, 232, 251, 182, 196, 115, 103, 110, 105, 114, 116, 115, 95, 108, 115, 197};
        showSilverTitle = [self StringFromHeroicData:value];
    }
    return showSilverTitle;
}

//: ru_strings
- (NSString *)k_specifyData {
    /* static */ NSString *k_specifyData = nil;
    if (!k_specifyData) {
        Byte value[] = {10, 4, 119, 245, 115, 103, 110, 105, 114, 116, 115, 95, 117, 114, 70};
        k_specifyData = [self StringFromHeroicData:value];
    }
    return k_specifyData;
}

//: %@/%@.xml
- (NSString *)dream_forwardMothData {
    /* static */ NSString *dream_forwardMothData = nil;
    if (!dream_forwardMothData) {
        Byte value[] = {9, 5, 23, 225, 23, 108, 109, 120, 46, 64, 37, 47, 64, 37, 12};
        dream_forwardMothData = [self StringFromHeroicData:value];
    }
    return dream_forwardMothData;
}

//: el_strings
- (NSString *)mVideoPapValue {
    /* static */ NSString *mVideoPapValue = nil;
    if (!mVideoPapValue) {
        Byte value[] = {10, 11, 72, 254, 95, 48, 124, 216, 42, 174, 211, 115, 103, 110, 105, 114, 116, 115, 95, 108, 101, 93};
        mVideoPapValue = [self StringFromHeroicData:value];
    }
    return mVideoPapValue;
}

//: fr_strings
- (NSString *)showSchoolText {
    /* static */ NSString *showSchoolText = nil;
    if (!showSchoolText) {
        Byte value[] = {10, 6, 153, 197, 39, 143, 115, 103, 110, 105, 114, 116, 115, 95, 114, 102, 102};
        showSchoolText = [self StringFromHeroicData:value];
    }
    return showSchoolText;
}

//: zh_CN
- (NSString *)kHighlightText {
    /* static */ NSString *kHighlightText = nil;
    if (!kHighlightText) {
        Byte value[] = {5, 8, 23, 205, 98, 43, 116, 235, 78, 67, 95, 104, 122, 171};
        kHighlightText = [self StringFromHeroicData:value];
    }
    return kHighlightText;
}

//: hu_strings
- (NSString *)kVariationText {
    /* static */ NSString *kVariationText = nil;
    if (!kVariationText) {
        Byte value[] = {10, 11, 195, 24, 115, 142, 22, 147, 185, 206, 222, 115, 103, 110, 105, 114, 116, 115, 95, 117, 104, 234};
        kVariationText = [self StringFromHeroicData:value];
    }
    return kVariationText;
}

//: zh_strings
- (NSString *)userPicData {
    /* static */ NSString *userPicData = nil;
    if (!userPicData) {
        Byte value[] = {10, 6, 95, 247, 208, 146, 115, 103, 110, 105, 114, 116, 115, 95, 104, 122, 134};
        userPicData = [self StringFromHeroicData:value];
    }
    return userPicData;
}

//: sv_strings
- (NSString *)dreamWhipConfirmValue {
    /* static */ NSString *dreamWhipConfirmValue = nil;
    if (!dreamWhipConfirmValue) {
        Byte value[] = {10, 7, 60, 77, 211, 120, 137, 115, 103, 110, 105, 114, 116, 115, 95, 118, 115, 243};
        dreamWhipConfirmValue = [self StringFromHeroicData:value];
    }
    return dreamWhipConfirmValue;
}

//: lv_strings
- (NSString *)showAdultText {
    /* static */ NSString *showAdultText = nil;
    if (!showAdultText) {
        Byte value[] = {10, 5, 89, 149, 195, 115, 103, 110, 105, 114, 116, 115, 95, 118, 108, 212};
        showAdultText = [self StringFromHeroicData:value];
    }
    return showAdultText;
}

//: eg_strings
- (NSString *)appJudgmentTitle {
    /* static */ NSString *appJudgmentTitle = nil;
    if (!appJudgmentTitle) {
        Byte value[] = {10, 10, 211, 29, 76, 204, 93, 146, 66, 88, 115, 103, 110, 105, 114, 116, 115, 95, 103, 101, 153};
        appJudgmentTitle = [self StringFromHeroicData:value];
    }
    return appJudgmentTitle;
}

//: bd_strings
- (NSString *)k_enrollSureValue {
    /* static */ NSString *k_enrollSureValue = nil;
    if (!k_enrollSureValue) {
        Byte value[] = {10, 2, 115, 103, 110, 105, 114, 116, 115, 95, 100, 98, 199};
        k_enrollSureValue = [self StringFromHeroicData:value];
    }
    return k_enrollSureValue;
}

//: lb_strings
- (NSString *)mCandleName {
    /* static */ NSString *mCandleName = nil;
    if (!mCandleName) {
        Byte value[] = {10, 4, 123, 104, 115, 103, 110, 105, 114, 116, 115, 95, 98, 108, 95};
        mCandleName = [self StringFromHeroicData:value];
    }
    return mCandleName;
}

//: ko_strings
- (NSString *)app_boatToeData {
    /* static */ NSString *app_boatToeData = nil;
    if (!app_boatToeData) {
        Byte value[] = {10, 10, 149, 233, 210, 5, 65, 88, 238, 38, 115, 103, 110, 105, 114, 116, 115, 95, 111, 107, 246};
        app_boatToeData = [self StringFromHeroicData:value];
    }
    return app_boatToeData;
}

//: it_strings
- (NSString *)dream_perceptionContent {
    /* static */ NSString *dream_perceptionContent = nil;
    if (!dream_perceptionContent) {
        Byte value[] = {10, 3, 157, 115, 103, 110, 105, 114, 116, 115, 95, 116, 105, 138};
        dream_perceptionContent = [self StringFromHeroicData:value];
    }
    return dream_perceptionContent;
}

//: da_strings
- (NSString *)show_highlightTitle {
    /* static */ NSString *show_highlightTitle = nil;
    if (!show_highlightTitle) {
        Byte value[] = {10, 11, 82, 94, 226, 211, 135, 19, 240, 69, 19, 115, 103, 110, 105, 114, 116, 115, 95, 97, 100, 196};
        show_highlightTitle = [self StringFromHeroicData:value];
    }
    return show_highlightTitle;
}

//: sk_strings
- (NSString *)dreamProtectionData {
    /* static */ NSString *dreamProtectionData = nil;
    if (!dreamProtectionData) {
        Byte value[] = {10, 6, 68, 240, 40, 24, 115, 103, 110, 105, 114, 116, 115, 95, 107, 115, 66};
        dreamProtectionData = [self StringFromHeroicData:value];
    }
    return dreamProtectionData;
}

//: ro_strings
- (NSString *)show_presentTitle {
    /* static */ NSString *show_presentTitle = nil;
    if (!show_presentTitle) {
        Byte value[] = {10, 6, 7, 187, 72, 70, 115, 103, 110, 105, 114, 116, 115, 95, 111, 114, 56};
        show_presentTitle = [self StringFromHeroicData:value];
    }
    return show_presentTitle;
}

//: cs_strings
- (NSString *)mainUnitText {
    /* static */ NSString *mainUnitText = nil;
    if (!mainUnitText) {
        Byte value[] = {10, 7, 253, 49, 102, 53, 191, 115, 103, 110, 105, 114, 116, 115, 95, 115, 99, 243};
        mainUnitText = [self StringFromHeroicData:value];
    }
    return mainUnitText;
}

//: en_strings
- (NSString *)notiStructuralContent {
    /* static */ NSString *notiStructuralContent = nil;
    if (!notiStructuralContent) {
        Byte value[] = {10, 8, 66, 53, 150, 233, 186, 164, 115, 103, 110, 105, 114, 116, 115, 95, 110, 101, 46};
        notiStructuralContent = [self StringFromHeroicData:value];
    }
    return notiStructuralContent;
}

//: string
- (NSString *)notiGooThreeValue {
    /* static */ NSString *notiGooThreeValue = nil;
    if (!notiGooThreeValue) {
        Byte value[] = {6, 12, 216, 120, 163, 60, 108, 113, 16, 208, 162, 201, 103, 110, 105, 114, 116, 115, 251};
        notiGooThreeValue = [self StringFromHeroicData:value];
    }
    return notiGooThreeValue;
}

//: spa_strings
- (NSString *)kLabelValue {
    /* static */ NSString *kLabelValue = nil;
    if (!kLabelValue) {
        Byte value[] = {11, 8, 70, 183, 36, 69, 6, 124, 115, 103, 110, 105, 114, 116, 115, 95, 97, 112, 115, 206};
        kLabelValue = [self StringFromHeroicData:value];
    }
    return kLabelValue;
}

//: pk_strings
- (NSString *)main_labelBronzeName {
    /* static */ NSString *main_labelBronzeName = nil;
    if (!main_labelBronzeName) {
        Byte value[] = {10, 8, 53, 64, 37, 93, 90, 39, 115, 103, 110, 105, 114, 116, 115, 95, 107, 112, 202};
        main_labelBronzeName = [self StringFromHeroicData:value];
    }
    return main_labelBronzeName;
}

//: zh_hant_strings
- (NSString *)mTargetGazeSuspectValue {
    /* static */ NSString *mTargetGazeSuspectValue = nil;
    if (!mTargetGazeSuspectValue) {
        Byte value[] = {15, 5, 70, 66, 114, 115, 103, 110, 105, 114, 116, 115, 95, 116, 110, 97, 104, 95, 104, 122, 120};
        mTargetGazeSuspectValue = [self StringFromHeroicData:value];
    }
    return mTargetGazeSuspectValue;
}

//: pt_strings
- (NSString *)kSliceValue {
    /* static */ NSString *kSliceValue = nil;
    if (!kSliceValue) {
        Byte value[] = {10, 8, 228, 125, 156, 246, 167, 201, 115, 103, 110, 105, 114, 116, 115, 95, 116, 112, 43};
        kSliceValue = [self StringFromHeroicData:value];
    }
    return kSliceValue;
}

//: ga_strings
- (NSString *)app_legacyData {
    /* static */ NSString *app_legacyData = nil;
    if (!app_legacyData) {
        Byte value[] = {10, 3, 86, 115, 103, 110, 105, 114, 116, 115, 95, 97, 103, 94};
        app_legacyData = [self StringFromHeroicData:value];
    }
    return app_legacyData;
}

//: sa_strings
- (NSString *)kMainlyData {
    /* static */ NSString *kMainlyData = nil;
    if (!kMainlyData) {
        Byte value[] = {10, 4, 157, 85, 115, 103, 110, 105, 114, 116, 115, 95, 97, 115, 128};
        kMainlyData = [self StringFromHeroicData:value];
    }
    return kMainlyData;
}

//: bg_strings
- (NSString *)noti_pressureMedicalValue {
    /* static */ NSString *noti_pressureMedicalValue = nil;
    if (!noti_pressureMedicalValue) {
        Byte value[] = {10, 9, 112, 92, 41, 124, 63, 177, 2, 115, 103, 110, 105, 114, 116, 115, 95, 103, 98, 36};
        noti_pressureMedicalValue = [self StringFromHeroicData:value];
    }
    return noti_pressureMedicalValue;
}

//: th_strings
- (NSString *)userRowCountegrityTitle {
    /* static */ NSString *userRowCountegrityTitle = nil;
    if (!userRowCountegrityTitle) {
        Byte value[] = {10, 8, 77, 186, 229, 176, 57, 86, 115, 103, 110, 105, 114, 116, 115, 95, 104, 116, 15};
        userRowCountegrityTitle = [self StringFromHeroicData:value];
    }
    return userRowCountegrityTitle;
}

//: ja_strings
- (NSString *)showOccupyPlungeData {
    /* static */ NSString *showOccupyPlungeData = nil;
    if (!showOccupyPlungeData) {
        Byte value[] = {10, 6, 83, 137, 87, 206, 115, 103, 110, 105, 114, 116, 115, 95, 97, 106, 242};
        showOccupyPlungeData = [self StringFromHeroicData:value];
    }
    return showOccupyPlungeData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputRed.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLanguageManager.h"
#import "InputRed.h"
//: #import "FFFXMLReader.h"
#import "VideoReader.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "SSZipArchiveManager.h"
#import "ButtonManager.h"

//: @interface FFFLanguageManager ()<NSXMLParserDelegate>
@interface InputRed ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation FFFLanguageManager
@implementation InputRed

//: static FFFLanguageManager *shareInstance = nil;
static InputRed *main_eventResultText = nil;

//: + (FFFLanguageManager *)shareInstance{
+ (InputRed *)mortificationDisable{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (main_eventResultText == nil) {
            //: shareInstance = [[FFFLanguageManager alloc] init];
            main_eventResultText = [[InputRed alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            main_eventResultText.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return main_eventResultText;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)preserve:(NSString *)key{
    //: NSMutableDictionary *dict = [FFFLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [InputRed mortificationDisable].langDict;
    //: NSString *value = [dict objectForKey:key];
    NSString *value = [dict objectForKey:key];
    //: if (value == nil ) {
    if (value == nil ) {
        //: NSLog(@"value为空========%@",key);
        //: value = @"";
        value = @"";

    }
    //: return value;
    return value;
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setApposeCellLanguagre:(NSString *)langType{

//    [self.langDict removeAllObjects];

    //: NSString *resourceType = @"zh_strings";
    NSString *resourceType = [[HeroicData sharedInstance] userPicData];
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"en_strings";
        resourceType = [[HeroicData sharedInstance] notiStructuralContent];
    //: }else if ([langType isEqualToString:@"th"]){
    }else if ([langType isEqualToString:@"th"]){
        //: resourceType = @"th_strings";
        resourceType = [[HeroicData sharedInstance] userRowCountegrityTitle];
    //: }else if ([langType isEqualToString:@"vi"]){
    }else if ([langType isEqualToString:@"vi"]){
        //: resourceType = @"vi_strings";
        resourceType = [[HeroicData sharedInstance] appApartmentData];
    //: }else if ([langType isEqualToString:@"hi"]){
    }else if ([langType isEqualToString:@"hi"]){
        //: resourceType = @"hi_strings";
        resourceType = [[HeroicData sharedInstance] noti_willingnessData];
    //: }else if ([langType isEqualToString:@"ja"]){
    }else if ([langType isEqualToString:@"ja"]){
        //: resourceType = @"ja_strings";
        resourceType = [[HeroicData sharedInstance] showOccupyPlungeData];
    //: }else if ([langType isEqualToString:@"ko"]){
    }else if ([langType isEqualToString:@"ko"]){
        //: resourceType = @"ko_strings";
        resourceType = [[HeroicData sharedInstance] app_boatToeData];
    //: }else if ([langType isEqualToString:@"spa"]){
    }else if ([langType isEqualToString:[[HeroicData sharedInstance] app_cigMessageText]]){
        //: resourceType = @"spa_strings";
        resourceType = [[HeroicData sharedInstance] kLabelValue];
    //: }else if ([langType isEqualToString:@"pt"]){
    }else if ([langType isEqualToString:@"pt"]){
        //: resourceType = @"pt_strings";
        resourceType = [[HeroicData sharedInstance] kSliceValue];
    //: }else if ([langType isEqualToString:@"id"]){
    }else if ([langType isEqualToString:@"id"]){
        //: resourceType = @"id_strings";
        resourceType = [[HeroicData sharedInstance] kInfoData];
    //: }else if ([langType isEqualToString:@"it"]){
    }else if ([langType isEqualToString:@"it"]){
        //: resourceType = @"it_strings";
        resourceType = [[HeroicData sharedInstance] dream_perceptionContent];
    //: }else if ([langType isEqualToString:@"eg"]){
    }else if ([langType isEqualToString:@"eg"]){
        //: resourceType = @"eg_strings";
        resourceType = [[HeroicData sharedInstance] appJudgmentTitle];
    //: }else if ([langType isEqualToString:@"tr"]){
    }else if ([langType isEqualToString:@"tr"]){
        //: resourceType = @"tr_strings";
        resourceType = [[HeroicData sharedInstance] user_protectionData];
    //: }else if ([langType isEqualToString:@"ug"]){
    }else if ([langType isEqualToString:@"ug"]){
        //: resourceType = @"ug_strings";
        resourceType = [[HeroicData sharedInstance] userOccupyValue];
    //: }else if ([langType isEqualToString:@"de"]){
    }else if ([langType isEqualToString:@"de"]){
        //: resourceType = @"de_strings";
        resourceType = [[HeroicData sharedInstance] kVoiceTitle];
    //: }else if ([langType isEqualToString:@"pk"]){
    }else if ([langType isEqualToString:@"pk"]){
        //: resourceType = @"pk_strings";
        resourceType = [[HeroicData sharedInstance] main_labelBronzeName];
    //: }else if ([langType isEqualToString:@"sa"]){
    }else if ([langType isEqualToString:@"sa"]){
        //: resourceType = @"sa_strings";
        resourceType = [[HeroicData sharedInstance] kMainlyData];
    //: }else if ([langType isEqualToString:@"ru"]){
    }else if ([langType isEqualToString:@"ru"]){
        //: resourceType = @"ru_strings";
        resourceType = [[HeroicData sharedInstance] k_specifyData];
    //: }else if ([langType isEqualToString:@"bd"]){
    }else if ([langType isEqualToString:@"bd"]){
        //: resourceType = @"bd_strings";
        resourceType = [[HeroicData sharedInstance] k_enrollSureValue];
    //: }else if ([langType isEqualToString:@"fr"]){
    }else if ([langType isEqualToString:@"fr"]){
        //: resourceType = @"fr_strings";
        resourceType = [[HeroicData sharedInstance] showSchoolText];
    //: }else if ([langType isEqualToString:@"hant"]){
    }else if ([langType isEqualToString:[[HeroicData sharedInstance] main_pickLopingName]]){
        //: resourceType = @"zh_hant_strings";
        resourceType = [[HeroicData sharedInstance] mTargetGazeSuspectValue];
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv_strings";
        resourceType = [[HeroicData sharedInstance] dreamWhipConfirmValue];
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl_strings";
        resourceType = [[HeroicData sharedInstance] showSilverTitle];
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk_strings";
        resourceType = [[HeroicData sharedInstance] dreamProtectionData];
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro_strings";
        resourceType = [[HeroicData sharedInstance] show_presentTitle];
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl_strings";
        resourceType = [[HeroicData sharedInstance] show_itsContent];
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl_strings";
        resourceType = [[HeroicData sharedInstance] userTotalryName];
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt_strings";
        resourceType = [[HeroicData sharedInstance] kCongressionalData];
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb_strings";
        resourceType = [[HeroicData sharedInstance] mCandleName];
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt_strings";
        resourceType = [[HeroicData sharedInstance] notiGenerateTitle];
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv_strings";
        resourceType = [[HeroicData sharedInstance] showAdultText];
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg_strings";
        resourceType = [[HeroicData sharedInstance] noti_pressureMedicalValue];
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr_strings";
        resourceType = [[HeroicData sharedInstance] kAcceptanceName];
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs_strings";
        resourceType = [[HeroicData sharedInstance] mainUnitText];
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da_strings";
        resourceType = [[HeroicData sharedInstance] show_highlightTitle];
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et_strings";
        resourceType = [[HeroicData sharedInstance] m_gazeTitle];
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi_strings";
        resourceType = [[HeroicData sharedInstance] main_pdaValue];
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el_strings";
        resourceType = [[HeroicData sharedInstance] mVideoPapValue];
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu_strings";
        resourceType = [[HeroicData sharedInstance] kVariationText];
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga_strings";
        resourceType = [[HeroicData sharedInstance] app_legacyData];
    }

    //: NSString *xmlFilePath = [[[SSZipArchiveManager sharedManager] getXML_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@.xml", langType, resourceType]];
    NSString *xmlFilePath = [[[ButtonManager examineedManager] cleanDisablePath] stringByAppendingPathComponent:[NSString stringWithFormat:[[HeroicData sharedInstance] dream_forwardMothData], langType, resourceType]];

    //: if (![[NSFileManager defaultManager] fileExistsAtPath:xmlFilePath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:xmlFilePath]) {
        //: NSLog(@"XML file not found at path: %@", xmlFilePath);
        //: return;
        return;
    }

    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: if (!xmlData) {
    if (!xmlData) {
        //: NSLog(@"Failed to load XML data from file: %@", xmlFilePath);
        //: return;
        return;
    }

    //: NSError *error = nil;
    NSError *error = nil;
    //: if (error) {
    if (error) {
        //: NSLog(@"error : %@", error);
    }
    //: NSDictionary *result = [FFFXMLReader dictionaryForXMLData:xmlData error:&error];
    NSDictionary *result = [VideoReader mode:xmlData user_autoreleasing:&error];
//    NSDictionary *result = [NSDictionary dictionaryWithXML:xmlData];

    //: NSLog(@"result : %@", result);
    //: if (result) {
    if (result) {
        //: NSDictionary *resources = [result objectForKey:@"resources"];
        NSDictionary *resources = [result objectForKey:[[HeroicData sharedInstance] kCarAntName]];
        //: if (resources) {
        if (resources) {
            //: NSArray *string = [resources objectForKey:@"string"];
            NSArray *string = [resources objectForKey:[[HeroicData sharedInstance] notiGooThreeValue]];
            //: if (string.count > 0) {
            if (string.count > 0) {
                //: [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    //: NSString *name = [obj objectForKey:@"name"];
                    NSString *name = [obj objectForKey:[[HeroicData sharedInstance] user_candleName]];
                    //: NSString *text = [obj objectForKey:@"text"];
                    NSString *text = [obj objectForKey:[[HeroicData sharedInstance] mainLocalOlaText]];
                    //: [self.langDict setObject:text forKey:name];
                    [self.langDict setObject:text forKey:name];
                //: }];
                }];
            }
        }

//        NSArray *string = [result objectForKey:@"string"];
//        if (string.count > 0) {
//            [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                NSString *name = [obj objectForKey:@"name"];
//                NSString *text = [obj objectForKey:@"_text"];
//                [self.langDict setObject:text forKey:name];
//            }];
//        }
    }
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)parserDidStartDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}
//: - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
    //: NSLog(@"出错");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[[HeroicData sharedInstance] notiGooThreeValue]]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[[HeroicData sharedInstance] user_candleName]];
        //NSLog(@"--------%@",_currentElementName);
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: if ([_currentElementName isEqualToString:@"main_tab_my"]) {
        if ([_currentElementName isEqualToString:[[HeroicData sharedInstance] noti_stoveData]]) {
            //: NSLog(@"%@",string);
        }
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)parserDidEndDocument:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)locale{//th-TH  vi-VN
//    NSString *language = [SessionRecord standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = [[HeroicData sharedInstance] kHighlightText];
//    if ([language isEqualToString:@"en"]) {
//        return @"en_US";
//    }
    //: return locale;
    return locale;
}


//: @end
@end
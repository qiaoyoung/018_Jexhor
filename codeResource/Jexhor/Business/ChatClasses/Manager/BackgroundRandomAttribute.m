
#import <Foundation/Foundation.h>

typedef struct {
    Byte archer;
    Byte *centerOffense;
    unsigned int minify;
	int scienceNuclear;
} StructCancelData;

@interface CancelData : NSObject

@end

@implementation CancelData

+ (Byte *)CancelDataToByte:(StructCancelData *)data {
    for (int i = 0; i < data->minify; i++) {
        data->centerOffense[i] ^= data->archer;
    }
    data->centerOffense[data->minify] = 0;
	if (data->minify >= 1) {
		data->scienceNuclear = data->centerOffense[0];
	}
    return data->centerOffense;
}

+ (NSString *)StringFromCancelData:(StructCancelData *)data {
    return [NSString stringWithUTF8String:(char *)[self CancelDataToByte:data]];
}

//: spa
+ (NSString *)notiEconomicName {
    /* static */ NSString *notiEconomicName = nil;
    if (!notiEconomicName) {
        StructCancelData value = (StructCancelData){218, (Byte []){169, 170, 187, 241}, 3, 251};
        notiEconomicName = [self StringFromCancelData:&value];
    }
    return notiEconomicName;
}

//: fi_strings
+ (NSString *)user_buddyGentMessage {
    /* static */ NSString *user_buddyGentMessage = nil;
    if (!user_buddyGentMessage) {
        StructCancelData value = (StructCancelData){95, (Byte []){57, 54, 0, 44, 43, 45, 54, 49, 56, 44, 9}, 10, 191};
        user_buddyGentMessage = [self StringFromCancelData:&value];
    }
    return user_buddyGentMessage;
}

//: bg_strings
+ (NSString *)showLightFormat {
    /* static */ NSString *showLightFormat = nil;
    if (!showLightFormat) {
        StructCancelData value = (StructCancelData){98, (Byte []){0, 5, 61, 17, 22, 16, 11, 12, 5, 17, 177}, 10, 213};
        showLightFormat = [self StringFromCancelData:&value];
    }
    return showLightFormat;
}

//: da_strings
+ (NSString *)showEpidemicName {
    /* static */ NSString *showEpidemicName = nil;
    if (!showEpidemicName) {
        StructCancelData value = (StructCancelData){104, (Byte []){12, 9, 55, 27, 28, 26, 1, 6, 15, 27, 67}, 10, 92};
        showEpidemicName = [self StringFromCancelData:&value];
    }
    return showEpidemicName;
}

//: hant
+ (NSString *)userAlienAllyKey {
    /* static */ NSString *userAlienAllyKey = nil;
    if (!userAlienAllyKey) {
        StructCancelData value = (StructCancelData){57, (Byte []){81, 88, 87, 77, 250}, 4, 127};
        userAlienAllyKey = [self StringFromCancelData:&value];
    }
    return userAlienAllyKey;
}

//: mt_strings
+ (NSString *)k_celebrityFormat {
    /* static */ NSString *k_celebrityFormat = nil;
    if (!k_celebrityFormat) {
        StructCancelData value = (StructCancelData){13, (Byte []){96, 121, 82, 126, 121, 127, 100, 99, 106, 126, 42}, 10, 251};
        k_celebrityFormat = [self StringFromCancelData:&value];
    }
    return k_celebrityFormat;
}

//: pl_strings
+ (NSString *)dream_villageForeignUrl {
    /* static */ NSString *dream_villageForeignUrl = nil;
    if (!dream_villageForeignUrl) {
        StructCancelData value = (StructCancelData){6, (Byte []){118, 106, 89, 117, 114, 116, 111, 104, 97, 117, 170}, 10, 144};
        dream_villageForeignUrl = [self StringFromCancelData:&value];
    }
    return dream_villageForeignUrl;
}

//: en_strings
+ (NSString *)noti_cessEquateFormat {
    /* static */ NSString *noti_cessEquateFormat = nil;
    if (!noti_cessEquateFormat) {
        StructCancelData value = (StructCancelData){138, (Byte []){239, 228, 213, 249, 254, 248, 227, 228, 237, 249, 156}, 10, 66};
        noti_cessEquateFormat = [self StringFromCancelData:&value];
    }
    return noti_cessEquateFormat;
}

//: ja_strings
+ (NSString *)main_teamFormat {
    /* static */ NSString *main_teamFormat = nil;
    if (!main_teamFormat) {
        StructCancelData value = (StructCancelData){231, (Byte []){141, 134, 184, 148, 147, 149, 142, 137, 128, 148, 105}, 10, 189};
        main_teamFormat = [self StringFromCancelData:&value];
    }
    return main_teamFormat;
}

//: tr_strings
+ (NSString *)appOurselvesId {
    /* static */ NSString *appOurselvesId = nil;
    if (!appOurselvesId) {
        StructCancelData value = (StructCancelData){201, (Byte []){189, 187, 150, 186, 189, 187, 160, 167, 174, 186, 15}, 10, 158};
        appOurselvesId = [self StringFromCancelData:&value];
    }
    return appOurselvesId;
}

//: text
+ (NSString *)mInvestorId {
    /* static */ NSString *mInvestorId = nil;
    if (!mInvestorId) {
        StructCancelData value = (StructCancelData){70, (Byte []){50, 35, 62, 50, 56}, 4, 81};
        mInvestorId = [self StringFromCancelData:&value];
    }
    return mInvestorId;
}

//: cs_strings
+ (NSString *)dreamShowUrl {
    /* static */ NSString *dreamShowUrl = nil;
    if (!dreamShowUrl) {
        StructCancelData value = (StructCancelData){203, (Byte []){168, 184, 148, 184, 191, 185, 162, 165, 172, 184, 49}, 10, 204};
        dreamShowUrl = [self StringFromCancelData:&value];
    }
    return dreamShowUrl;
}

//: lv_strings
+ (NSString *)mRendData {
    /* static */ NSString *mRendData = nil;
    if (!mRendData) {
        StructCancelData value = (StructCancelData){211, (Byte []){191, 165, 140, 160, 167, 161, 186, 189, 180, 160, 55}, 10, 185};
        mRendData = [self StringFromCancelData:&value];
    }
    return mRendData;
}

//: string
+ (NSString *)showCageMayPath {
    /* static */ NSString *showCageMayPath = nil;
    if (!showCageMayPath) {
        StructCancelData value = (StructCancelData){93, (Byte []){46, 41, 47, 52, 51, 58, 59}, 6, 139};
        showCageMayPath = [self StringFromCancelData:&value];
    }
    return showCageMayPath;
}

//: resources
+ (NSString *)userWakeCigaretPath {
    /* static */ NSString *userWakeCigaretPath = nil;
    if (!userWakeCigaretPath) {
        StructCancelData value = (StructCancelData){140, (Byte []){254, 233, 255, 227, 249, 254, 239, 233, 255, 173}, 9, 16};
        userWakeCigaretPath = [self StringFromCancelData:&value];
    }
    return userWakeCigaretPath;
}

//: ga_strings
+ (NSString *)user_weaknessMessage {
    /* static */ NSString *user_weaknessMessage = nil;
    if (!user_weaknessMessage) {
        StructCancelData value = (StructCancelData){27, (Byte []){124, 122, 68, 104, 111, 105, 114, 117, 124, 104, 235}, 10, 225};
        user_weaknessMessage = [self StringFromCancelData:&value];
    }
    return user_weaknessMessage;
}

//: th_strings
+ (NSString *)noti_orbUrl {
    /* static */ NSString *noti_orbUrl = nil;
    if (!noti_orbUrl) {
        StructCancelData value = (StructCancelData){128, (Byte []){244, 232, 223, 243, 244, 242, 233, 238, 231, 243, 91}, 10, 10};
        noti_orbUrl = [self StringFromCancelData:&value];
    }
    return noti_orbUrl;
}

//: ko_strings
+ (NSString *)dreamTumName {
    /* static */ NSString *dreamTumName = nil;
    if (!dreamTumName) {
        StructCancelData value = (StructCancelData){167, (Byte []){204, 200, 248, 212, 211, 213, 206, 201, 192, 212, 93}, 10, 230};
        dreamTumName = [self StringFromCancelData:&value];
    }
    return dreamTumName;
}

//: id_strings
+ (NSString *)app_oreValue {
    /* static */ NSString *app_oreValue = nil;
    if (!app_oreValue) {
        StructCancelData value = (StructCancelData){53, (Byte []){92, 81, 106, 70, 65, 71, 92, 91, 82, 70, 167}, 10, 219};
        app_oreValue = [self StringFromCancelData:&value];
    }
    return app_oreValue;
}

//: spa_strings
+ (NSString *)mConstantlySaleValue {
    /* static */ NSString *mConstantlySaleValue = nil;
    if (!mConstantlySaleValue) {
        StructCancelData value = (StructCancelData){97, (Byte []){18, 17, 0, 62, 18, 21, 19, 8, 15, 6, 18, 56}, 11, 89};
        mConstantlySaleValue = [self StringFromCancelData:&value];
    }
    return mConstantlySaleValue;
}

//: ug_strings
+ (NSString *)userClothingValue {
    /* static */ NSString *userClothingValue = nil;
    if (!userClothingValue) {
        StructCancelData value = (StructCancelData){192, (Byte []){181, 167, 159, 179, 180, 178, 169, 174, 167, 179, 70}, 10, 63};
        userClothingValue = [self StringFromCancelData:&value];
    }
    return userClothingValue;
}

//: fr_strings
+ (NSString *)dream_spaceTeaValue {
    /* static */ NSString *dream_spaceTeaValue = nil;
    if (!dream_spaceTeaValue) {
        StructCancelData value = (StructCancelData){9, (Byte []){111, 123, 86, 122, 125, 123, 96, 103, 110, 122, 34}, 10, 133};
        dream_spaceTeaValue = [self StringFromCancelData:&value];
    }
    return dream_spaceTeaValue;
}

//: et_strings
+ (NSString *)user_venueAllotName {
    /* static */ NSString *user_venueAllotName = nil;
    if (!user_venueAllotName) {
        StructCancelData value = (StructCancelData){4, (Byte []){97, 112, 91, 119, 112, 118, 109, 106, 99, 119, 58}, 10, 16};
        user_venueAllotName = [self StringFromCancelData:&value];
    }
    return user_venueAllotName;
}

//: vi_strings
+ (NSString *)m_thankName {
    /* static */ NSString *m_thankName = nil;
    if (!m_thankName) {
        StructCancelData value = (StructCancelData){97, (Byte []){23, 8, 62, 18, 21, 19, 8, 15, 6, 18, 171}, 10, 61};
        m_thankName = [self StringFromCancelData:&value];
    }
    return m_thankName;
}

//: pt_strings
+ (NSString *)noti_closedId {
    /* static */ NSString *noti_closedId = nil;
    if (!noti_closedId) {
        StructCancelData value = (StructCancelData){189, (Byte []){205, 201, 226, 206, 201, 207, 212, 211, 218, 206, 155}, 10, 28};
        noti_closedId = [self StringFromCancelData:&value];
    }
    return noti_closedId;
}

//: bd_strings
+ (NSString *)kLegislationText {
    /* static */ NSString *kLegislationText = nil;
    if (!kLegislationText) {
        StructCancelData value = (StructCancelData){178, (Byte []){208, 214, 237, 193, 198, 192, 219, 220, 213, 193, 12}, 10, 164};
        kLegislationText = [self StringFromCancelData:&value];
    }
    return kLegislationText;
}

//: ru_strings
+ (NSString *)mainLegendTitle {
    /* static */ NSString *mainLegendTitle = nil;
    if (!mainLegendTitle) {
        StructCancelData value = (StructCancelData){213, (Byte []){167, 160, 138, 166, 161, 167, 188, 187, 178, 166, 204}, 10, 200};
        mainLegendTitle = [self StringFromCancelData:&value];
    }
    return mainLegendTitle;
}

//: sl_strings
+ (NSString *)k_conductKey {
    /* static */ NSString *k_conductKey = nil;
    if (!k_conductKey) {
        StructCancelData value = (StructCancelData){108, (Byte []){31, 0, 51, 31, 24, 30, 5, 2, 11, 31, 80}, 10, 140};
        k_conductKey = [self StringFromCancelData:&value];
    }
    return k_conductKey;
}

//: ro_strings
+ (NSString *)showJustifyPath {
    /* static */ NSString *showJustifyPath = nil;
    if (!showJustifyPath) {
        StructCancelData value = (StructCancelData){18, (Byte []){96, 125, 77, 97, 102, 96, 123, 124, 117, 97, 189}, 10, 2};
        showJustifyPath = [self StringFromCancelData:&value];
    }
    return showJustifyPath;
}

//: zh_strings
+ (NSString *)userShowFormat {
    /* static */ NSString *userShowFormat = nil;
    if (!userShowFormat) {
        StructCancelData value = (StructCancelData){186, (Byte []){192, 210, 229, 201, 206, 200, 211, 212, 221, 201, 223}, 10, 67};
        userShowFormat = [self StringFromCancelData:&value];
    }
    return userShowFormat;
}

//: main_tab_my
+ (NSString *)dream_crucialEmpireLightlyId {
    /* static */ NSString *dream_crucialEmpireLightlyId = nil;
    if (!dream_crucialEmpireLightlyId) {
        StructCancelData value = (StructCancelData){57, (Byte []){84, 88, 80, 87, 102, 77, 88, 91, 102, 84, 64, 160}, 11, 53};
        dream_crucialEmpireLightlyId = [self StringFromCancelData:&value];
    }
    return dream_crucialEmpireLightlyId;
}

//: lb_strings
+ (NSString *)notiGenerallyValue {
    /* static */ NSString *notiGenerallyValue = nil;
    if (!notiGenerallyValue) {
        StructCancelData value = (StructCancelData){108, (Byte []){0, 14, 51, 31, 24, 30, 5, 2, 11, 31, 22}, 10, 175};
        notiGenerallyValue = [self StringFromCancelData:&value];
    }
    return notiGenerallyValue;
}

//: el_strings
+ (NSString *)k_offenseMessageDealerFormat {
    /* static */ NSString *k_offenseMessageDealerFormat = nil;
    if (!k_offenseMessageDealerFormat) {
        StructCancelData value = (StructCancelData){122, (Byte []){31, 22, 37, 9, 14, 8, 19, 20, 29, 9, 108}, 10, 65};
        k_offenseMessageDealerFormat = [self StringFromCancelData:&value];
    }
    return k_offenseMessageDealerFormat;
}

//: hu_strings
+ (NSString *)main_allotName {
    /* static */ NSString *main_allotName = nil;
    if (!main_allotName) {
        StructCancelData value = (StructCancelData){180, (Byte []){220, 193, 235, 199, 192, 198, 221, 218, 211, 199, 255}, 10, 35};
        main_allotName = [self StringFromCancelData:&value];
    }
    return main_allotName;
}

//: %@/%@.xml
+ (NSString *)user_luckMsg {
    /* static */ NSString *user_luckMsg = nil;
    if (!user_luckMsg) {
        StructCancelData value = (StructCancelData){67, (Byte []){102, 3, 108, 102, 3, 109, 59, 46, 47, 191}, 9, 51};
        user_luckMsg = [self StringFromCancelData:&value];
    }
    return user_luckMsg;
}

//: pk_strings
+ (NSString *)appHamName {
    /* static */ NSString *appHamName = nil;
    if (!appHamName) {
        StructCancelData value = (StructCancelData){235, (Byte []){155, 128, 180, 152, 159, 153, 130, 133, 140, 152, 32}, 10, 20};
        appHamName = [self StringFromCancelData:&value];
    }
    return appHamName;
}

//: eg_strings
+ (NSString *)appCountmaCostlyGalTitle {
    /* static */ NSString *appCountmaCostlyGalTitle = nil;
    if (!appCountmaCostlyGalTitle) {
        StructCancelData value = (StructCancelData){78, (Byte []){43, 41, 17, 61, 58, 60, 39, 32, 41, 61, 53}, 10, 118};
        appCountmaCostlyGalTitle = [self StringFromCancelData:&value];
    }
    return appCountmaCostlyGalTitle;
}

//: sk_strings
+ (NSString *)user_buildUrl {
    /* static */ NSString *user_buildUrl = nil;
    if (!user_buildUrl) {
        StructCancelData value = (StructCancelData){34, (Byte []){81, 73, 125, 81, 86, 80, 75, 76, 69, 81, 139}, 10, 45};
        user_buildUrl = [self StringFromCancelData:&value];
    }
    return user_buildUrl;
}

//: it_strings
+ (NSString *)showVotingBrigName {
    /* static */ NSString *showVotingBrigName = nil;
    if (!showVotingBrigName) {
        StructCancelData value = (StructCancelData){239, (Byte []){134, 155, 176, 156, 155, 157, 134, 129, 136, 156, 109}, 10, 133};
        showVotingBrigName = [self StringFromCancelData:&value];
    }
    return showVotingBrigName;
}

//: zh_hant_strings
+ (NSString *)dreamDrawAtIdent {
    /* static */ NSString *dreamDrawAtIdent = nil;
    if (!dreamDrawAtIdent) {
        StructCancelData value = (StructCancelData){157, (Byte []){231, 245, 194, 245, 252, 243, 233, 194, 238, 233, 239, 244, 243, 250, 238, 45}, 15, 31};
        dreamDrawAtIdent = [self StringFromCancelData:&value];
    }
    return dreamDrawAtIdent;
}

//: sv_strings
+ (NSString *)mConstantlyId {
    /* static */ NSString *mConstantlyId = nil;
    if (!mConstantlyId) {
        StructCancelData value = (StructCancelData){212, (Byte []){167, 162, 139, 167, 160, 166, 189, 186, 179, 167, 211}, 10, 70};
        mConstantlyId = [self StringFromCancelData:&value];
    }
    return mConstantlyId;
}

//: zh_CN
+ (NSString *)main_ourUrl {
    /* static */ NSString *main_ourUrl = nil;
    if (!main_ourUrl) {
        StructCancelData value = (StructCancelData){67, (Byte []){57, 43, 28, 0, 13, 252}, 5, 56};
        main_ourUrl = [self StringFromCancelData:&value];
    }
    return main_ourUrl;
}

//: nl_strings
+ (NSString *)notiIsleValue {
    /* static */ NSString *notiIsleValue = nil;
    if (!notiIsleValue) {
        StructCancelData value = (StructCancelData){146, (Byte []){252, 254, 205, 225, 230, 224, 251, 252, 245, 225, 178}, 10, 250};
        notiIsleValue = [self StringFromCancelData:&value];
    }
    return notiIsleValue;
}

//: hr_strings
+ (NSString *)mainStrawName {
    /* static */ NSString *mainStrawName = nil;
    if (!mainStrawName) {
        StructCancelData value = (StructCancelData){126, (Byte []){22, 12, 33, 13, 10, 12, 23, 16, 25, 13, 58}, 10, 3};
        mainStrawName = [self StringFromCancelData:&value];
    }
    return mainStrawName;
}

//: name
+ (NSString *)dreamModestValue {
    /* static */ NSString *dreamModestValue = nil;
    if (!dreamModestValue) {
        StructCancelData value = (StructCancelData){160, (Byte []){206, 193, 205, 197, 31}, 4, 83};
        dreamModestValue = [self StringFromCancelData:&value];
    }
    return dreamModestValue;
}

//: de_strings
+ (NSString *)m_vacuumAdeName {
    /* static */ NSString *m_vacuumAdeName = nil;
    if (!m_vacuumAdeName) {
        StructCancelData value = (StructCancelData){252, (Byte []){152, 153, 163, 143, 136, 142, 149, 146, 155, 143, 186}, 10, 89};
        m_vacuumAdeName = [self StringFromCancelData:&value];
    }
    return m_vacuumAdeName;
}

//: lt_strings
+ (NSString *)dream_statLanceCropMessage {
    /* static */ NSString *dream_statLanceCropMessage = nil;
    if (!dream_statLanceCropMessage) {
        StructCancelData value = (StructCancelData){141, (Byte []){225, 249, 210, 254, 249, 255, 228, 227, 234, 254, 238}, 10, 210};
        dream_statLanceCropMessage = [self StringFromCancelData:&value];
    }
    return dream_statLanceCropMessage;
}

//: sa_strings
+ (NSString *)k_tightenTitleFormat {
    /* static */ NSString *k_tightenTitleFormat = nil;
    if (!k_tightenTitleFormat) {
        StructCancelData value = (StructCancelData){30, (Byte []){109, 127, 65, 109, 106, 108, 119, 112, 121, 109, 40}, 10, 160};
        k_tightenTitleFormat = [self StringFromCancelData:&value];
    }
    return k_tightenTitleFormat;
}

//: hi_strings
+ (NSString *)showItselfValue {
    /* static */ NSString *showItselfValue = nil;
    if (!showItselfValue) {
        StructCancelData value = (StructCancelData){20, (Byte []){124, 125, 75, 103, 96, 102, 125, 122, 115, 103, 236}, 10, 143};
        showItselfValue = [self StringFromCancelData:&value];
    }
    return showItselfValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundRandomAttribute.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushLanguageManager.h"
#import "BackgroundRandomAttribute.h"
//: #import "PushXMLReader.h"
#import "ShowReader.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"

//: @interface PushLanguageManager ()<NSXMLParserDelegate>
@interface BackgroundRandomAttribute ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation PushLanguageManager
@implementation BackgroundRandomAttribute

//: static PushLanguageManager *shareInstance = nil;
static BackgroundRandomAttribute *showTaskKey = nil;

//: + (PushLanguageManager *)shareInstance{
+ (BackgroundRandomAttribute *)disable{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (showTaskKey == nil) {
            //: shareInstance = [[PushLanguageManager alloc] init];
            showTaskKey = [[BackgroundRandomAttribute alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            showTaskKey.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return showTaskKey;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)content:(NSString *)key{
    //: NSMutableDictionary *dict = [PushLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [BackgroundRandomAttribute disable].langDict;
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
- (void)setInfoTeam:(NSString *)langType{

//    [self.langDict removeAllObjects];

    //: NSString *resourceType = @"zh_strings";
    NSString *resourceType = [CancelData userShowFormat];
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"en_strings";
        resourceType = [CancelData noti_cessEquateFormat];
    //: }else if ([langType isEqualToString:@"th"]){
    }else if ([langType isEqualToString:@"th"]){
        //: resourceType = @"th_strings";
        resourceType = [CancelData noti_orbUrl];
    //: }else if ([langType isEqualToString:@"vi"]){
    }else if ([langType isEqualToString:@"vi"]){
        //: resourceType = @"vi_strings";
        resourceType = [CancelData m_thankName];
    //: }else if ([langType isEqualToString:@"hi"]){
    }else if ([langType isEqualToString:@"hi"]){
        //: resourceType = @"hi_strings";
        resourceType = [CancelData showItselfValue];
    //: }else if ([langType isEqualToString:@"ja"]){
    }else if ([langType isEqualToString:@"ja"]){
        //: resourceType = @"ja_strings";
        resourceType = [CancelData main_teamFormat];
    //: }else if ([langType isEqualToString:@"ko"]){
    }else if ([langType isEqualToString:@"ko"]){
        //: resourceType = @"ko_strings";
        resourceType = [CancelData dreamTumName];
    //: }else if ([langType isEqualToString:@"spa"]){
    }else if ([langType isEqualToString:[CancelData notiEconomicName]]){
        //: resourceType = @"spa_strings";
        resourceType = [CancelData mConstantlySaleValue];
    //: }else if ([langType isEqualToString:@"pt"]){
    }else if ([langType isEqualToString:@"pt"]){
        //: resourceType = @"pt_strings";
        resourceType = [CancelData noti_closedId];
    //: }else if ([langType isEqualToString:@"id"]){
    }else if ([langType isEqualToString:@"id"]){
        //: resourceType = @"id_strings";
        resourceType = [CancelData app_oreValue];
    //: }else if ([langType isEqualToString:@"it"]){
    }else if ([langType isEqualToString:@"it"]){
        //: resourceType = @"it_strings";
        resourceType = [CancelData showVotingBrigName];
    //: }else if ([langType isEqualToString:@"eg"]){
    }else if ([langType isEqualToString:@"eg"]){
        //: resourceType = @"eg_strings";
        resourceType = [CancelData appCountmaCostlyGalTitle];
    //: }else if ([langType isEqualToString:@"tr"]){
    }else if ([langType isEqualToString:@"tr"]){
        //: resourceType = @"tr_strings";
        resourceType = [CancelData appOurselvesId];
    //: }else if ([langType isEqualToString:@"ug"]){
    }else if ([langType isEqualToString:@"ug"]){
        //: resourceType = @"ug_strings";
        resourceType = [CancelData userClothingValue];
    //: }else if ([langType isEqualToString:@"de"]){
    }else if ([langType isEqualToString:@"de"]){
        //: resourceType = @"de_strings";
        resourceType = [CancelData m_vacuumAdeName];
    //: }else if ([langType isEqualToString:@"pk"]){
    }else if ([langType isEqualToString:@"pk"]){
        //: resourceType = @"pk_strings";
        resourceType = [CancelData appHamName];
    //: }else if ([langType isEqualToString:@"sa"]){
    }else if ([langType isEqualToString:@"sa"]){
        //: resourceType = @"sa_strings";
        resourceType = [CancelData k_tightenTitleFormat];
    //: }else if ([langType isEqualToString:@"ru"]){
    }else if ([langType isEqualToString:@"ru"]){
        //: resourceType = @"ru_strings";
        resourceType = [CancelData mainLegendTitle];
    //: }else if ([langType isEqualToString:@"bd"]){
    }else if ([langType isEqualToString:@"bd"]){
        //: resourceType = @"bd_strings";
        resourceType = [CancelData kLegislationText];
    //: }else if ([langType isEqualToString:@"fr"]){
    }else if ([langType isEqualToString:@"fr"]){
        //: resourceType = @"fr_strings";
        resourceType = [CancelData dream_spaceTeaValue];
    //: }else if ([langType isEqualToString:@"hant"]){
    }else if ([langType isEqualToString:[CancelData userAlienAllyKey]]){
        //: resourceType = @"zh_hant_strings";
        resourceType = [CancelData dreamDrawAtIdent];
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv_strings";
        resourceType = [CancelData mConstantlyId];
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl_strings";
        resourceType = [CancelData k_conductKey];
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk_strings";
        resourceType = [CancelData user_buildUrl];
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro_strings";
        resourceType = [CancelData showJustifyPath];
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl_strings";
        resourceType = [CancelData dream_villageForeignUrl];
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl_strings";
        resourceType = [CancelData notiIsleValue];
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt_strings";
        resourceType = [CancelData k_celebrityFormat];
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb_strings";
        resourceType = [CancelData notiGenerallyValue];
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt_strings";
        resourceType = [CancelData dream_statLanceCropMessage];
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv_strings";
        resourceType = [CancelData mRendData];
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg_strings";
        resourceType = [CancelData showLightFormat];
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr_strings";
        resourceType = [CancelData mainStrawName];
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs_strings";
        resourceType = [CancelData dreamShowUrl];
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da_strings";
        resourceType = [CancelData showEpidemicName];
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et_strings";
        resourceType = [CancelData user_venueAllotName];
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi_strings";
        resourceType = [CancelData user_buddyGentMessage];
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el_strings";
        resourceType = [CancelData k_offenseMessageDealerFormat];
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu_strings";
        resourceType = [CancelData main_allotName];
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga_strings";
        resourceType = [CancelData user_weaknessMessage];
    }

    //: NSString *xmlFilePath = [[[SSZipArchiveManager sharedManager] getXML_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@.xml", langType, resourceType]];
    NSString *xmlFilePath = [[[SharedContentView manager] margin] stringByAppendingPathComponent:[NSString stringWithFormat:[CancelData user_luckMsg], langType, resourceType]];

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
    //: NSDictionary *result = [PushXMLReader dictionaryForXMLData:xmlData error:&error];
    NSDictionary *result = [ShowReader executiveSessionItem:xmlData originShowShared:&error];
//    NSDictionary *result = [NSDictionary dictionaryWithXML:xmlData];

    //: NSLog(@"result : %@", result);
    //: if (result) {
    if (result) {
        //: NSDictionary *resources = [result objectForKey:@"resources"];
        NSDictionary *resources = [result objectForKey:[CancelData userWakeCigaretPath]];
        //: if (resources) {
        if (resources) {
            //: NSArray *string = [resources objectForKey:@"string"];
            NSArray *string = [resources objectForKey:[CancelData showCageMayPath]];
            //: if (string.count > 0) {
            if (string.count > 0) {
                //: [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [string enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    //: NSString *name = [obj objectForKey:@"name"];
                    NSString *name = [obj objectForKey:[CancelData dreamModestValue]];
                    //: NSString *text = [obj objectForKey:@"text"];
                    NSString *text = [obj objectForKey:[CancelData mInvestorId]];
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
    if ([elementName isEqualToString:[CancelData showCageMayPath]]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[CancelData dreamModestValue]];
        //NSLog(@"--------%@",_currentElementName);
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: if ([_currentElementName isEqualToString:@"main_tab_my"]) {
        if ([_currentElementName isEqualToString:[CancelData dream_crucialEmpireLightlyId]]) {
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
//    NSString *language = [CrossShouldBlock standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = [CancelData main_ourUrl];
//    if ([language isEqualToString:@"en"]) {
//        return @"en_US";
//    }
    //: return locale;
    return locale;
}


//: @end
@end
